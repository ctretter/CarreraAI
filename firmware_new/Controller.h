#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <stdint.h>
#include <atomic>

//volatile unsigned long* MotorControlAddress;

// signleton
class Controller {
public:
	static Controller* GetInstance();
	virtual ~Controller();
	uint_fast16_t Update(double speed, unsigned long* MotorControlAddress);
	void SetP(double P);
	void SetI(double I);
	void SetD(double D);
	void SetSetpoint(double referenceSpeed);
	double GetSetpoint();
	int32_t GetOutput();

	static constexpr double BRAKE_POINT = 110; // brake if speed is more than this value above setpoint //120
	static constexpr double STEP_SIZE_ACCELERATION = 450.0;
	static constexpr double STEP_SIZE_DECELERATION = 400.0;
	static constexpr double INTEGRAL_LIMIT = 1000.0;
	static const int32_t MAX_PWM_VALUE = 1023;

private:
	Controller();
	static Controller* mInstance;

	std::atomic<double> PFactor;
	std::atomic<double> IFactor;
	std::atomic<double> DFactor;
	std::atomic<double> Setpoint;
	std::atomic<int32_t> Output;
};

#endif
