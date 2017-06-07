#include "DataAcq.h"
#include <socal/socal.h>
#include "BSP/LSM9D1/lsm9d1.h"

DataAcquisition::DataAcquisition(const unsigned long opticalSensorAddress, unsigned long pwmAddress) :
	OpticalSensorAddress(opticalSensorAddress),
	PwmAddress(pwmAddress)
{
	mLapCount = 0;
	mDrivingVelocity = 0.0;
	mDistanceTravelled = 0.0;
	mGyroVelocity = 0.0;
	mLineCrossed = false;
	mSampleTime = 0.0;

	void LSM9D1_Init();
}

DataAcquisition::~DataAcquisition()
{
	void LSM9D1_Close();
}

void DataAcquisition::UpdateAllData()
{
	// Read if line was crossed
	mLineCrossed = false;
	//TODO test this function! -> schreibt das pfga in das register??
	//mLineCrossed = ReadLineCrossed();

	// Read Gyro
	mGyroVelocity = 0.0;
	//TODO test this function! -> connect isc gyro
	//mGyroVelocity = ReadGyroVelocity(); // in rad/second

	// Read optical sensor data
	double deltaX;
	double deltaY;
	double seconds;
	ReadOpticalSensorData(deltaX, deltaY, seconds);
	// Calculate current distance and speed
	double distance = sqrt(deltaX*deltaX + deltaY*deltaY);
	mDistanceTravelled += distance;	// in meter
	mDrivingVelocity = distance / (seconds); // in meter/second
	mSampleTime = seconds;
}

size_t DataAcquisition::GetLapCount() const
{
	return mLapCount;
}

double DataAcquisition::GetSampleTime() const	// seconds
{
	return mSampleTime;
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

	// Get new Gyro data if it’s ready, otherwise we just use the old one.
	if(LSM9D1_GetStatus() & 0x2) {
		if(!LSM9D1_GetAngularRateZ(&gyroData))
		{
			//TODO (i2c konnte nicht gelesen werden -> kein value)
		}
	}
	else
	{
		//TODO
	}

	// Gyro data to radian
	//TODO muss der wert noch so umgerechnet werden?
	//(in der funktion wird auch schon was gerechnet, aber was komplett anderes)
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

bool DataAcquisition::ReadLineCrossed() const
{
	// Only accept line crossed status, if we are on a straight part
	// in curves there glitches because of silver rails
	int const max_GyroVelocity_straightPath = 8; // maximal 8 rad/second to be straight
	size_t const min_Times_straightpath = 5; // minimal 5 times traight path to really be on a straight path

	static size_t straightCount = 0;

	if(abs(mGyroVelocity) < max_GyroVelocity_straightPath)
	{
		straightCount++;
	}
	else
	{
		straightCount = 0;
	}

	// If we are on a straight path, enable round detection and accept input of status reg
	if(straightCount > min_Times_straightpath)
	{
		uint32_t statusRegister = alt_read_word(PwmAddress+1);
		if((statusRegister & 0x01) != 0)
		{
			straightCount = 0; // reset
			uint32_t controlRegister = alt_read_word(PwmAddress);
			alt_write_word(PwmAddress, controlRegister | 0x04); // set round detection reset
			return true;
		}
	}
	// If we are in a curve, disable round detection
	else
	{
		uint32_t controlRegister = alt_read_word(PwmAddress);
		alt_write_word(PwmAddress, controlRegister | 0x04); // set round detection reset
	}
	return false;
}

