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

####################################################################################
#                                                                                  #
#    you can find more documentation about FHLOW at http://esther.lisuna.org/      #
#                                                                                  #
####################################################################################


#***********************************************************************************
#*************  General Stuff  *****************************************************
#***********************************************************************************

############## IP Cores ##################################################
# purpose: declares the ip cores which are needed by this unit
# 
# syntax:  
#          append IPCores {
#              {SomeIPCore}
#              {AnotherIPCore}
#          }
#          
#          -- SomeIPCore:   name of the unit which contains your IP core
#        
#
# misc:    DO NOT ADD "unit" TO YOUR IP CORE NAME!!!
#          
##########################################################################
append IPCores {
}

############## Packages ##################################################
# purpose: declares the packages which are needed by this unit
# 
# syntax:  
#          append Packages {
#              {SomeGroup SomePackage}
#              {AnotherGroup AnotherPackage}
#          }
#          
#          -- SomeGroup:   name of the group which contains your packages
#          -- SomePackage: name of the package your unit needs
#
# misc:    DO NOT ADD "grp" OR "pkg" TO YOUR GROUP/PACKAGE NAME!!!
#          
##########################################################################
append Packages {
	{Packages Global}
}


############## Units #########################################################
# purpose: declares the units which are needed by this unit
#
# syntax:
#          append Units {
#              {SomeGroup SomeUnit SomeArchitecture}
#              {AnotherGroup AnotherUnit AnotherArchtecture}
#          }
#
#          -- SomeGroup:        name of the group which contains a unit
#          -- SomeUnit:         name of a unit inside SomeGroup
#          -- SomeArchitecture: name of the architecture of SomeUnit
#
# misc:    DO NOT ADD "grp" OR "unit" TO YOUR GROUP/UNIT NAME!!!
#          The last unit will be used as top unit automatically!
#
##############################################################################
append Units {
	{StrobesClocks StrobeGen Rtl}
    {Sensors OpticalSensorCommunicator Rtl}
	{BoardTest TestOpticalSensor Rtl}
}

############## Behavioral Units #################################################
# purpose: declares the behavioral units which are needed by this unit
#
# syntax:
#          append BhvUnits {
#              {SomeGroup SomeUnit SomeBhvArchitecture}
#              {AnotherGroup AnotherUnit AnotherBhvArchtecture}
#          }
#
#          -- SomeGroup:           name of the group which contains your packages
#          -- SomeUnit:            name of a unit your unit needs
#          -- SomeBhvArchitecture: name of the bhv-architecture of SomeUnit
#
# misc:    DO NOT ADD "grp" OR "unit" TO YOUR GROUP/UNIT NAME!!!
#          These units won't be used for synthesis
#
#################################################################################
append BhvUnits {
}


############## ForeignUnits #########################################################
# purpose: declares the units which are needed by this unit but do not follow fhlow file structure
#
# syntax:
#          append ForeignUnits {
#              {SomeGroup SomeUnit SomeFile}
#              {AnotherGroup AnotherUnit AnotherArchtecture}
#          }
#
#          -- SomeGroup:        name of the group which contains a unit
#          -- SomeUnit:         name of a unit inside SomeGroup
#          -- SomeFile:         name of the source file of SomeUnit (path relative to unit path)
#
# misc:    DO NOT ADD "grp" OR "unit" TO YOUR GROUP/UNIT NAME!!!
#
##############################################################################
append ForeignUnits {
}


############## Testbenches ############################################################
# purpose: declare one ore more testbenches for this unit
#
# syntax:
#          set tbUnits {
#              {SomeGroup SomeUnit SomeTestbenchArchitecture}
#              {AnotherGroup AnotherUnit AnotherTestbenchArchitecture}
#          }
#
#          -- SomeGroup:                 name of the group which contains your packages
#          -- SomeUnit:                  name of a unit inside SomeGroup
#          -- SomeTestbenchArchitecture: name of the testbench-architecture of SomeUnit
#
# misc:     DO NOT ADD "grp" OR "unit" TO YOUR GROUP/UNIT NAME!!!
#           DO NOT ADD "tb" TO YOUR TESTBENCH-ARCHITECTURE!!!
#           The last unit will be loaded for simulation automatically!
#                      
#######################################################################################
set tbUnits  {
}



#***********************************************************************************
#*************  Simulation  ********************************************************
#***********************************************************************************

############## Simulation Time #######################
# purpose:  how long do you want to simulate?
#
# examples: set SimTime "100 fs"
#           set SimTime "10 ns"
#
######################################################
set SimTime "2200 us"


#***********************************************************************************
#*************  Pin Settings  ******************************************************
#***********************************************************************************

############## Pins #######################################################
# purpose:  defines to which pins your output signals are connected and
#           whether they should get a pullup or not. So you don't have to 
#           care about how to write a .ucf-file or so. :)
#
# syntax:
#           set Pins {
#               {oTest 88 0}
#               {iTest 23 1}
#           }
#           
#           -- { oTest          88                 0          }
#           --  /^^^^^\   /^^^^^^^^^^^\   /^^^^^^^^^^^^^^^^^^\
#           --  Signal    PinNr on FPGA   Pullup (1=yes, 0=no)
#
# misc:     WARNING: be very careful with this setting!!! 
#           TIPP:    an check your pad reports!
#
###########################################################################

# This is the general pin setting for use of the SandboxM (Altera DE1) as
# a DSP system.
set Pins {
}
