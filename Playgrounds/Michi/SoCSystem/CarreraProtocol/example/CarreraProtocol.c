#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <hwlib.h>
#include <socal/socal.h>
#include <socal/hps.h>
#include <socal/alt_gpio.h>
#include "hps_0.h"
#include <stdbool.h>
#include <sys/ioctl.h>
#include <signal.h>
#include <unistd.h>

#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )


volatile unsigned long * protocol_addr = 0;

void *virtual_base = 0;
int fd = 0;

void sig_handler(int signo)
{
	if (signo == SIGINT) {
		fprintf(stderr, "Received SIGINT\n");
	}


	if(munmap(virtual_base, HW_REGS_SPAN ) != 0) {
		fprintf(stderr, "ERROR: munmap() failed...\n");
		close(fd);
	}
	exit(0);
}

int main(int argc, char **argv)
{
	if (signal(SIGINT, sig_handler) == SIG_ERR) {
		fprintf(stderr, "Failed to attach SIGINT handler\n");
	}
	if (signal(SIGTERM, sig_handler) == SIG_ERR) {
		fprintf(stderr, "Failed to attach SIGINT handler\n");
	}

	// map the address space for the LED registers into user space so we can interact with them.
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		fprintf(stderr, "ERROR: could not open \"/dev/mem\"...\n" );
		return(1);
	}
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span
	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );
	if( virtual_base == MAP_FAILED ) {
		fprintf(stderr, "ERROR: mmap() failed...\n" );
		close( fd );
		return(1);
	}

	protocol_addr = (unsigned long *)((unsigned long)virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + CARRERAPROTOCOLDECODER_0_BASE) & ( unsigned long)( HW_REGS_MASK ) ));

	fprintf(stderr, "Accessing FPGA\n");
	fflush(stderr);


	while(true){
		static uint32_t lastID = 0;
		uint32_t currentID = alt_read_word(protocol_addr);
		if (lastID != currentID) { // new data received
			uint16_t data = alt_read_word(protocol_addr+1);
			uint32_t status = alt_read_word(protocol_addr+2);
			if ((status & 0x000F) > 0 ) { // bitLen > 0 
				// new data available and valid
				printf("ID: %d, Len: %d, Data: %x\n", currentID, status & 0x000F, data);
				lastID = currentID;
			}				
		}
	}

	if(munmap(virtual_base, HW_REGS_SPAN ) != 0) {
		fprintf(stderr, "ERROR: munmap() failed...\n");
		close(fd);
		return 1;
	}

	close(fd);
	return 0;
}

