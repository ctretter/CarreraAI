#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <stdint.h>

//volatile unsigned long* MotorControlAddress;

namespace Controller {
	uint_fast16_t Update(double speed, unsigned long* MotorControlAddress);
	void SetP(double P);
	void SetI(double I);
	void SetD(double D);
	void SetSetpoint(double referenceSpeed);
	double GetSetpoint();
	int32_t GetOutput();
}

#endif
