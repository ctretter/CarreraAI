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

catch {
    #searching for config.tcl on group level
    if [file exists ${PathUnitToRoot}/Config.tcl] then {
        set DoingSynthesis 0
        source ${PathUnitToRoot}/Config.tcl
    }
    #searching for config.tcl on unit level
    if [file exists ../../../Config.tcl] then {
        source ../../../Config.tcl
    }
    #doing config.tcl in unit
    source ${PathLocalSimDir}/../../Config.tcl


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

    # Verify that Variable BhvUnits exists
    if [expr ![info exists BhvUnits]] then {
        puts "BhvUnits: Variable ForeignUnits does not exist in your Config.tcl!"
        after 5000
        exit
    }

    # Verify that Variable tbUnits exists
    if [expr ![info exists tbUnits]] then {
        puts "tbUnits: Variable tbUnits does not exist in your Config.tcl!"
        after 5000
        exit
    }

    # Verify that Variable SimTime exists
    if [expr ![info exists SimTime]] then {
        puts "SimTime: Variable SimTime does not exist in your Config.tcl!"
        after 5000
        exit
    }
}
