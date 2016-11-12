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
puts "Beginning to add all IP cores and analyze all VHDL descriptions."
puts "--------------------------------------------------------------------------------"

# Add all IP cores
foreach {IPCore} $IPCores {
    set UnitName [lindex ${IPCore} 0]
	# get files from MegaWizard IP core
	if [file exist ${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}.vhd] then {
		set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}.vhd"
		set_global_assignment -name QIP_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}.qip"
		set_global_assignment -name SIP_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}.sip"
	# get files from Qsys IP core
	} else {
		set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}/synthesis/${UnitName}.vhd"
		set_global_assignment -name QIP_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}/synthesis/${UnitName}.qip"
		set_global_assignment -name SIP_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grpIPCores/unit${UnitName}/${UnitName}/simulation/${UnitName}.sip"
	}
}

# Analyze all packages.
foreach {Package} $Packages {
    set GrpName [lindex ${Package} 0]
    set PackageName [lindex ${Package} 1]
    set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/pkg${PackageName}/src/${PackageName}-p.vhd"
}

#Compiling ForeignUnits
foreach {ForeignUnit} $ForeignUnits {
    set GrpName [lindex ${ForeignUnit} 0]
    set ForeignUnitName [lindex ${ForeignUnit} 1]
    set ForeignUnitPath [lindex ${ForeignUnit} 2]
    set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${ForeignUnitName}/${ForeignUnitPath}"
}

# Analyze all entities before analyzing the architectures allows any
# ordering of units in the unit list $Units.
foreach {Unit} $Units {
    set GrpName [lindex ${Unit} 0]
    set UnitName [lindex ${Unit} 1]
    set EntityName $UnitName
    # If there is a package containing definitions for the unit compile it.
    if [file exists "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/If${EntityName}-p.vhd"] then {
    	set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/If${EntityName}-p.vhd"
    } 
	
    if [file exists "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-e.vhd"] then {
	    set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-e.vhd"
    }
	
	
}

# Analyze all architectures after all entities are analyzed.
foreach {Unit} $Units {
    set GrpName [lindex ${Unit} 0]
    set UnitName [lindex ${Unit} 1]
    set EntityName $UnitName
    set ArchitectureName [lindex ${Unit} 2]
    if [file exists "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-${ArchitectureName}-ea.vhd"] then {
    	set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-${ArchitectureName}-ea.vhd"
    } elseif [file exists "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-${ArchitectureName}-eac.vhd"] then {
	    set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-${ArchitectureName}-eac.vhd"
    } else {
    	set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-${ArchitectureName}-a.vhd"
    }
}

# Analyze all configurations - if they exist - after all architectures are analyzed.
foreach {Unit} $Units {
    set GrpName [lindex ${Unit} 0]
    set UnitName [lindex ${Unit} 1]
    set EntityName $UnitName
    set ArchitectureName [lindex ${Unit} 2]
    if [file exists "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/If${EntityName}-c.vhd"] then {
        set_global_assignment -name VHDL_FILE "${PathLocalSynLayDir}/${PathUnitToRoot}/grp${GrpName}/unit${UnitName}/src/${EntityName}-${ArchitectureName}-c.vhd"
    }
}

# define top level entity
set_global_assignment -name TOP_LEVEL_ENTITY ${UnitName}

export_assignments

puts "Analyzation of VHDL descriptions finished."

