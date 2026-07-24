/*
 * mod_sd_sim.h
 *
 *  Created on: Jul 24, 2026
 *      Author: aliawolken
 */

#ifndef MOD_SD_SIM_H_
#define MOD_SD_SIM_H_

typedef struct {
  float p_bar;
  float temp_f;
  int   hall;
} parsed_sensor_sample_t;

void read_parse_row(parsed_sensor_sample_t *out_pointer);
void init_mount_sd_open_csv(void);

#endif /* MOD_SD_SIM_H_ */
