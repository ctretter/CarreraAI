#ifndef DATAACQUISITION_H
#define DATAACQUISITION_H

#include <cmath>
#include <iostream>
#include <fstream>

#define VALID_SENSOR_PRODUCT_ID 0x17
#define OFFSET_PRODUCT_ID_REG 1
#define OFFSET_MOTION_REG 0
#define OFFSET_DATA_REG 2
#define OFFSET_TIME_REG 3
#define MOTION_DETECTED 0x80

/* @brief Class for handling data acquisition
 *
 */
class DataAcquisition {
public:

	DataAcquisition(unsigned long OpticalSensorAddress);
	~DataAcquisition();

	void UpdateAllData();

	size_t GetLapCount() const;
	double GetDrivingVelocity() const;	//in m/s
	double GetDistanceTravelled() const;	//in m
	double GetAngularVelocity() const;	// in rad/s
	bool IsStartLineCrossed();		// flag cleared, when read

private:
	void ReadOpticalSensorData(double & deltaXmeter, double & deltaYmeter, double & Seconds) const;
	double ReadGyroVelocity() const;

	size_t mLapCount;
	double mDrivingVelocity;
	double mDistanceTravelled;
	double mGyroVelocity;
	bool mLineCrossed;

	// Base address for optical sensor
	unsigned long OpticalSensorAddress;

	// Constants for gyro sensor
	static double constexpr GyroToAngularVelocityDegree = 0.07; //datasheet
	static double constexpr DegreeToRadian = M_PI/180.0;
	static double constexpr GyroToAngularVelocityRad = GyroToAngularVelocityDegree * DegreeToRadian;

	// Constants for opt. sensor data
	// in inch: deltaX/400
	// in cm: inch * 2.54
	// in m: cm/100
	static double constexpr OptSensorToInch = 1.0/400.0; //datasheet
	static double constexpr InchToCm = 2.54;
	static double constexpr CmToMeter = 1.0/100.0;
	static double constexpr OptSensorToMeter = OptSensorToInch * InchToCm * CmToMeter;
	// Cycles to time
	static double constexpr ClockRate = 50000000.0; // in Hz
	static double constexpr SecondsToMicro = 1000000.0;
};

#endif
