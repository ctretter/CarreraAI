#ifndef DATAACQUISITION_H
#define DATAACQUISITION_H



/* @brief Class for handling data acquisition
 *
 */
class DataAcquisition {
public:

	DataAcquisition();
	~DataAcquisition();

	void UpdateAllData();

	size_t GetLapCount();
	double GetDrivingVelocity();	//in m/s
	double GetDistanceTravelled();	//in m
	double GetAngularVelocity();	// in rad/s
	bool IsStartLineCrossed();		// flag cleared, when read

private:

};

#endif
