vcom -work work ./../VHDL/pgkGlobal/Global-p.vhd
vcom -work work ./../VHDL/unitsForSim/Oscillator-e.vhd
vcom -work work ./../VHDL/unitsForSim/Oscillator-Bhv-a.vhd
vcom -work work ./../VHDL/unitsForSim/PwrOnReset-e.vhd
vcom -work work ./../VHDL/unitsForSim/PwrOnReset-Bhv-a.vhd
vcom -work work ./../VHDL/unitStrobeGen/src/StrobeGen-e.vhd
vcom -work work ./../VHDL/Motor_control/unitStrobeGen/src/StrobeGen-Rtl-a.vhd
vcom -work work ./CarreraProtocol-e.vhd
vcom -work work ./CarreraProtocol-Rtl-a.vhd
#testbench:simulation top level
vcom -work work ./tbCarreraProtocol.vhd

#QSYS Top level
#vcom -work work ./CarreraProtocolDecoder.vhd