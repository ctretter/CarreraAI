#include "MatlabTCP.h"
#include "main.h"
#include "Controller.h"
#include "DataAcquisition.h"
#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <iostream>
#include <sys/time.h>
#include <netinet/in.h>
#include <errno.h>
#include <cassert>
#include <thread>
#include <cmath>
#include <signal.h>
#include <poll.h>
#include <ctime>
#include <chrono>

MatlabTCP* MatlabTCP::mInstance = 0;

void MatlabTCP::SigPipeHandler(int signal) {
	mClientSocketIsOpen = false;
}

void SigPipeHandlerHelper(int signal) {
	MatlabTCP::GetInstance()->SigPipeHandler(signal);
}


MatlabTCP::MatlabTCP() : mThread(0), mServerSocket(-1), mClientSocket(-1), mServerSocketIsOpen(false), mClientSocketIsOpen(false), mStop(false)
{
	mServerSocket = socket(AF_INET, SOCK_STREAM, 0);
	if(mServerSocket < 0) {
		std::cerr << "Error opening socket" << std::endl;
		return;
	}
	if(signal(SIGPIPE, SigPipeHandlerHelper) == SIG_ERR) {
		std::cerr << "Failed to attach SIGPIPE handler" << std::endl;
	}
}

MatlabTCP::~MatlabTCP() {
	Close();
}

int MatlabTCP::Close() {
	if(mServerSocketIsOpen) {
		close(mServerSocket);
	}
	if(mClientSocketIsOpen) {
		close(mClientSocket);
	}

	return true;
}

int MatlabTCP::Open(int const serverPort) {
	/* Clear struct */
	bzero(&mServer, sizeof(mServer));
	bzero(&mClient, sizeof(mClient));

	/* Construct the server sockaddr_in structure */
	mServer.sin_family = AF_INET; /* Internet/IP */
	mServer.sin_addr.s_addr = htonl(INADDR_ANY); /* Any IP address */
	mServer.sin_port = htons(serverPort); /* server port */

	/* Bind the socket */
	int ret = ::bind(mServerSocket, (struct sockaddr *) &mServer, sizeof(mServer));
	if(ret < 0) {
		std::cerr << "Error on binding" << std::endl;
		return ret;
	}

	ret = listen(mServerSocket, 5);
	if (ret < 0) {
		std::cerr << "Error on listening" << endl;
		return ret;
	}

	/*
	// Set non-blocking
	int flags = fcntl(mServerSocket, F_GETFL, 0);
	if(flags < 0) {
		return flags;
	}
	flags |= O_NONBLOCK;
	ret = fcntl(mServerSocket, F_SETFL, flags);
	if(ret < 0) {
		std::cerr << "Error setting non-blocking mode with fcntl" << std::endl;
		return ret;
	}
	*/

	mServerSocketIsOpen = true;
	return ret;
}

int MatlabTCP::Accept(unsigned int timeout) {
	int ret = -1;

	socklen_t clientLen = sizeof(mClient);

	struct pollfd pollFd;
	pollFd.fd = mServerSocket;
	pollFd.events = POLLIN;
	ret = poll(&pollFd, 1, timeout);
	if(ret < 0) {
		std::cerr << "Error calling poll" << std::endl;
		return ret;
	}

	if(ret > 0 && (pollFd.revents & POLLIN)) {
		mClientSocket = ::accept(mServerSocket, (struct sockaddr *) &mClient, &clientLen);
		if(mClientSocket < 0) {
			std::cerr << "Error accepting connection" << std::endl;
			return ret;
		}
	} else {
		return -1; // 0 connections pending -> timeout
	}

	mClientSocketIsOpen = true;
	return ret;
}


MatlabTCP* MatlabTCP::GetInstance() {
	if(mInstance == 0) {
		mInstance = new MatlabTCP();
	}
	return mInstance;
}

