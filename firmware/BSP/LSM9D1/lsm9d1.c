#include "i2c.h"
#include "lsm9d1.h"
#include <linux/i2c-dev.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <math.h>

static int i2c1 = 0;
static const char *i2c1_filename = "/dev/i2c-1";
static const int MAGNETOMETER_ADDRESS = 0x1c;
static const int ACCELEROMETER_GYRO_ADDRESS = 0x6a;

static const double GYRO_MDPS_CONVERSION_FACTOR = 17.5;
static const double ACCELEROMETER_MG_CONVERSION_FACTOR = 0.061;
static const double TEMPERATURE_C_CONVERSION_FACTOR = 1/16;
static const double TEMPERATURE_OFFSET = 25; // the output of the temperature sensor is 0 (typ.) at 25°C

static double GyroZAxisZeroOffset = 0.0;

void LSM9D1_Init() {
	// open bus
	if ((i2c1 = open(i2c1_filename, O_RDWR)) < 0) {
		/* ERROR HANDLING: you can check errno to see what went wrong */
		perror("Failed to open the i2c bus of gsensor");
	}
	if (ioctl(i2c1, I2C_SLAVE, ACCELEROMETER_GYRO_ADDRESS) < 0) {
		/* ERROR HANDLING; you can check errno to see what went wrong */
		perror("Failed to acquire bus access and/or talk to slave.\n");
	}

	if(LSM9D1_GetWhoAmI() != 0b01101000) {
		printf("LSM9D1 WhoAmI wrong!\n");
	}

	if (!i2c_reg_write(i2c1, REG_CTRL_REG1, 0b11001000)) { // 952Hz ODR for Gyro, +-500dps full-scale
		printf("i2c reg write failed!\n");
	}

	if (!i2c_reg_write(i2c1, REG_CTRL_REG4, 0b00100000)) { // Enable Gyro Z (Yaw) Axis
		printf("i2c reg write failed!\n");
	}

	if (!i2c_reg_write(i2c1, REG_CTRL_REG6_XL, 0b11000000)) { // 952Hz ODR for Accelerometer, +-2g scale
		printf("i2c reg write failed!\n");
	}

	if (!i2c_reg_write(i2c1, REG_CTRL_REG8, 0b01000100)) { //BDU, address increment and big endian enable
		printf("i2c reg write failed!\n");
	}

	// Offset Calibration
	const size_t AVERAGING_VALUES_COUNT = 100;
	double average = 0.0;
	for(uint_fast8_t i = 0; i < AVERAGING_VALUES_COUNT; i++) {
		while(LSM9D1_GetGyroscopeDataAvailable() == false) {
			// wait for data
		}
		double value;
		LSM9D1_GetAngularRateZ(&value);
		average += value;
	}
	average /= AVERAGING_VALUES_COUNT;
	GyroZAxisZeroOffset = average;
	printf("LSM9D1 Z axis zero offset is: %f\n", GyroZAxisZeroOffset);

	/*
	if (!i2c_reg_write(i2c1, REG_CTRL_REG9, 0b00000010)) { //FIFO enable
		printf("i2c reg write failed!\n");
	}

	if (!i2c_reg_write(i2c1, REG_FIFO_CTRL, 0b11000000)) { //FIFO in continuous mode. If the FIFO is full, the new sample overrides the older sample
		printf("i2c reg write failed!\n");
	}
	*/
}

void LSM9D1_Close() {
	if(i2c1) {
		close(i2c1);
		i2c1 = 0;
	}
}

uint8_t LSM9D1_GetWhoAmI() {
	uint8_t whoami = 0;
	if (!i2c_reg_read(i2c1, (uint8_t)0x0F, &whoami)) {
		printf("i2c reg read failed!\n");
	}
	return whoami;
}

int16_t LSM9D1_GetTemp() {
	int16_t ret = 0;
	if (!i2c_reg_read(i2c1, (uint8_t)REG_TEMP_H, (uint8_t*)&ret)) {
		printf("i2c reg read failed!\n");
	}
	ret = ret << 8;
	if (!i2c_reg_read(i2c1, (uint8_t)REG_TEMP_L, (uint8_t*)&ret)) {
		printf("i2c reg read failed!\n");
	}
	return ret*TEMPERATURE_C_CONVERSION_FACTOR+TEMPERATURE_OFFSET;
}

uint8_t LSM9D1_GetStatus() {
	uint8_t ret = 0;
	if (!i2c_reg_read(i2c1, (uint8_t)REG_STATUS_REG, (uint8_t*)&ret)) {
		printf("i2c reg read failed!\n");
	}
	return ret;
}

uint8_t LSM9D1_GetFifoSrc() {
	uint8_t ret = 0;
	if (!i2c_reg_read(i2c1, (uint8_t)REG_FIFO_SRC, &ret)) {
		printf("i2c reg read failed!\n");
	}
	return ret;
}

uint8_t LSM9D1_GetFifoSamples() {
	return (LSM9D1_GetFifoSrc() & LSM9D1_FSS_bm);
}

bool LSM9D1_GetGyroscopeDataAvailable() {
	return (LSM9D1_GetStatus() & LSM9D1_GDA_bm) != 0;
}

bool LSM9D1_GetAccelerometerDataAvailable() {
	return (LSM9D1_GetStatus() & LSM9D1_XLDA_bm) != 0;
}

bool LSM9D1_GetTemperatureDataAvailable() {
	return (LSM9D1_GetStatus() & LSM9D1_TDA_bm) != 0;
}

//bool LSM9D1_GetAngularRate(AngularRate_t* angularRate) {
//	if (!i2c_reg_multi_read(i2c1, (uint8_t)REG_OUT_X_L_G, (uint8_t*)angularRate, sizeof(AngularRate_t))) {
//		printf("i2c reg read failed!\n");
//		return false;
//	}
//	return true;
//}

bool LSM9D1_GetAcceleration(double* acceleration) {
	int16_t rawValues[3];

	if (!i2c_reg_multi_read(i2c1, (uint8_t)REG_OUT_X_L_XL, (uint8_t*)rawValues, sizeof(rawValues))) {
		printf("i2c reg read failed!\n");
		return false;
	}

	double x = (double)rawValues[0] * ACCELEROMETER_MG_CONVERSION_FACTOR;
	double y = (double)rawValues[1] * ACCELEROMETER_MG_CONVERSION_FACTOR;
	double z = (double)rawValues[2] * ACCELEROMETER_MG_CONVERSION_FACTOR;


	*acceleration = sqrt(x*x + y*y + z*z);
	return true;
}

bool LSM9D1_GetAngularRateZ(double* angularRateZ) {
	int16_t rawValue;

	if (!i2c_reg_multi_read(i2c1, (uint8_t)REG_OUT_Z_L_G, (uint8_t*)&rawValue, sizeof(rawValue))) {
		printf("i2c reg read failed!\n");
		return false;
	}

	*angularRateZ = (GYRO_MDPS_CONVERSION_FACTOR * rawValue) - GyroZAxisZeroOffset;
	return true;
}
