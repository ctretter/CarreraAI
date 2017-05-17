#include "DataAcq.h"
#include <iostream>
#include <fstream>

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
	uint32_t deltaX;
	uint32_t deltaY;
	double microSeconds;
	ReadOpticalSensorData(deltaX, deltaY, microSeconds);
	// Calculate current distance and speed
	double distance = sqrt(deltaX*deltaX + deltaY*deltaY);
	mDistanceTravelled += distance;	// in meter
	mDrivingVelocity = distance / microSeconds*1e6; // in meter/second
}

size_t DataAcquisition::GetLapCount()
{
	return mLapCount;
}

double DataAcquisition::GetDrivingVelocity()
{
	return mDrivingVelocity;
}

double DataAcquisition::GetDistanceTravelled()
{
	return mDistanceTravelled;
}

double DataAcquisition::GetAngularVelocity()
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

double DataAcquisition::ReadGyroVelocity()
{
	double gyroData = 0.0;

	//TODO impl read gyro

	// Gyro data to radian
	return gyroData * GyroToAngularVelocityRad;
}

void DataAcquisition::ReadOpticalSensorData(double & deltaXmeter, double & deltaYmeter, double & microSeconds)
{
	uint32_t deltaX;
	uint32_t deltaY;
	sample_time = 0.0;

	uint32_t sensorData = 0;

	static std::ofstream f;
	if(!f.is_open())
	{
		f.open("motion_logfile.txt", std::ios::out | std::ios::app);
		f << "Data samples begin here" << std::endl << std::endl;
	}

	std::cout << "Try to connect to memory space of optical sensor information ..." << std::endl;
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
			std::cout << "Check motion register for changes ..." << std::endl;
			sensorData = alt_read_word(OpticalSensorAddress + OFFSET_MOTION_REG);
			if(sensorData == MOTION_DETECTED)
			{/*
				std::cout << std::endl << "###########################################################" << std::endl;
				std::cout << "### DATA DUMP: " << std::endl;
				std::cout << "### Address: " << OpticalSensorAddress << std::endl;
				std::cout << "### Product ID: " << alt_read_word(OpticalSensorAddress + OFFSET_PRODUCT_ID_REG) << std::endl;
				std::cout << "### Data: " << alt_read_word(OpticalSensorAddress + OFFSET_DATA_REG) << std::endl;
				std::cout << "### Time : " << alt_read_word(OpticalSensorAddress + OFFSET_TIME_REG) << std::endl;
				std::cout << "### Motion : " << alt_read_word(OpticalSensorAddress + OFFSET_MOTION_REG) << std::endl;
				std::cout << "###########################################################" << std::endl << std::endl;
			*/
				std::cout << "New motion detected! Reading data ..." << std::endl;

				sensorData = alt_read_word(OpticalSensorAddress + OFFSET_TIME_REG);
				sample_time = sensorData;

				sensorData = alt_read_word(OpticalSensorAddress + OFFSET_DATA_REG);
				dataY = (sensorData << 24) >> 24;
				dataX = (sensorData >> 8);


				f << "Cycles elapsed: " << sample_time << std::endl;
				sample_time /= clock_rate;
				f << "Time elapsed: " << sample_time * seconds_to_micro << " us" << std::endl;
				f << "DataX: " << dataX << "  DataY: " << dataY << std::endl;
				f << "SensorData: " << sensorData << std::endl << std::endl;

				//std::cout << "Read cycles of FPGA elapsed ..." << std::endl;
				//std::cout << "Cycles elapsed: " << sensorData << "  Time elapsed: " << double(sensorData/50000) << " ms" << std::endl;
			}
			else
			{
				std::cout << "No motion detected!" << std::endl;
			}
		}
	}

	// Optical Sensor data to meter
	deltaXmeter = deltaX * OptSensorToMeter;
	deltaYmeter = deltaY * OptSensorToMeter;

}
