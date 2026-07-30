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
}

void config_I2C0_register_as_slave(void) {
 // TODO: set address enable ACK, etc.
}
/***************************************************************************//**
 * functions
 ******************************************************************************/

static void convert_row_to_i2c(parsed_sensor_sample_t *pointer, prepped_sensor_sample_t*out_pointer){ // static keeps function private because only used in function below
// TODO: convert the float and integer values to the i2c values
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
       printf("hi=%d p_lo=%d ...\r\n", prepped_sample.p_hi, prepped_sample.p_lo);
   }

}









