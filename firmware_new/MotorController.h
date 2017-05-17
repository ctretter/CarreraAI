#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H

#include "DataAcq.h"

/* @brief Class for controlling the motor
 *
 */
class MotorController {
public:

	MotorController(DataAcquisition & dataAcq, TrackRecorder & trackRec);
	~MotorController();

	// Calculate braking distance
	// Get max speed now and new point
	void CalculateDrivingVelocity();

	// Compare speed now to max speed new point -> slow down or speed up
	// Send new speed to motor
	void UpdateMotorVelocity();


private:

	enum EAccel {FASTER,NEUTRAL,SLOWER};

	EAccel DecideAcceleration() const;

	double CalcBreakingDistance() const; //return meter

	DataAcquisition * mDataAcq;
	TrackRecorder * mTrackRecorder;
	double mTargetVelocity;

	static double constexpr BrakingAcceleration = 1; // m/(s²) TODO measure braking acc

};

#endif
