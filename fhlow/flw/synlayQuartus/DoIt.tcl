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


# Load Quartus II Tcl Project package
package require ::quartus::project
# Load Quartus II Tcl Flow package
package require ::quartus::flow

# set Pathes
set PathLocalSynLayDir [pwd]
set PathLocalSynDir ${PathLocalSynLayDir}/synlayResults
set PathUnitToRoot ../../../..
set PathGlobalSynLayDir ${PathLocalSynLayDir}/${PathUnitToRoot}/flw/synlayQuartus/

set DoingSynthesis 0

# Packages, Units, Definitions for your Design will be read!
source ${PathGlobalSynLayDir}/SecureIncludeConfig.tcl

#delete Synthesis Directory
if [file exists ${PathLocalSynDir}] then {
     file delete -force ${PathLocalSynDir}
}
#Make Synthesis Directory
file mkdir synlayResults
cd ${PathLocalSynDir}

#Search for TopLevelEntity-Name
source ${PathGlobalSynLayDir}/SearchUnitName.tcl

#create new project
source ${PathGlobalSynLayDir}/SetupProject.tcl
# add vhdl files to project
source ${PathGlobalSynLayDir}/AnalyzeVhdlSources.tcl
# handling Technology
source ${PathGlobalSynLayDir}/ReadTechnology.tcl
# setting synthesis constraints
source ${PathGlobalSynLayDir}/SynConstraints.tcl
# do whatever user wants to do
if [file exists ${PathLocalSynLayDir}/MyAddons.tcl] then {
	source ${PathLocalSynLayDir}/MyAddons.tcl
}

export_assignments
if [expr ${DoLay}] {
    # Analyze, Synthesis, Place and Route
    source ${PathGlobalSynLayDir}/PlaceAndRoute.tcl
} else {
    # Analyze and Synthesis
    source ${PathGlobalSynLayDir}/TranslateRtl.tcl
}

# Close project
#project_close

