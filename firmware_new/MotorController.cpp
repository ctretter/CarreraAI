#include "MotorController.h"
#include <cmath>

MotorController::MotorController(DataAcquisition & dataAcq, TrackRecorder & trackRec)
{


}

MotorController::~MotorController()
{

}

// Calculate braking distance
// Get max speed now and new point
void MotorController::CalculateDrivingVelocity()
{
	mTargetVelocity = std::min(mTrackRecorder->GetVelocity(mDataAcq->GetDistanceTravelled()),
			mTrackRecorder->GetVelocity(mDataAcq->GetDistanceTravelled() + CalcBreakingDistance()));
}

// Compare speed now to max speed new point -> slow down or speed up
// Send new speed to motor
void MotorController::UpdateMotorVelocity()
{

}


MotorController::EAccel MotorController::DecideAcceleration() const
{
	double const currentVelocity = mDataAcq->GetDrivingVelocity();
	EAccel a = (currentVelocity < mTargetSpeed?EAccel::FASTER : (currentVelocity > mTargetSpeed ? EAccel::SLOWER : EAccel::NEUTRAL));
	return a;
}

double MotorController::CalcBreakingDistance() const //return meter
{
	double speedDiff = mDataAcq->GetDrivingVelocity() - mTrackRecorder->GetSmallestMaxVelocity();
	return (speedDiff * speedDiff) / (2 * BrakingAcceleration);
}
