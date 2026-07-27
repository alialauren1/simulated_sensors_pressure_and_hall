/*
 * mod_sd_sim.c
 *
 *  Created on: Jul 24, 2026
 *      Author: aliawolken
 */

#include "mod_sd_sim.h"
#include "ff.h"
#include <stdio.h>
#include "microsd.h"

static volatile FATFS fat_fs;

void init_mount_sd_open_csv(void){
 // TODO: open csv file and skip headers

  FRESULT res;

  MICROSD_Init();

  res = f_mount(&fat_fs,(TCHAR*)"", 1);

  if(res == (FRESULT)RES_OK)
  {
      printf("FATfs mount success\r\n");
  }
  else
  {
      printf("Unable to mount FAT fs.\r\n");
  }

}

void read_parse_row(parsed_sensor_sample_t *out_pointer){
 // TODO: read from sd card and save to parsed_sensor_sample_t struct

}

