/*
 * i2c.h
 *
 *  Created on: 04.11.2015
 *      Author: mike
 */

#ifndef I2C_H
#define I2C_H

#include <stdbool.h>
#include <stdint.h>

bool i2c_reg_write(int file, uint8_t address, uint8_t value);

bool i2c_reg_read(int file, uint8_t address,uint8_t *value);

bool i2c_reg_multi_read(int file, uint8_t readaddr,uint8_t readdata[], uint8_t len);


#endif /* I2C_H */
