#include <iostream>
#include <ctime>
#include <chrono>
#include <assert.h>
#include <math.h>
#include <errno.h>
#include <socal/socal.h>
#include <iomanip>
#include "DataAcquisition.h"
#include "lsm9d1.h"
//#include "main.h"
#include "Controller.h"

// Sample distance in mm
const double SAMPLE_DISTANCE = 10.0;

// moving average filter
const size_t MOVING_AVERAGE_LENGTH = 4;

// Speed parameters
const double TIRE_DIAMETER = 28; // in mm
const double PI = 3.1415927;
const size_t PULSES_PER_TURN = 8;

DataAcquisition* DataAcquisition::mInstance = 0;

DataAcquisition::DataAcquisition(unsigned long* pwmAddress) : mPwmAddress(pwmAddress), mThread(0), mDataSampleReady(false), mStop(false), mDataSampleState(0), mLapCount(0)
{
}

DataAcquisition* DataAcquisition::GetInstance(){
	//assert(mInstance);
	return mInstance;
}

bool DataAcquisition::Init(unsigned long* MotorControlAddress){
	bool retval = false;
	if(!mInstance){
		mInstance = new DataAcquisition(MotorControlAddress);
		retval = true;
	}
	return retval;
}

/*DataAcquisition* DataAcquisition::GetInstance(unsigned long* MotorControlAddress)
{
	if(!mInstance) {
		mInstance = new DataAcquisition(MotorControlAddress);
	}
	return mInstance;
}*/


typedef struct timespec timespec;
static timespec TimeDifference(timespec start, timespec end)
{
	timespec temp;
	if ((end.tv_nsec-start.tv_nsec)<0) {
		temp.tv_sec = end.tv_sec-start.tv_sec-1;
		temp.tv_nsec = BILLION+end.tv_nsec-start.tv_nsec;
	} else {
		temp.tv_sec = end.tv_sec-start.tv_sec;
		temp.tv_nsec = end.tv_nsec-start.tv_nsec;
	}
	return temp;
}

