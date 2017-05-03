BINARY = Ghostcar

TARGET_IP = 192.168.2.102
TARGET_PATH = root@${TARGET_IP}:/home/root

SOCEDS_DEST_ROOT ?= ../firmware/altera_SOCEDS_DEST_ROOT

SRC = BSP/I2C/i2c.c
SRC += BSP/LSM9D1/lsm9d1.c
EXT = .c

SRC_CPP = main.cpp
SRC_CPP += MatlabConnect/MatlabTCP.cpp
SRC_CPP += DataAcquisition.cpp
SRC_CPP += Controller.cpp
SRC_CPP += Correlation.cpp
EXT_CPP = .cpp

INCLUDES := -I.
INCLUDES += -I${SOCEDS_DEST_ROOT}/embedded/ip/altera/hps/altera_hps/hwlib/include
INCLUDES += -I${SOCEDS_DEST_ROOT}/embedded/ip/altera/hps/altera_hps/hwlib/include/soc_cv_av/
INCLUDES += -I${SOCEDS_DEST_ROOT}/ip/altera/sopc_builder_ip/altera_avalon_spi/HAL/inc
INCLUDES += -I${SOCEDS_DEST_ROOT}/ip/altera/sopc_builder_ip/altera_avalon_spi/inc
INCLUDES += -I${SOCEDS_DEST_ROOT}/ip/altera/nios2_ip/altera_nios2/HAL/inc/
INCLUDES += -Isoc_system_hps_0
INCLUDES += -IBSP/LSM9D1
INCLUDES += -IBSP/I2C

BIN_DIR = bin
OBJ_DIR = obj

CROSS_COMPILE = arm-linux-gnueabihf-
CFLAGS = -g -Og -Wall -std=gnu++11 -Dsoc_cv_av $(INCLUDES) -mfloat-abi=hard -mfpu=vfpv3 -march="armv7-a" -ffast-math -pthread -lpthread -Wl,--no-as-needed -static
LDFLAGS = -g -Wall -pthread -lpthread -Wl,--no-as-needed -static -Wl,-u,pthread_cancel,-u,pthread_cond_broadcast,-u,pthread_cond_destroy,-u,pthread_cond_signal,-u,pthread_cond_wait,-u,pthread_create,-u,pthread_detach,-u,pthread_cond_signal,-u,pthread_equal,-u,pthread_join,-u,pthread_mutex_lock,-u,pthread_mutex_unlock,-u,pthread_once,-u,pthread_setcancelstate
CC = $(CROSS_COMPILE)g++
ARCH= arm

#OBJ := $($(INCLUDES)/%.c = $(OBJ_DIR)/%.o)
#OBJ_CPP := $($(INCLUDES)/%.cpp = $(OBJ_DIR)/%.o)
OBJ := $(subst $(EXT),.o,$(SRC))
OBJ_CPP := $(subst $(EXT_CPP),.o,$(SRC_CPP))

.PHONY: clean all build documentation

all: clean dirs build
	@ ping -c2 -W1 ${TARGET_IP} && scp bin/${BINARY} ${TARGET_PATH}

dirs:
	@mkdir -p $(OBJ_DIR)
	@mkdir -p $(BIN_DIR)

build: $(BIN_DIR)/$(BINARY)
$(BIN_DIR)/$(BINARY): $(OBJ) $(OBJ_CPP)
	@$(CC) $(LDFLAGS)   $^ -o $@
	@echo "build done"
	
%.o : %$(EXT_CPP)
	@$(CC) $(CFLAGS) -c $< -o $@
	
%.o : %$(EXT)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@-rm -f `find -name "*.o"`
	@-rm -f -r $(OBJ_DIR)
	@-rm -f -r $(BIN_DIR)
	@-rm -f $(BINARY) *.a *.o *~ 
	@echo "clean done"

