#ifndef TRACKRECORDER_H
#define TRACKRECORDER_H

#include <cmath>
#include <vector>

class TrackRecorder{
public:
	struct TrackPoint{
		TrackPoint(double const distance_to_start, double const max_velocity);
		
		double const distance_to_start;
		double const max_velocity;
	};
	
	typedef std::vector<TrackPoint> TrackMap;

	TrackRecorder(	double const distance_centroid_wheel = 1.0,
					double const distance_centroid_street = 0.5,
					double const safety_for_max_velocity = 0.9);

	TrackMap const& getTrackMap(void) const;
	void addTrackPoint(double const delta_distance, double const angular_velocity, double const sample_time);
	double GetVelocity(double const distance_travelled) const;
	double GetSmallestMaxVelocity(void) const;
	
	
private:
	
	static double constexpr gravity = 9.81;
	double const safety_for_max_velocity;
	double const speed_calculation_constant;
	
	TrackMap track_map;
	double smallest_max_velocity;
	
	double calculateRadius(double const distance, double const gyro_z, double const sample_time);
	double calculateMaxVelocity(double const radius);
	double calculateMaxVelocity(double const distance, double const gyro_z, double const sample_time);
};

#endif