void DataAcquisition::ThreadFunction()
{
	uint32_t startDistance = alt_read_word(mPwmAddress+4);

	uint32_t previousDistancePulses = 0;
	double averageFilter[MOVING_AVERAGE_LENGTH] = {};
	timespec startTime;
	timespec currentTime;

	double yawRate = 0;

	clock_gettime(CLOCK_MONOTONIC, &startTime);

	while(true) {
		if(mStop) {
			return;
		}

		// Get and convert distance and speed
		uint32_t distancePulses = alt_read_word(mPwmAddress+4) - startDistance;
		uint32_t speedPulseDelta = alt_read_word(mPwmAddress+3);

		double distance_mm = (double)(TIRE_DIAMETER*PI/PULSES_PER_TURN)*(double)distancePulses;
		double speed_mm_s = 0.0;
		// speedPulseDelta is 0 for very slow speeds -> speed_mm_s becomes inf (due to division by zero) -> detect and set to 0.0
		if(speedPulseDelta != 0) {
			speed_mm_s = (double)(TIRE_DIAMETER*PI*MILLION/PULSES_PER_TURN)/(double)speedPulseDelta;
		}

		// Get new Gyro data if it’s ready, otherwise we just use the old one.
		if(LSM9D1_GetStatus() & 0x2) {
			assert(LSM9D1_GetAngularRateZ(&yawRate));
		}

		// Moving average filter
		double filterSum = 0;
		for(size_t i=0; i<MOVING_AVERAGE_LENGTH-1; i++) {
			averageFilter[i] = averageFilter[i+1];
			filterSum += averageFilter[i];
		}
		averageFilter[MOVING_AVERAGE_LENGTH-1] = yawRate;
		filterSum += yawRate;

		double yawRateFiltered = filterSum/MOVING_AVERAGE_LENGTH;

		// Lap detection has glitches in turns (sensor moves over silver contact rails in turns and triggers) -> ignore lap detection sensor in turns.
		// Count samples where track is straight for lap detection
		static uint_fast8_t StraightCount = 0;
		if(abs(yawRateFiltered) < 50000) {
			if(StraightCount < 10) {
				StraightCount++;
			}
		} else {
			if(StraightCount >= 5) {
				StraightCount -= 5;
			} else {
				StraightCount = 0;
			}
		}
		uint32_t statusRegister = alt_read_word(mPwmAddress+1);
		// Check lap detection bit in statusRegister
		if((statusRegister & 0x01) != 0) {
			// Shortest possible lap is about 2.5m -> ignore additional samples e.g. from chessboard-pattern on start
			static double LastLapDetectionDistance = 0;
			double distanceFromLastLapDetection = distance_mm - LastLapDetectionDistance;
			if(StraightCount > 6 && (distanceFromLastLapDetection > 2500 || mLapCount == 0)) {
				LastLapDetectionDistance = distance_mm;
				std::cout << "StraightCount: " << StraightCount << std::endl;
				std::cout << "YawRate: " << yawRateFiltered << std::endl;
				std::cout << "New round detected!" << std::endl;
				mLapCount++;
			}
			uint32_t controlRegister = alt_read_word(mPwmAddress);
			alt_write_word(mPwmAddress, controlRegister | 0x04); // set round detection reset
		} else {
			uint32_t controlRegister = alt_read_word(mPwmAddress);
			alt_write_word(mPwmAddress, controlRegister & ~0x04); // release round detection reset
		}

		if(speed_mm_s >= 1.0) {
			yawRateFiltered /= speed_mm_s; // normalize yawRate with speed
		}

		// Get time
		clock_gettime(CLOCK_MONOTONIC, &currentTime);
		timespec timeSinceStartTimespec = TimeDifference(startTime, currentTime);
		double time = timeSinceStartTimespec.tv_sec + (double)timeSinceStartTimespec.tv_nsec/BILLION;

		{
			// lock_guard locks for scope
			std::lock_guard<std::mutex> lock(mDataSampleMutex);
			mDataSample.time = time;
			mDataSample.distance = distance_mm;
			mDataSample.speed = speed_mm_s;
			mDataSample.yawRate = yawRateFiltered;
			mDataSample.lapCount = mLapCount;

			mDataSampleState++;
			mDataSampleConditionVariable.notify_all();
		}

		// Update controller (calculates new output based on current speed)
		Controller::Update(speed_mm_s, mPwmAddress);

		std::chrono::steady_clock::time_point t1 = std::chrono::steady_clock::now();
		previousDistancePulses = alt_read_word(mPwmAddress+4);
		while(mStop == false && (alt_read_word(mPwmAddress+4) == previousDistancePulses)) {
			std::this_thread::sleep_for(std::chrono::microseconds(300)); // Introduce some delay, don't poll like crazy

			// Generate timeout so we keep generating data even when stopped
			std::chrono::steady_clock::time_point t2 = std::chrono::steady_clock::now();
			std::chrono::milliseconds timeSpan = std::chrono::duration_cast<std::chrono::milliseconds> (t2 - t1);
			if(timeSpan.count() > 100) {
				std::cerr << "Data acquisition Timeout" << std::endl;
				// timeout
				break;
			}
		}
		if(mStop) {
			return;
		}
	}
}

std::thread* DataAcquisition::Start()
{
	LSM9D1_Init();
	std::cerr << "LSM9D1 initialised\n";

	if (LSM9D1_GetWhoAmI() != 0x68) {
		std::cerr << "LSM9D1 WhoAmI failed!\n";
		assert(false);
	}

	alt_write_word(mPwmAddress+2, 0); // reset distance

	if(mThread == 0) {
		mThread = new std::thread(&DataAcquisition::ThreadFunction, this);
	}

	return mThread;
}

void DataAcquisition::GetData(dataSample_t& dataSample)
{
	std::unique_lock<std::mutex> lock(mDataSampleMutex);
	uint32_t prevDataSampleState = mDataSampleState;
	while(prevDataSampleState == mDataSampleState) {
		// wait releases the mutex
		mDataSampleConditionVariable.wait(lock);
		// mutex is automatically re-aquired
	}
	dataSample = mDataSample;
}

uint32_t DataAcquisition::GetLapCount()
{
	return mLapCount;
}

void DataAcquisition::Stop()
{
	mStop = true;
	if(mThread) {
		mThread->join(); // wait for thread to stop
		std::cerr << "Thread joined" << std::endl;
		delete mThread;
		mThread = 0;
	}
	LSM9D1_Close();
}

DataAcquisition::~DataAcquisition() {
	mStop = true;
	if(mThread) {
		mThread->join(); // wait for thread to stop
		delete mThread;
		mThread = 0;
	}
	LSM9D1_Close();
}
