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
puts "Beginning placement and routing."
puts "--------------------------------------------------------------------------------"
# do design flow
execute_flow -compile 
#execute_module -tool map
#execute_module -tool fit
#execute_module -tool sta
#execute_module -tool asm
#execute_module -tool eda

# It's not possible to determine a specific file name for the files
# generated via quartus. We have to rename that
# file now in accordance with our file naming style.
file rename -force ./simulation/modelsim/${UnitName}.vho ../../../src/${UnitName}-structure-ea.vhd 
file rename -force ./simulation/modelsim/${UnitName}_vhd.sdo ../../../src/${UnitName}.sdf 
