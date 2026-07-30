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

static volatile bool row_read_flag = true;  // start true so the very first loop iteration fires one read

typedef struct {
  uint8_t status;
  uint8_t p_hi, p_lo;
  uint8_t t_hi, t_lo;
  int     hall;
} prepped_sensor_sample_t;

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
void app_init(void)
{
  sl_iostream_set_default(sl_iostream_get_handle("vcom"));

  CMU_ClockEnable(cmuClock_I2C0, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

  // SDA = PC0, SCL = PC1
  GPIO_PinModeSet(gpioPortC, 0, gpioModeWiredAndPullUp, 1);
  GPIO_PinModeSet(gpioPortC, 1, gpioModeWiredAndPullUp, 1);

  // Hall output pin
  GPIO_PinModeSet(gpioPortA, 12, gpioModePushPull, 1); // 1 = naturally HIGH (active-low output)
  printf("\r\n-----------------------\r\n");
}

void config_I2C0_register_as_slave(void) {
 // TODO: set address enable ACK, etc.
}
/***************************************************************************//**
 * functions
 ******************************************************************************/

static void convert_row_to_i2c(parsed_sensor_sample_t *pointer, prepped_sensor_sample_t*out_pointer){ // static keeps function private because only used in function below

  // convert float to integer values
  float p_mbar = pointer->p_bar * 1000.0f;
  int32_t P_raw = (int32_t)roundf(p_mbar * 32768.0f / 100000.0f) + 16384;
  out_pointer->p_hi = (uint8_t)((P_raw >> 8) & 0xFF);
  out_pointer->p_lo = (uint8_t)(P_raw & 0xFF);

  int32_t t_centi = (int32_t)roundf((pointer->temp_f * 100 - 3200) * 5.0f / 9.0f);  // °F -> centi-°C
  int32_t T_raw = (((t_centi + 5000) / 5) + 24) << 4;
  out_pointer->t_hi = (uint8_t)((T_raw >> 8) & 0xFF);
  out_pointer->t_lo = (uint8_t)(T_raw & 0xFF);

  out_pointer->hall = pointer->hall;

  out_pointer->status = 0x40;

}

void respond_to_i2c(void){
  // TODO: decide what to do based on what master sends via i2c

  //  TODO: call the following functions when trigger byte was received from master
   parsed_sensor_sample_t parsed; // local variable: row of csv data holding pressure, temp., and hall values
   static prepped_sensor_sample_t prepped_sample;

   if (row_read_flag){ // this will change when start detecting real I2c master
       read_parse_row(&parsed);
       row_read_flag = false;
       convert_row_to_i2c(&parsed, &prepped_sample); // sends parsed values and receives i2c prepped samples
       printf("status = %d p_hi=%d p_lo=%d t_hi=%d t_lo=%d\r\n", prepped_sample.status, prepped_sample.p_hi, prepped_sample.p_lo,prepped_sample.t_hi, prepped_sample.t_lo);
   }

}









