BINARY = DumpCarreraProtocol

TARGET_IP = 192.168.0.54
TARGET_PATH = root@${TARGET_IP}:/home/root

ifeq ($(OS),Windows_NT)
	#Path for Lukas ;-) - do not delete!!!! 
	#comment and add your path :D
	SOCEDS_DEST_ROOT = d:/altera/15.0
else
	SOCEDS_DEST_ROOT ?= ${HOME}/.opt/altera/15/# ?= sets variable if it doesn't have a value yet 
endif

SRC += CarreraProtocol.c
#SRC += 

EXT = .c

INCLUDES := -I.
INCLUDES += -I${SOCEDS_DEST_ROOT}/embedded/ip/altera/hps/altera_hps/hwlib/include
INCLUDES += -I${SOCEDS_DEST_ROOT}/embedded/ip/altera/hps/altera_hps/hwlib/include/soc_cv_av/
INCLUDES += -I${SOCEDS_DEST_ROOT}/ip/altera/nios2_ip/altera_nios2/HAL/inc/

CROSS_COMPILE = arm-linux-gnueabihf-
CFLAGS = -g -O0 -Wall -std=c99 -static -Dsoc_cv_av $(INCLUDES)
LDFLAGS =  -g -Wall -static
CC = $(CROSS_COMPILE)gcc
ARCH= arm

OBJ := $(subst $(EXT),.o,$(SRC))

.PHONY: clean all build documentation

all: build
	ping -c2 -W1 ${TARGET_IP} && scp ${BINARY} ${TARGET_PATH}

build: $(BINARY)
$(BINARY): $(OBJ)
	$(CC) $(LDFLAGS)   $^ -o $@
	
%.o : %$(EXT)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(BINARY) *.a *.o *~ 
