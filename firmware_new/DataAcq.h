#ifndef DATAACQUISITION_H
#define DATAACQUISITION_H

#include <cmath>

/* @brief Class for handling data acquisition
 *
 */
class DataAcquisition {
public:

	DataAcquisition(unsigned long OpticalSensorAddress);
	~DataAcquisition();

	void UpdateAllData();

	size_t GetLapCount();
	double GetDrivingVelocity() const;	//in m/s
	double GetDistanceTravelled() const;	//in m
	double GetAngularVelocity() const;	// in rad/s
	bool IsStartLineCrossed();		// flag cleared, when read

private:
	void ReadOpticalSensorData(double & deltaXmeter, double & deltaYmeter, double & microSeconds) const;
	double ReadGyroVelocity() const;

	size_t mLapCount;
	double mDrivingVelocity;
	double mDistanceTravelled;
	double mGyroVelocity;
	bool mLineCrossed;

	unsigned long OpticalSensorAddress;

	static double constexpr GyroToAngularVelocityDegree = 0.07; //datasheet
	static double constexpr DegreeToRadian = M_PI/180.0;
	static double constexpr GyroToAngularVelocityRad = GyroToAngularVelocityDegree * DegreeToRadian;

	// in inch: deltaX/400
	// in cm: inch * 2.54
	// in m: cm/100
	static double constexpr OptSensorToInch = 1.0/400.0; //datasheet
	static double constexpr InchToCm = 2.54;
	static double constexpr CmToMeter = 1.0/100.0;
	static double constexpr OptSensorToMeter = OptSensorToInch * InchToCm * CmToMeter;
};

#endif
