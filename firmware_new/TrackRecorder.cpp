#include "TrackRecorder.h"

double const TrackRecorder::gravitational_acceleration = 9.81;

TrackRecorder::TrackRecorder(	double const distance_centroid_wheel,
								double const distance_centroid_street,
								double const safety_for_max_velocity)
: safety_for_max_velocity(safety_for_max_velocity), 
  speed_calculation_constant(distance_centroid_wheel/distance_centroid_street*gravitational_acceleration),
  smallest_max_velocity(0.0)
{
	// TODO: Implement CTor. Maybe error handling, distance_centroid_* positive values, safety_for_max_velocity between 0.0 and 1.0
}

TrackRecorder::TrackPoint::TrackPoint(double const distance_to_start, double const max_velocity)
: distance_to_start(distance_to_start), max_velocity(max_velocity)
{
	// TODO: Implement CTor. Maybe error handling, distance_to_start and max_velocity only positive
}

TrackRecorder::TrackMap const& TrackRecorder::getTrackMap(void) const
{
	return this->track_map;
}

void TrackRecorder::addTrackPoint(double const delta_distance, double const angular_velocity, double const sample_time)
{
	double distance_to_start = (track_map.empty()?0.0:track_map.back().distance_to_start) + delta_distance;
	double max_velocity = calculateMaxVelocity(delta_distance, angular_velocity, sample_time);
	smallest_max_velocity = smallest_max_velocity < max_velocity? smallest_max_velocity:max_velocity;
	track_map.push_back(TrackPoint(distance_to_start, max_velocity));
}

double TrackRecorder::GetVelocity(double const distance_travelled) const
{
	for(TrackMap::const_iterator it = track_map.begin(); it != track_map.end(); it++)
	{
		if(it->distance_to_start > distance_travelled){
			return it->max_velocity;
		}
	}
	return 0.0;
}

double TrackRecorder::GetSmallestMaxVelocity(void) const
{
	return smallest_max_velocity;
}


/* private methods */

double TrackRecorder::calculateRadius(double const distance, double const angular_velocity, double const sample_time)
{
	return (distance / (angular_velocity * sample_time));
}

double TrackRecorder::calculateMaxVelocity(double const radius)
{
	return (sqrt(speed_calculation_constant*radius)*safety_for_max_velocity);
}

double TrackRecorder::calculateMaxVelocity(double const distance, double const angular_velocity, double const sample_time)
{
	return calculateMaxVelocity(calculateRadius(distance, angular_velocity, sample_time));
}
