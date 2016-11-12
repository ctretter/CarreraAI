#-----------------------------------------------------------------------------------
#Copyright (C) 2005 Christian Kitzler, Simon Lasselsberger, Markus Pfaff
# christian.kitzler@fh-hagenberg.at
# simon.lasselsberger@fh-hagenberg.at
# markus.pfaff@fh-hagenberg.at
#
#This file is part of the fhlow - scripting environment Library.
#
#The fhlow - scripting environment Library is free software; you can redistribute it
#and/or modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2 of the
#License, or (at your option) any later version.
#
#fhlow - scripting environment is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with fhlow - scripting environment; if not, write to the Free Software
#Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#-----------------------------------------------------------------------------------

#######################
# FHLOW_VERSION = 1.2 #
#######################


puts "--------------------------------------------------------------------------------"
puts "Setting synthesis constraints."
puts "--------------------------------------------------------------------------------"

# define Pins
foreach {Pin} ${Pins} {
    set SignalName [lindex ${Pin} 0]
    set PinNr [lindex ${Pin} 1]
    set PullUp [lindex ${Pin} 2]

    set_location_assignment PIN_${PinNr} -to ${SignalName}    
    # define Pullups on Inputs
    if [expr $PullUp] {
	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to ${SignalName}
    }
}

# set all unused pins to input and tri-stated
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED WITH WEAK PULL-UP"
set_global_assignment -name RESERVE_ASDO_AFTER_CONFIGURATION "AS INPUT TRI-STATED"
#set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"

# Define Modelsim as eda_simulation_tool so that we get an netlist
# for postlayout simulation
set_global_assignment -section_id {${UnitName}} -name {EDA_SIMULATION_TOOL} {MODELSIM (VHDL OUTPUT FROM QUARTUS II)}

set_global_assignment -name FMAX_REQUIREMENT ${ChipFrequency}MHz
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name SDC_FILE ${PathGlobalSynLayDir}/TimingConstraints.tcl

set_global_assignment -name GENERATE_RBF_FILE ON
