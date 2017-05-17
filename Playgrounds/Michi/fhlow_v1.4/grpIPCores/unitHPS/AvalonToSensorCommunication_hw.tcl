# TCL File Generated by Component Editor 15.0
# Wed May 17 15:08:52 CEST 2017
# DO NOT MODIFY


# 
# AvalonToOpticalSensor_Communication "AvalonToOpticalSensor" v1.1
# Michael Bierig 2017.05.17.15:08:52
# perform software to FPGA communication to sensor using Avalon
# 

# 
# request TCL package from ACDS 15.0
# 
package require -exact qsys 15.0


# 
# module AvalonToOpticalSensor_Communication
# 
set_module_property DESCRIPTION "perform software to FPGA communication to sensor using Avalon"
set_module_property NAME AvalonToOpticalSensor_Communication
set_module_property VERSION 1.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Michael Bierig"
set_module_property DISPLAY_NAME AvalonToOpticalSensor
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL AvalonToOpticalSensor
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file AvalonToOpticalSensor-Rtl-a.vhd VHDL PATH ../../grpBoardTest/unitAvalonToOpticalSensor/src/AvalonToOpticalSensor-Rtl-a.vhd
add_fileset_file AvalonToOpticalSensor-e.vhd VHDL PATH ../../grpBoardTest/unitAvalonToOpticalSensor/src/AvalonToOpticalSensor-e.vhd TOP_LEVEL_FILE
add_fileset_file Global-p.vhd VHDL PATH ../../grpPackages/pkgGlobal/src/Global-p.vhd
add_fileset_file StrobeGen-Rtl-a.vhd VHDL PATH ../../grpStrobesClocks/unitStrobeGen/src/StrobeGen-Rtl-a.vhd
add_fileset_file StrobeGen-e.vhd VHDL PATH ../../grpStrobesClocks/unitStrobeGen/src/StrobeGen-e.vhd
add_fileset_file OpticalSensorBurst-Rtl-a.vhd VHDL PATH ../../grpSensors/unitOpticalSensorBurst/src/OpticalSensorBurst-Rtl-a.vhd
add_fileset_file OpticalSensorBurst-e.vhd VHDL PATH ../../grpSensors/unitOpticalSensorBurst/src/OpticalSensorBurst-e.vhd


# 
# parameters
# 
add_parameter gDataWidth NATURAL 32
set_parameter_property gDataWidth DEFAULT_VALUE 32
set_parameter_property gDataWidth DISPLAY_NAME gDataWidth
set_parameter_property gDataWidth TYPE NATURAL
set_parameter_property gDataWidth UNITS None
set_parameter_property gDataWidth ALLOWED_RANGES 0:2147483647
set_parameter_property gDataWidth HDL_PARAMETER true
add_parameter gAddrWidth NATURAL 3 ""
set_parameter_property gAddrWidth DEFAULT_VALUE 3
set_parameter_property gAddrWidth DISPLAY_NAME gAddrWidth
set_parameter_property gAddrWidth TYPE NATURAL
set_parameter_property gAddrWidth UNITS None
set_parameter_property gAddrWidth ALLOWED_RANGES 0:2147483647
set_parameter_property gAddrWidth DESCRIPTION ""
set_parameter_property gAddrWidth HDL_PARAMETER true
add_parameter gClockFrequency NATURAL 50000000
set_parameter_property gClockFrequency DEFAULT_VALUE 50000000
set_parameter_property gClockFrequency DISPLAY_NAME gClockFrequency
set_parameter_property gClockFrequency TYPE NATURAL
set_parameter_property gClockFrequency UNITS None
set_parameter_property gClockFrequency ALLOWED_RANGES 0:2147483647
set_parameter_property gClockFrequency HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point AvalonBus
# 
add_interface AvalonBus avalon end
set_interface_property AvalonBus addressUnits WORDS
set_interface_property AvalonBus associatedClock clock
set_interface_property AvalonBus associatedReset reset
set_interface_property AvalonBus bitsPerSymbol 8
set_interface_property AvalonBus burstOnBurstBoundariesOnly false
set_interface_property AvalonBus burstcountUnits WORDS
set_interface_property AvalonBus explicitAddressSpan 0
set_interface_property AvalonBus holdTime 0
set_interface_property AvalonBus linewrapBursts false
set_interface_property AvalonBus maximumPendingReadTransactions 0
set_interface_property AvalonBus maximumPendingWriteTransactions 0
set_interface_property AvalonBus readLatency 0
set_interface_property AvalonBus readWaitTime 1
set_interface_property AvalonBus setupTime 0
set_interface_property AvalonBus timingUnits Cycles
set_interface_property AvalonBus writeWaitTime 0
set_interface_property AvalonBus ENABLED true
set_interface_property AvalonBus EXPORT_OF ""
set_interface_property AvalonBus PORT_NAME_MAP ""
set_interface_property AvalonBus CMSIS_SVD_VARIABLES ""
set_interface_property AvalonBus SVD_ADDRESS_GROUP ""

add_interface_port AvalonBus avs_s0_address address Input gaddrwidth
add_interface_port AvalonBus avs_s0_read read Input 1
add_interface_port AvalonBus avs_s0_readdata readdata Output gdatawidth
add_interface_port AvalonBus avs_s0_write write Input 1
add_interface_port AvalonBus avs_s0_writedata writedata Input gdatawidth
set_interface_assignment AvalonBus embeddedsw.configuration.isFlash 0
set_interface_assignment AvalonBus embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment AvalonBus embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment AvalonBus embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock_clk clk Input 1


# 
# connection point OpticalSensorPorts
# 
add_interface OpticalSensorPorts conduit end
set_interface_property OpticalSensorPorts associatedClock clock
set_interface_property OpticalSensorPorts associatedReset reset
set_interface_property OpticalSensorPorts ENABLED true
set_interface_property OpticalSensorPorts EXPORT_OF ""
set_interface_property OpticalSensorPorts PORT_NAME_MAP ""
set_interface_property OpticalSensorPorts CMSIS_SVD_VARIABLES ""
set_interface_property OpticalSensorPorts SVD_ADDRESS_GROUP ""

add_interface_port OpticalSensorPorts iMISO miso Input 1
add_interface_port OpticalSensorPorts oMOSI mosi Output 1
add_interface_port OpticalSensorPorts oSelect select Output 1
add_interface_port OpticalSensorPorts oSysClk sysclk Output 1
add_interface_port OpticalSensorPorts oNPD npd Output 1
add_interface_port OpticalSensorPorts oResetSensor sensorrst Output 1
add_interface_port OpticalSensorPorts oValidProductID validproductid Output 1
add_interface_port OpticalSensorPorts oMotionDetected motiondetected Output 1
add_interface_port OpticalSensorPorts oReadEnableDetected readenabledetected Output 1
add_interface_port OpticalSensorPorts oValidReadAccess validreadaccess Output 1
add_interface_port OpticalSensorPorts oErrorProductID errorproductid Output 1
add_interface_port OpticalSensorPorts oResetActive resetactive Output 1

