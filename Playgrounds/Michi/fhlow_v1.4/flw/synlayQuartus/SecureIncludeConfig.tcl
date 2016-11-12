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



#searching for config.tcl on root level
if [file exists ${PathLocalSynLayDir}/${PathUnitToRoot}/Config.tcl] then {
    set DoingSynthesis 0
    source ${PathLocalSynLayDir}/${PathUnitToRoot}/Config.tcl
}
#searching for config.tcl on group level
if [file exists ${PathLocalSynLayDir}/../../../Config.tcl] then {
    source ${PathLocalSynLayDir}/../../../Config.tcl
}
#doing config.tcl in unit
source ${PathLocalSynLayDir}/../../Config.tcl


#Check if Config.tcl's are correct

# Verify that Variable Packages exists
if [expr ![info exists Packages]] then {
    puts "Packages: Variable Packages does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable Units exists
if [expr ![info exists Units]] then {
    puts "Units: Variable Units does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ForeignUnits exists
if [expr ![info exists ForeignUnits]] then {
    puts "ForeignUnits: Variable ForeignUnits does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ChipManufacturer exists
if [expr ![info exists ChipManufacturer]] then {
    puts "ChipManufacturer: Variable ChipManufacturer does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ChipFamily exists
if [expr ![info exists ChipFamily]] then {
    puts "ChipFamily: Variable ChipFamily does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ChipPart exists
if [expr ![info exists ChipPart]] then {
    puts "ChipPart: Variable ChipPart does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ChipPackage exists
if [expr ![info exists ChipPackage]] then {
    puts "ChipPackage: Variable ChipPackage does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ChipSpeedgrade exists
if [expr ![info exists ChipSpeedgrade]] then {
    puts "ChipSpeedgrade: Variable ChipSpeedgrade does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable ChipFrequency exists
if [expr ![info exists ChipFrequency]] then {
    puts "ChipFrequency: Variable ChipFrequency does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Variable Pins exists
if [expr ![info exists Pins]] then {
    puts "Pins: Variable Pins does not exist in your Config.tcl!"
    after 5000
    exit
}

# Verify that Load capacitance exists
if [expr ![info exists PinLoad]] then {
    puts "PinLoad: Variable PinLoad does not exist in your Config.tcl!"
    after 5000
    exit
}
