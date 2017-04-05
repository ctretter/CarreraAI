#include "Controller.h"
//#include "main.h"
#include <socal/socal.h>
#include <atomic>
#include <ctime>
#include <chrono>
#include <iostream>
#include <stdint.h>

const double BRAKE_POINT = 110; // brake if speed is more than this value above setpoint //120
const double STEP_SIZE_ACCELERATION = 450.0;
const double STEP_SIZE_DECELERATION = 400.0;
const double INTEGRAL_LIMIT = 1000.0;
const int32_t MAX_PWM_VALUE = 1023;

static std::atomic<double> PFactor(1.0);
static std::atomic<double> IFactor(1.2);
static std::atomic<double> DFactor(0.002);
static std::atomic<double> Setpoint(0);
static std::atomic<int32_t> Output(0);

uint_fast16_t Controller::Update(double speed, unsigned long* MotorControlAddress) {
	static double previousSpeed = 0;
	static double integral = 0;
	static std::chrono::steady_clock::time_point lastSampleTime(std::chrono::steady_clock::now());

	std::chrono::microseconds timeSpan = std::chrono::duration_cast<std::chrono::microseconds> (std::chrono::steady_clock::now() - lastSampleTime);
	lastSampleTime = std::chrono::steady_clock::now();

	double error = Setpoint - speed;
	// Limit error to smooth acceleration (avoids slippage on acceleration and locked tires on braking). Basically turns a step function into a ramp.
	if(error > STEP_SIZE_ACCELERATION) {
		error = STEP_SIZE_ACCELERATION;
	} else if (error < -STEP_SIZE_DECELERATION) {
		error = -STEP_SIZE_DECELERATION;
	}

	double interval = timeSpan.count()/1E6; // convert to seconds

	integral += IFactor * error * interval;
	// Limit integral to avoid wind-up effect
	if(integral > INTEGRAL_LIMIT) {
		integral = INTEGRAL_LIMIT;
	} else if (integral < -INTEGRAL_LIMIT) {
		integral = -INTEGRAL_LIMIT;
	}

	double derivate = (speed - previousSpeed)/interval;
	previousSpeed = speed;

	int32_t output = error * PFactor + integral - derivate * DFactor;
	//std::cout << "P: " << error * PFactor << " I: " << integral * IFactor << " D: " << derivate * DFactor << std::endl;

	// Limit output value
	if(output > MAX_PWM_VALUE) {
		output = MAX_PWM_VALUE;
	} else if(output < 0) {
		output = 0;
	}
	Output = output; // only assign to the atomic static Output variable after it's been limited

	alt_write_word(MotorControlAddress+2, output); // Set PWM

	// Brake if error is below BRAKE_POINT (speed_mm_s by BRAKE_POINT higher than speedSetting)
	if(error < -BRAKE_POINT) {
		uint32_t controlRegister = alt_read_word(MotorControlAddress);
		controlRegister &= ~(0x2); // inhibit on
		alt_write_word(MotorControlAddress, controlRegister);
	} else {
		uint32_t controlRegister = alt_read_word(MotorControlAddress);
		controlRegister |= 0x2; // inhibit off
		alt_write_word(MotorControlAddress, controlRegister);
	}

	return output;
}

void Controller::SetSetpoint(double referenceSpeed) {
	Setpoint = referenceSpeed;
}

double Controller::GetSetpoint() {
	return Setpoint;
}

int32_t Controller::GetOutput() {
	return Output;
}

void Controller::SetP(double P) {
	PFactor = P;
}

void Controller::SetI(double I) {
	IFactor = I;
}
void Controller::SetD(double D) {
	DFactor = D;
}
