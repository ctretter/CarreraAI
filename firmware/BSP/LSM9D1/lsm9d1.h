#ifndef LSM9D1_H
#define LSM9D1_H

// G = gyroscope
// XL = accelerometer


#define REG_WHO_AM_I 		0xF
#define REG_CTRL_REG1	 	0x10
#define REG_CTRL_REG2	 	0x11
#define REG_CTRL_REG3	 	0x12
#define REG_ORIENT_CFG	 	0x13
#define REG_INT_GEN_SRC 	0x14
#define REG_TEMP_L			0x15
#define REG_TEMP_H			0x16
#define REG_STATUS_REG	 	0x17

#define REG_OUT_X_L_G 		0x18
#define REG_OUT_X_H_G 		0x19
#define REG_OUT_Y_L_G 		0x1A
#define REG_OUT_Y_H_G 		0x1B
#define REG_OUT_Z_L_G 		0x1C
#define REG_OUT_Z_H_G 		0x1D

#define REG_CTRL_REG4	 	0x1E
#define REG_CTRL_REG5_XL	0x1F
#define REG_CTRL_REG6_XL	0x20

#define REG_CTRL_REG8	 	0x22
#define REG_CTRL_REG9	 	0x23
#define REG_CTRL_REG10	 	0x24

#define REG_OUT_X_L_XL 		0x28
#define REG_OUT_X_H_XL 		0x29
#define REG_OUT_Y_L_XL 		0x2A
#define REG_OUT_Y_H_XL 		0x2B
#define REG_OUT_Z_L_XL 		0x2C
#define REG_OUT_Z_H_XL 		0x2D

#define REG_FIFO_CTRL		0x2E
#define REG_FIFO_SRC		0x2F

// STATUS_REG_G masks
#define LSM9D1_XLDA_bm		0x01
#define LSM9D1_GDA_bm		0x02
#define LSM9D1_TDA_bm		0x04

// CTRL_REG8 masks
#define LSM9D1_BDU_bm		0x40

// FIFO_CTRL mask
#define LSM9D1_FMODE_bm		0xE0
#define LSM9D1_FTH_bm		0x1F

// FIFO_SRC mask
#define LSM9D1_FSS_bm		0x3F

//Angular rate in millidegrees per second
typedef struct __attribute__((packed)) {
	double X;
	double Y;
	double Z;
} AngularRate_t;

void LSM9D1_Init();
void LSM9D1_Close();
uint8_t LSM9D1_GetWhoAmI();
uint8_t LSM9D1_GetStatus();

bool LSM9D1_GetAccelerometerDataAvailable();
bool LSM9D1_GetAcceleration(double* acceleration);

bool LSM9D1_GetTemperatureDataAvailable();

// Returns temperature in degrees celsius
int16_t LSM9D1_GetTemp();

bool LSM9D1_GetGyroscopeDataAvailable();

// Returns angular rate in millidegrees per second
//bool LSM9D1_GetAngularRate(AngularRate_t* angularRate);

bool LSM9D1_GetAngularRateZ(double* angularRateZ);

#endif /* LSM9D1_H */
