#include "MotorController.h"
#include <cmath>
#include <socal/socal.h>

MotorController::MotorController(DataAcquisition & dataAcq, TrackRecorder & trackRec, unsigned long * MotorControlAddress)
{
	mDataAcq = &dataAcq;
	mTrackRecorder = &trackRec;
	MOTORCONTROL_ADDRESS = MotorControlAddress;
}

MotorController::~MotorController()
{

}

// Calculate braking distance
// Get max speed now and new point
double MotorController::CalculateTargetVelocity() const
{
	return std::min(mTrackRecorder->GetVelocity(mDataAcq->GetDistanceTravelled()),
			mTrackRecorder->GetVelocity(mDataAcq->GetDistanceTravelled() + CalcBreakingDistance()));
}

// Compare speed now to max speed new point -> slow down or speed up
// Send new speed to motor
void MotorController::UpdateMotorVelocity() const
{
	static double prevVelocity = 0;

	double const targetVelocity = CalculateTargetVelocity();
	double const currentVelocity = mDataAcq->GetDrivingVelocity();

	double DiffVelocity = targetVelocity - currentVelocity;
	if(DiffVelocity > MAX_ACCEL)
	{
		DiffVelocity = MAX_ACCEL;
	}
	else if(DiffVelocity < -MAX_DECEL)
	{
		DiffVelocity = -MAX_DECEL;
	}

	double integral = DiffVelocity * mDataAcq->GetSampleTime() * I_FACTOR;
	if(integral > MAX_INTEGRAL)
	{
		integral = MAX_INTEGRAL;
	}
	else if(integral < -MAX_INTEGRAL)
	{
		integral = -MAX_INTEGRAL;
	}

	double derivate = D_FACTOR * (currentVelocity - prevVelocity) / mDataAcq->GetSampleTime();
	double pwmValue = DiffVelocity * P_FACTOR + integral - derivate;
	if(pwmValue > MAX_PWM_VALUE)
	{
		pwmValue = MAX_PWM_VALUE;
	}
	else if(pwmValue < MIN_PWM_VALUE)
	{
		pwmValue = MIN_PWM_VALUE;
	}
	alt_write_word(MOTORCONTROL_ADDRESS+2, pwmValue); // Set PWM

	// Save velocity
	prevVelocity = currentVelocity;
}


double MotorController::CalcBreakingDistance() const //return meter
{
	double speedDiff = mDataAcq->GetDrivingVelocity() - mTrackRecorder->GetSmallestMaxVelocity();
	return (speedDiff * speedDiff) / (2 * MAX_DECEL);
}
