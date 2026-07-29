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
#include <string.h>

#define CSV_FILENAME "data_pool_test2_Jul15.csv"

static FATFS fat_fs;
static FIL fp;
static FSIZE_t first_data_row_pointer;

// Imported mod_sd_ff_encode, 2025 12 05 LW: Function for converting strings (char) to UTF-8 (TCHAR) for path names
void mod_sd_ff_encode(char* str, TCHAR* out, uint32_t len)
{
  uint32_t i;
  for(i = 0; i < len; i++)
  {
      out[i] = ff_convert(str[i], 1);
  }
  out[i] = ff_convert('\0', 1);
}

void init_mount_sd_open_csv(void){

  // mount sd card
  FRESULT res;
  MICROSD_Init();
  res = f_mount(&fat_fs,(TCHAR*)"", 1);
  if(res == FR_OK) { printf("FATfs mount success\r\n"); }
  else {printf("Unable to mount FAT fs.\r\n");}

  // open csv file
  TCHAR file_name[sizeof(CSV_FILENAME)];
  mod_sd_ff_encode(CSV_FILENAME, file_name, strlen(CSV_FILENAME)); // convert string (char) to UTF-8 (TCHAR)
  FRESULT fres = f_open(&fp, file_name, FA_READ); // open file
  if(fres==FR_OK){
      TCHAR header_buffer[100];
      f_gets(header_buffer, sizeof(header_buffer)/sizeof(header_buffer[0]), &fp);  // read string from file, skip "MOD LAB: ..." line
      f_gets(header_buffer, sizeof(header_buffer)/sizeof(header_buffer[0]), &fp);  // read string from file, skip "Pressure [bar],..." line

      BYTE stray_byte; // added this because the csv file im using had a stray extra byte, other files might not so can always comment this section out
      UINT br;
      f_read(&fp, &stray_byte, 1, &br);

      first_data_row_pointer = f_tell(&fp);
      printf("first_data_row_pointer = %lu\r\n", (unsigned long)first_data_row_pointer);
      printf("Opened file \r\n");
  }
  else {
      printf("Issue opening and reading file, check SD card for file present\r\n");
  }

}

void read_parse_row(parsed_sensor_sample_t *out_pointer){
 // TODO: read from sd card and save to parsed_sensor_sample_t struct

  TCHAR wline[64]; // buffer to read one line from sd card
  char line[64];   // buffer that is a char

  int n;

  TCHAR *getter = f_gets(wline,sizeof(wline)/sizeof(wline[0]),&fp);
  printf(getter == NULL ? "first f_gets: NULL\r\n" : "first f_gets: OK\r\n");
  printf("wline[0]=%d wline[1]=%d wline[2]=%d wline[3]=%d\r\n",
         (int)wline[0], (int)wline[1], (int)wline[2], (int)wline[3]);
  if (getter==NULL){
      f_lseek(&fp,first_data_row_pointer); // move to first row if issue
      getter = f_gets(wline,sizeof(wline)/sizeof(wline[0]),&fp);
  }
  for (n=0;wline[n] != 0 && n<63; n++){
      line[n]=(char)wline[n];
  }
  line[n]='\0';
  printf("row: %s\r\n",line);

}

