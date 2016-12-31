#include <linux/i2c-dev.h>
#include <unistd.h>
#include "i2c.h"

bool i2c_reg_write(int file, uint8_t address, uint8_t value){
	bool bSuccess = false;
	uint8_t szValue[2];

	// write to define register
	szValue[0] = address;
	szValue[1] = value;
	if (write(file, &szValue, sizeof(szValue)) == sizeof(szValue)){
			bSuccess = true;
	}

	return bSuccess;
}

bool i2c_reg_read(int file, uint8_t address, uint8_t *value){
	bool bSuccess = false;
	uint8_t Value;

	// write to define register
	if (write(file, &address, sizeof(address)) == sizeof(address)){

		// read back value
		if (read(file, &Value, sizeof(Value)) == sizeof(Value)){
			*value = Value;
			bSuccess = true;
		}
	}

	return bSuccess;
}

bool i2c_reg_multi_read(int file, uint8_t address, uint8_t* readdata, uint8_t len){
	bool bSuccess = false;

	// write to define register
	if (write(file, &address, sizeof(address)) == sizeof(address)){

		// read back value
		if (read(file, readdata, len) == len){
			bSuccess = true;
		}
	}

	return bSuccess;
}
