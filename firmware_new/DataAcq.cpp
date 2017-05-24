#include "DataAcq.h"
#include <socal/socal.h>

DataAcquisition::DataAcquisition(const unsigned long opticalSensorAddress) : OpticalSensorAddress(opticalSensorAddress)
{
	mLapCount = 0;
	mDrivingVelocity = 0.0;
	mDistanceTravelled = 0.0;
	mGyroVelocity = 0.0;
	mLineCrossed = false;
}

DataAcquisition::~DataAcquisition()
{

}

void DataAcquisition::UpdateAllData()
{
	// Read if line was crossed
	mLineCrossed = false; // TODO read line crossed

	// Read Gyro
	mGyroVelocity = ReadGyroVelocity(); // in rad/second

	// Read optical sensor data
	double deltaX;
	double deltaY;
	double Seconds;
	ReadOpticalSensorData(deltaX, deltaY, Seconds);
	// Calculate current distance and speed
	double distance = sqrt(deltaX*deltaX + deltaY*deltaY);
	mDistanceTravelled += distance;	// in meter
	mDrivingVelocity = distance / (Seconds*1e6); // in meter/second
}

size_t DataAcquisition::GetLapCount() const
{
	return mLapCount;
}

double DataAcquisition::GetDrivingVelocity() const
{
	return mDrivingVelocity;
}

double DataAcquisition::GetDistanceTravelled() const
{
	return mDistanceTravelled;
}

double DataAcquisition::GetAngularVelocity() const
{
	return mGyroVelocity;
}

bool DataAcquisition::IsStartLineCrossed()
{
	bool ret = mLineCrossed;
	if(mLineCrossed)
	{
		mDistanceTravelled = 0.0;
		mLapCount++;
	}
	mLineCrossed = false;
	return ret;
}

double DataAcquisition::ReadGyroVelocity() const
{
	double gyroData = 0.0;

	//TODO impl read gyro

	// Gyro data to radian
	return gyroData * GyroToAngularVelocityRad;
}

void DataAcquisition::ReadOpticalSensorData(double & deltaXmeter, double & deltaYmeter, double & Seconds) const
{
	int8_t deltaX = 0;
	int8_t deltaY = 0;
	double sample_time = 0.0;

	int32_t sensorData = 0;

	static bool SensorInitialized = false;
	static std::ofstream f;
	if(!f.is_open())
	{
		f.open("motion_logfile.txt", std::ios::out | std::ios::app);
		f << "Data samples begin here" << std::endl << std::endl;
	}

	if (!OpticalSensorAddress)
	{
		std::cerr << "Error! Address currently not initialized!" << std::endl;
	}
	else
	{
		if (!SensorInitialized)
		{
			std::cout << "Try to connect to ADNS-3080 by reading product ID ..." << std::endl;
			sensorData = alt_read_word(OpticalSensorAddress + OFFSET_PRODUCT_ID_REG);
			if(sensorData != VALID_SENSOR_PRODUCT_ID)
			{
				std::cerr << "Error! Product ID is invalid!" << std::endl;
			}
			else
			{
				std::cout << "Product ID is valid! Sensor is ready!" << std::endl;
				SensorInitialized = true;
			}
		}
		else
		{
			sensorData = alt_read_word(OpticalSensorAddress + OFFSET_MOTION_REG);
			if(sensorData == MOTION_DETECTED)
			{

				sensorData = alt_read_word(OpticalSensorAddress + OFFSET_TIME_REG);
				sample_time = sensorData;

				sensorData = alt_read_word(OpticalSensorAddress + OFFSET_DATA_REG);
				deltaY = (sensorData << 24) >> 24;
				deltaX = (sensorData >> 8);


				f << "Cycles elapsed: " << sample_time << std::endl;
				f << "deltaX: " << deltaX << "  DeltaY: " << deltaY << std::endl;
				f << "SensorData: " << sensorData << std::endl << std::endl;
			}
			else
			{
				std::cout << "No motion detected!" << std::endl;
			}
		}
	}

	// Optical Sensor data to meter
	deltaXmeter = (double)deltaX * OptSensorToMeter;
	deltaYmeter = (double)deltaY * OptSensorToMeter;
	Seconds = (sample_time / ClockRate);

}
