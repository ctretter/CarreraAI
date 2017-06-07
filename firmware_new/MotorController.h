#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include "DataAcq.h"
#include "TrackRecorder.h"

/* @brief Class for controlling the motor
 *
 */
class MotorController {
public:

	MotorController(DataAcquisition & dataAcq, TrackRecorder & trackRec, unsigned long MotorControlAddress);
	~MotorController();

	// Calculate braking distance
	// Get max speed now and new point
	double CalculateTargetVelocity() const;

	// Compare speed now to max speed new point -> slow down or speed up
	// Send new speed to motor
	void UpdateMotorVelocity() const;


private:

	double CalcBreakingDistance() const; //return meter

	DataAcquisition * mDataAcq;
	TrackRecorder * mTrackRecorder;
	unsigned long MOTORCONTROL_ADDRESS;

	// maximal acceleration and deceleration in mm/(s²)
	static double constexpr MAX_ACCEL = 450;
	static double constexpr MAX_DECEL = 400;

	// PID
	static double constexpr P_FACTOR = 1.0;
	static double constexpr I_FACTOR = 1.2;
	static double constexpr D_FACTOR = 0.0002;
	static int const MAX_INTEGRAL = 1000;

	//PWM
	static double constexpr MAX_PWM_VALUE = 1023;
	static double constexpr MIN_PWM_VALUE = 0;

};

#endif
