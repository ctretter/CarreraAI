#include <iostream>
#include <vector>
#include <list>
#include <algorithm>
#include <cassert>
#include <cmath>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <hwlib.h>
#include <socal/socal.h>
#include <socal/hps.h>
#include <sys/ioctl.h>
#include <signal.h>
#include <atomic>
#include <fstream>

#include "hps_0.h"
#include "lsm9d1.h"
#include "TrackRecorder.h"
#include "DataAcq.h"
#include "MotorController.h"

static unsigned long const HW_REGS_BASE = ALT_STM_OFST;
static unsigned long const HW_REGS_SPAN = 0x04000000;
static unsigned long const HW_REGS_MASK = HW_REGS_SPAN - 1;

static unsigned long const MotorControl = (unsigned long)(ALT_LWFPGASLVS_OFST + MOTOR_CONTROL_0_BASE) & HW_REGS_MASK;
static unsigned long const OpticalSensor = (unsigned long)(ALT_LWFPGASLVS_OFST + AVALONTOOPTICALSENSOR_COMMUNICATION_0_BASE) & HW_REGS_MASK;

static void* VirtualBaseAddress = 0;
static int MemoryFileDescriptor = 0;

// defines used for optical sensor
volatile unsigned long * OpticalSensorAddress = 0;
volatile unsigned long * MotorControlAddress = 0;

int main(int argc, char **argv)
{
	// Map the address space of the FPGA registers into user space so we can interact with them.
	std::cout << "Start" << std::endl;
	errno = 0;
	MemoryFileDescriptor = open("/dev/mem", (O_RDWR | O_SYNC));
	if(MemoryFileDescriptor == -1) {
		perror("Error opening /dev/mem");
		return 1;
	}
	std::cout << "Mem initialized" << std::endl;
	errno = 0;
	VirtualBaseAddress = mmap(NULL, HW_REGS_SPAN, (PROT_READ | PROT_WRITE), MAP_SHARED, MemoryFileDescriptor, HW_REGS_BASE);
	if(VirtualBaseAddress == MAP_FAILED) {
		perror("Error executing mmap");
		close(MemoryFileDescriptor);
		return 1;
	}
	std::cout << "Mem mapped" << std::endl;
	OpticalSensorAddress = (unsigned long*)((unsigned long)VirtualBaseAddress + OpticalSensor);
	MotorControlAddress = (unsigned long *)((unsigned long)VirtualBaseAddress + MotorControl);		// with this adress it should be possible to access the gyro and the motor controler
  
	TrackRecorder track(1.0,0.5,0.9);
	DataAcquisition harvester((unsigned long*)OpticalSensorAddress, (unsigned long*)MotorControlAddress);
	MotorController ctrl(harvester, track, (unsigned long*)MotorControlAddress);
	
	// Initial round -> measure track TODO set good speed value
	ctrl.UpdateMotorVelocity(1.5);
	while(!harvester.IsStartLineCrossed());
	while(!harvester.IsStartLineCrossed())
	{
		track.addTrackPoint(harvester.GetDistanceTravelled(),harvester.GetAngularVelocity(),harvester.GetDrivingVelocity());
	}
	while(true){
		ctrl.UpdateMotorVelocity(ctrl.CalculateTargetVelocity());
	}
}
