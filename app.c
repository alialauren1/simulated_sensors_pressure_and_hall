/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#include "em_cmu.h"
#include "mod_sd_sim.h"

#include "sl_iostream.h"
#include "sl_iostream_handles.h"
#include <stdbool.h>

#include "math.h"

#include "em_i2c.h"
#include <stdio.h>

static volatile bool row_read_flag = false;  // start true so the very first loop iteration fires one read

typedef struct {
  uint8_t status;
  uint8_t p_hi, p_lo;
  uint8_t t_hi, t_lo;
  int     hall;
} prepped_sensor_sample_t;

#define I2C0_SDA_PORT   gpioPortC
#define I2C0_SDA_PIN    0
#define I2C0_SDA_LOC    4 // LOC number is pin information , in datasheet Table 5.21, I2C0's SDA signal LOC=4 routes to PC0

#define I2C0_SCL_PORT   gpioPortC
#define I2C0_SCL_PIN    1
#define I2C0_SCL_LOC    4

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
void app_init(void)
{
  sl_iostream_set_default(sl_iostream_get_handle("vcom"));

  CMU_ClockEnable(cmuClock_I2C0, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  // configure i2c pins, SDA = PC0, SCL = PC1
  GPIO_PinModeSet(I2C0_SDA_PORT, I2C0_SDA_PIN, gpioModeWiredAnd, 1);
  GPIO_PinModeSet(I2C0_SCL_PORT, I2C0_SCL_PIN, gpioModeWiredAnd, 1);

  // Hall output pin
  GPIO_PinModeSet(gpioPortA, 12, gpioModePushPull, 1); // 1 = naturally HIGH (active-low output)
  printf("\r\n-----------------------\r\n");
}

void config_I2C0_register_as_slave(void) {
  I2C0->ROUTELOC0 = (I2C0_SDA_LOC << 0) | (I2C0_SCL_LOC << 8);  // rm 18.5.19 Routing Location Register (Pg 714) & datasheet Pin definitions (Pg 191)
  I2C0->ROUTEPEN  = I2C_ROUTEPEN_SDAPEN | I2C_ROUTEPEN_SCLPEN;  // (rm 18.5.18, p.713)

  I2C_SlaveAddressSet(I2C0, 0x40 << 1);                         // matches Keller pressure sensor peripheral address
  I2C_SlaveAddressMaskSet(I2C0, 0x7F << 1);                     // matches addresses to exact address specified by ADDR , rm 18.5.7 (pg 702)

  I2C0->IEN = 0;                                                // disables interrupts, rm 18.5.17 (pg. 712)
  I2C0->CTRL = I2C_CTRL_SLAVE | I2C_CTRL_AUTOACK | I2C_CTRL_EN; // puts i2c slave mode, tells hardware to auto-ACK matching address and all received data without software, and turns the peripheral on (rm 18.5.1, pg. 695-697)

  I2C0->TXDATA = 0x40;  // pre-load status into transmit buffer at init time
}
/***************************************************************************//**
 * functions
 ******************************************************************************/

static void convert_row_to_i2c(parsed_sensor_sample_t *pointer, prepped_sensor_sample_t*out_pointer){ // static keeps function private because only used in function below

  // convert float to integer values
  float p_mbar = pointer->p_bar * 1000.0f;                                // convert from bar to mbar
  int32_t P_raw = (int32_t)roundf(p_mbar * 32768.0f / 100000.0f) + 16384; // back calculate using inverse of equation used in mod_power_switch folder
  out_pointer->p_hi = (uint8_t)((P_raw >> 8) & 0xFF);
  out_pointer->p_lo = (uint8_t)(P_raw & 0xFF);

  int32_t t_centi = (int32_t)roundf((pointer->temp_f * 100 - 3200) * 5.0f / 9.0f);  // °F -> centi-°C
  int32_t T_raw = (((t_centi + 5000) / 5) + 24) << 4;                     // inverse of equation used in mod_power_switch folder
  out_pointer->t_hi = (uint8_t)((T_raw >> 8) & 0xFF);
  out_pointer->t_lo = (uint8_t)(T_raw & 0xFF);

  out_pointer->hall = pointer->hall;

  out_pointer->status = 0x40;

}

void respond_to_i2c(void){
   static bool write_flag;
   static bool read_flag;
   static uint8_t tx_index;
   static prepped_sensor_sample_t prepped_sample;

   uint32_t i2c_flags = I2C0->IF;

   if (i2c_flags & I2C_IF_ADDR) {
       uint8_t addr_byte = I2C0->RXDATA;
       printf("ADDR: addr_byte=0x%02X (%s)\r\n", addr_byte, (addr_byte & 0x1) ? "READ" : "WRITE");
       if (addr_byte & 0x1) {
           read_flag = true;
           I2C0->TXDATA = prepped_sample.status;
           tx_index = 1;
       }
       else                 { write_flag = false; }
       I2C0->IFC = I2C_IFC_ADDR;
   }


   if ((i2c_flags & I2C_IF_RXDATAV) && !read_flag) {
       uint8_t cmd_byte = I2C0->RXDATA;
       printf("RXDATAV: cmd_byte=0x%02X\r\n", cmd_byte);
       if (cmd_byte == 0xAC) write_flag = true;
   }

   if ((i2c_flags & I2C_IF_TXBL) && read_flag) {
       uint8_t next_byte;
       switch (tx_index) {
           case 0: next_byte = prepped_sample.status; break;
           case 1: next_byte = prepped_sample.p_hi;   break;
           case 2: next_byte = prepped_sample.p_lo;   break;
           case 3: next_byte = prepped_sample.t_hi;   break;
           default: next_byte = prepped_sample.t_lo;  break;
       }
       printf("TXBL: tx_index=%d sending 0x%02X\r\n", tx_index, next_byte);
       I2C0->TXDATA = next_byte;
       if (tx_index < 4) tx_index++;
   }

   if (i2c_flags & I2C_IF_SSTOP) {
       printf("SSTOP: write_flag=%d\r\n", write_flag);
       if (write_flag) row_read_flag = true;
       write_flag = false;
       read_flag = false;
       I2C0->IFC = I2C_IFC_SSTOP;
   }

   if (row_read_flag){
       parsed_sensor_sample_t parsed;
       read_parse_row(&parsed);
       row_read_flag = false;
       convert_row_to_i2c(&parsed, &prepped_sample);

       if (prepped_sample.hall) { GPIO_PinOutSet(gpioPortA, 12); }
       else                     { GPIO_PinOutClear(gpioPortA, 12); }
   }
}

//void respond_to_i2c(void){
//  // TODO: decide what to do based on what master sends via i2c
//  //  TODO: call the following functions when trigger byte was received from master
//
//
//
//   parsed_sensor_sample_t parsed; // local variable: row of csv data holding pressure, temp., and hall values
//   static prepped_sensor_sample_t prepped_sample;
//
//   if (row_read_flag){ // this will change when start detecting real I2c master
//       read_parse_row(&parsed);
//       row_read_flag = false;
//       convert_row_to_i2c(&parsed, &prepped_sample); // sends parsed values and receives i2c prepped samples
//       printf("status = %d p_hi=%d p_lo=%d t_hi=%d t_lo=%d\r\n", prepped_sample.status, prepped_sample.p_hi, prepped_sample.p_lo,prepped_sample.t_hi, prepped_sample.t_lo);
//   }
//
//}









