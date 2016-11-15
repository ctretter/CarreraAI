# *******************************************************************************
# *                                                                             *
# * License Agreement                                                           *
# *                                                                             *
# * Copyright (c) 2003-2005 Altera Corporation, San Jose, California, USA.      *
# * All rights reserved.                                                        *
# *                                                                             *
# * Permission is hereby granted, free of charge, to any person obtaining a     *
# * copy of this software and associated documentation files (the "Software"),  *
# * to deal in the Software without restriction, including without limitation   *
# * the rights to use, copy, modify, merge, publish, distribute, sublicense,    *
# * and/or sell copies of the Software, and to permit persons to whom the       *
# * Software is furnished to do so, subject to the following conditions:        *
# *                                                                             *
# * The above copyright notice and this permission notice shall be included in  *
# * all copies or substantial portions of the Software.                         *
# *                                                                             *
# * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  *
# * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    *
# * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE *
# * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      *
# * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING     *
# * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER         *
# * DEALINGS IN THE SOFTWARE.                                                   *
# *                                                                             *
# * This agreement shall be governed in all respects by the laws of the State   *
# * of California and by the laws of the United States of America.              *
# *                                                                             *
# * Altera does not recommend, suggest or require that this reference design    *
# * file be used in conjunction or combination with any other product.          *
# *******************************************************************************

# In addition to providing the list of nios2 specific source files, this 
# makefile fragment defines the processor specific macros required to build a
# HAL based system. 

PROC = nios2

CC  = nios2-elf-gcc -xc
CXX = nios2-elf-gcc -xc++
AS  = nios2-elf-gcc
AR  = nios2-elf-ar
LD  = nios2-elf-g++

OBJDUMP = nios2-elf-objdump -D -S -x
OBJCOPY = nios2-elf-objcopy

# This Program prints a memory-use summary 
#  that appears after each build:
MEM_USAGE_INFO_UTILITY = nios2-stackreport

LDFLAGS += -msys-crt0='$(SYSTEM_CONFIG_DIR)/crt0.o' -msys-lib=$(SYSTEM_NAME) -L '$(SYSTEM_CONFIG_DIR)'
LDDEPS  += $(SYSTEM_CONFIG_DIR)/crt0.o $(SYSTEM_CONFIG_DIR)/lib$(SYSTEM_NAME).a

# List all source files supplied by this component.

C_LIB_SRCS   += alt_busy_sleep.c                     \
                alt_irq_vars.c                       \
                alt_usleep.c                         \
                alt_icache_flush.c                   \
                alt_icache_flush_all.c               \
                alt_dcache_flush.c                   \
                alt_dcache_flush_all.c               \
                alt_remap_cached.c                   \
                alt_remap_uncached.c                 \
                alt_uncached_free.c                  \
                alt_uncached_malloc.c                \
                alt_do_ctors.c                       \
                alt_do_dtors.c                       \
                alt_gmon.c                           \
                alt_instruction_exception_entry.c    \

ASM_LIB_SRCS += \
                alt_exception_entry.S  \
                alt_exception_trap.S   \
                alt_exception_muldiv.S \
                alt_irq_entry.S        \
                alt_software_exception.S \
                alt_mcount.S           \
                alt_log_macro.S        \

INCLUDE_PATH +=

# Include the deps file for crt0.S

ifeq ($(PROJ_TYPE), system)
-include crt0.d
endif
