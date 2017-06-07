//
//#ifndef DATAACQUISITION_H
//#define DATAACQUISITION_H
//
//#include <thread>
//#include <mutex>
//#include <atomic>
//#include <condition_variable>
//
//const size_t BILLION = 1000000000;
//const size_t MILLION =    1000000;
//
//struct dataSample_t {
//	double time;
//	double distance;
//	double speed;
//	double yawRate;
//	uint32_t lapCount;
//};
//
///* @brief Class for handling data acquisition. Designed as singleton since only one instance makes sense.
// *
// */
//class DataAcquisition {
//public:
//	virtual ~DataAcquisition();
//	static bool Init(unsigned long* MotorControlAddress);
//	static DataAcquisition* GetInstance();
//
//	std::thread* Start();
//	void Stop();
//
//	void GetData(dataSample_t& dataSample);
//	uint32_t GetLapCount();
//
//private:
//	DataAcquisition(unsigned long* pwmAddress);
//	void ThreadFunction();
//
//	unsigned long* mPwmAddress; //volatile
//	std::thread* mThread;
//	std::mutex mDataSampleMutex;
//	std::condition_variable mDataSampleConditionVariable;
//	bool mDataSampleReady;
//	dataSample_t mDataSample;
//	volatile std::atomic<bool> mStop;
//
//	uint32_t mDataSampleState;
//	static DataAcquisition* mInstance;
//
//	std::atomic<uint32_t> mLapCount;
//};
//
//#endif
