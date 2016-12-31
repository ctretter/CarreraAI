/*
 * MatlabTCP.h
 *
 *  Created on: Nov 24, 2015
 *      Author: Lukas Rappel
 */

#ifndef MatlabTCP_H_
#define MatlabTCP_H_
#include <string>
#include <netinet/in.h>
#include <thread>
#include <atomic>

using namespace std;

class MatlabTCP {
public:
	MatlabTCP();
	virtual ~MatlabTCP();

	static MatlabTCP* GetInstance();
	std::thread* Start();
	void Stop();
	void SigPipeHandler(int signal);

	const int PORT = 1234;

	struct __attribute__((__packed__)) statusData_t {
		uint32_t id; // Car identification
		double time; // Time since start
		double currentLapDistance; // distance (mm)
		double speed; // speed (mm/s)
		double yawRate; // rotation around Z-Axis (mdps)
		double currentLapTime; // time for current lap in milliseconds
		double lastLapTime; // time for last lap in milliseconds
		uint32_t lapCount; // laps driven
		uint32_t settings; // read-back of current settings (see controlData_t)
		double controllerSetpoint; // current controller set point
		int32_t controllerOutput; // current controller output (PWM)
	};

	struct __attribute__((__packed__)) controlData_t {
		uint32_t settings; // see description below
		double friction; // friction coefficient between 0 and 1
		double controllerP; // controller’s proportional factor
		double controllerI; // controller’s integral factor
		double controllerD; // controller’s derivative factor
		double speedReference; // maximum speed/controller speed
	};
	const int SETTINGS_GLOBAL_EN_SHIFT = 0;
	const int SETTINGS_P_EN_SHIFT = 1;
	const int SETTINGS_I_EN_SHIFT = 2;
	const int SETTINGS_D_EN_SHIFT = 3;
	const int SETTINGS_SPEED_REFERENCE_EN_SHIFT = 4;
	const int SETTINGS_FRICTION_EN_SHIFT = 5;

	/* Settings
	 * Bit 0 … Global Enable. 1: Drive, 0: stop.
	 * Bit 1 … Enable P. 1: Enables controller’s P factor. 0: disable.
	 * Bit 2 … Enable I. 1: Enables controller’s I factor. 0: disable.
	 * Bit 3 … Enable D. 1: Enables controller’s D factor. 0: disable.
	 */

	int send(statusData_t & data);
	int receive(controlData_t & data);

private:
	void ThreadFunction();
	int Open(int const serverPort);
	int Accept(unsigned int timeout);
	int Close();

	std::thread* mThread;
	static MatlabTCP* mInstance;
	int mServerSocket;
	int mClientSocket;
	bool mServerSocketIsOpen;
	bool mClientSocketIsOpen;
	struct sockaddr_in mServer; // data source
	struct sockaddr_in mClient; // data sink

	volatile std::atomic<bool> mStop;
};

#endif /* MatlabTCP_H_ */
