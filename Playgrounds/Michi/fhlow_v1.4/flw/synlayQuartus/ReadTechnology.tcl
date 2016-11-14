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
puts "Setting up technology database."
puts "--------------------------------------------------------------------------------"

# define Hardware
set_global_assignment -name FAMILY ${ChipFamily}
set_global_assignment -name DEVICE_FILTER_SPEED_GRADE ${ChipSpeedgrade}
#set_global_assignment -name DEVICE EP2C20F484C7
set_global_assignment -name DEVICE ${ChipPart}${ChipPackage}${ChipSpeedgrade}

# pin load
set_global_assignment -name OUTPUT_PIN_LOAD ${PinLoad} -section_id "3.3-V LVTTL"