std::thread* MatlabTCP::Start()
{
	if(mThread == 0) {
		mThread = new std::thread(&MatlabTCP::ThreadFunction, this);
	}

	return mThread;
}

void MatlabTCP::Stop() {
	mStop = true;
	Close();
	if(mThread) {
		mThread->join();
		delete mThread;
		mThread = 0;
	}
}

void MatlabTCP::ThreadFunction() {
	// Matlab

	if (Open(PORT) < 0) {
		return;
	}

	// data structure to send
	MatlabTCP::statusData_t statusData;

	// data structure to receive
	MatlabTCP::controlData_t controlData;

	while(true) {
		if(mStop == true) {
			return;
		}
		if(Accept(100) > 0) { // accept new client connection
			std::cerr << "Connection accepted" << std::endl;
			uint32_t previousLapCount = 0;
			double lapStartDistance = 0;
			std::chrono::steady_clock::time_point lapStartTime(std::chrono::steady_clock::now());
			std::chrono::milliseconds lastLapTime(0);
			while(true) {
				if(mStop == true) {
					return;
				}
				dataSample_t dataSample;
				DataAcquisition::GetInstance()->GetData(dataSample);

				// Detect lap start
				if(previousLapCount != dataSample.lapCount) {
					lastLapTime = std::chrono::duration_cast<std::chrono::milliseconds> (std::chrono::steady_clock::now() - lapStartTime);
					lapStartTime = std::chrono::steady_clock::now();
					lapStartDistance = dataSample.distance;
					previousLapCount = dataSample.lapCount;
				}

				statusData.id = 123;
				statusData.time = dataSample.time;
				statusData.currentLapDistance = dataSample.distance - lapStartDistance;
				statusData.speed = dataSample.speed;
				statusData.yawRate = dataSample.yawRate * dataSample.speed;
				statusData.settings = 0x1; // TODO proper value
				statusData.controllerOutput = Controller::GetOutput();
				statusData.controllerSetpoint = Controller::GetSetpoint();
				statusData.lapCount = DataAcquisition::GetInstance()->GetLapCount();
				std::chrono::milliseconds lapTime = std::chrono::duration_cast<std::chrono::milliseconds> (std::chrono::steady_clock::now() - lapStartTime);
				statusData.currentLapTime = lapTime.count();
				statusData.lastLapTime = lastLapTime.count();

				if(send(statusData) < 0) {
					break;
				}

				int ret = receive(controlData);
				if(ret < 0) {
					break;
				}
				if(ret > 0) {
					/*assert(ret == sizeof(controlData));
					if(controlData.settings & (1 << SETTINGS_GLOBAL_EN_SHIFT)) {
						::Stop = false;
					} else {
						::Stop = true;
					}
					if(controlData.settings & (1 << SETTINGS_FRICTION_EN_SHIFT)) {
						// TODO
					}
					if(controlData.settings & (1 << SETTINGS_P_EN_SHIFT)) {
						Controller::SetP(controlData.controllerP);
					}
					if(controlData.settings & (1 << SETTINGS_I_EN_SHIFT)) {
						Controller::SetI(controlData.controllerI);
					}
					if(controlData.settings & (1 << SETTINGS_D_EN_SHIFT)) {
						Controller::SetD(controlData.controllerD);
					}
					if(controlData.settings & (1 << SETTINGS_SPEED_REFERENCE_EN_SHIFT)) {
						::MaxSpeed = controlData.speedReference;
					}
					*/
				}

				std::this_thread::sleep_for(std::chrono::milliseconds(20));
			}
		}
	}
}

int MatlabTCP::send(statusData_t & data) {
	if (mClientSocketIsOpen == false) {
		return -1;
	}
	int len = write(mClientSocket, &data, sizeof(statusData_t));
	return len;
}

int MatlabTCP::receive(controlData_t & data) {
	if (mClientSocketIsOpen == false) {
		return -1;
	}
	int len = read(mClientSocket, &data, sizeof(controlData_t));
	return len;
}
