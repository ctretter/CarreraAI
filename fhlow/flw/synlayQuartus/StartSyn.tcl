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

if {$argc == 0} {
	puts "Failure! No argument for StartSyn.tcl!"
	exit
}
set Argument [lindex $argv 0]

set PathLocalSynLayDir [pwd]
set PathLocalSynDir ${PathLocalSynLayDir}/synlayResults
set PathUnitToRoot ../../../..
set PathGlobalSynLayDir ${PathLocalSynLayDir}/${PathUnitToRoot}/flw/synlayQuartus/

# do synthesis and then start gui
if [string equal $Argument 1] {
	
	set DoLay 0

	source ${PathGlobalSynLayDir}/DoIt.tcl

	puts "-------------------------------------------------------------"
	puts "everything was sucessfull! press the Enter-Key to continue..."
	puts "-------------------------------------------------------------"
	gets stdin
}

# do everything on shell
if [string equal $Argument 2] {

	set DoLay 1

	source ${PathGlobalSynLayDir}/DoIt.tcl

	puts "-------------------------------------------------------------"
	puts "everything was sucessfull! press the Enter-Key to continue..."
	puts "-------------------------------------------------------------"
	gets stdin
}

# do synthesis and then start gui
if [string equal $Argument 3] {

	set DoLay 0

	source ${PathGlobalSynLayDir}/DoIt.tcl

	#open quartus gui
	exec quartus ${UnitName}
}

# do everything and then start gui
if [string equal $Argument 4] {

	set DoLay 1

	source ${PathGlobalSynLayDir}/DoIt.tcl

	#open quartus gui
	exec quartus ${UnitName}
}