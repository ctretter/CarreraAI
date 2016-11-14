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

if [expr ${DoingSynthesis}] then {


    if [file exists $env(XILINX)/bin/nt/ngdbuild.exe] then { 
        # host OS is windows
	    set XilinxBinDir $env(XILINX)/bin/nt/
    } else {
        #host OS is GNU/Linux
	    set XilinxBinDir $env(XILINX)/bin/lin/
	    # fix for precision2005 library fuckup
	    set env(LD_LIBRARY_PATH) $env(XILINX)/bin/lin:/lib/
    }
}


#***********************************************************************************
#*************  Synthesis and Layout  **********************************************
#***********************************************************************************

############## ChipManufacturer ###########################################
# purpose:  defines manufacturer of your target fpga
#
# examples: set ChipManufacturer "Xilinx"
#           set ChipManufacturer "Altera"
#
# misc:     this variable will help fhlow to decide which p&r tool you need
#
###########################################################################
set ChipManufacturer "Altera"

############## ChipFamiliy ################################################
# purpose:  denfies the family of your target fpga
#
# examples: set ChipFamily "Spartan2"
#           set ChipFamily "Cyclone"
#
# misc:     the exact string depends on how your p&r tool names your fpga
#
###########################################################################
set ChipFamily "Cyclone V"

############## ChipPart ###################################################
# purpose:  denfies the part number of your target fpga
#
# examples: set ChipPart "2s150"
#           set ChipPart "EP1C6"
#
# misc:     the exact string depends on how your p&r tool names your fpga
#
###########################################################################
set ChipPart "5CSEM"

############## ChipPackage ################################################
# purpose:  denfies the package of your target fpga
#
# examples: set ChipPackage "pq208"
#           set ChipPackage "T144C"
#
# misc:     the exact string depends on how your p&r tool names your fpga
#
###########################################################################
set ChipPackage "A5F31C"

############## ChipPackageSynplify ########################################
# purpose:  the package name for Synplicity differs from 
#           the package name for Precision and Quartus
#
# examples: set ChipPackageSynplify "PQ208"
#           set ChipPackageSynplify "TC144"
#
# misc:     this variable is only used if you use Synplify
#
###########################################################################
set ChipPackageSynplify "A5F31C"

############## ChipSpeedgrade #############################################
# purpose:  defines the speedgrade of your target fpga
#
# examples: set ChipSpeedgrade "5"
#           set ChipSpeedgrade "8"
#
###########################################################################
set ChipSpeedgrade "6"

############## ChipFrequency ##############################################
# purpose:  defines the frequency of the main frequency of your target fpga
#
# examples: set ChipFrequency "48"
#           set ChipFrequency "24"
#
# misc:     there is no support vor more than one frequency yet, sry
#
###########################################################################
set ChipFrequency "24"


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
{oSEG0[0] V16 0}
}

# This is the general pin load (capacity) in pF
set PinLoad 100
