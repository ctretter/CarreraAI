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
if {$argc == 0} then {
	puts "Failure! No argument for StartSim.do!"
	exit
}
set FullArgument [lindex $argv 1]
set Argument [lindex $FullArgument 2]

#######################
# PostSynthesisSDFSimShell
#######################
if {$Argument == "5"} then {
	catch {
		set Shell 1
		set PostSynNetSim 0
		set PostSynSDFSim 1

		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]

		do ${PathGlobalSimDir}/SecureIncludeConfig.tcl
			
		#Compile necessary Libraries if not yet compiled!
		do ${PathGlobalSimDir}/CompileManufacturerLibraries.tcl	
		
		# compile
		set Argument 2
	}
}

#######################
# PostSynthesisNetSimShell
#######################
if {$Argument == "6"} then {
	catch {
		set Shell 1
		set PostLayoutSim 1


		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]

		do ${PathGlobalSimDir}/SecureIncludeConfig.tcl


		#Compile necessary Libraries if not yet compiled!
		do ${PathGlobalSimDir}/CompileManufacturerLibraries.tcl	
		
		# compile
		set Argument 2
	}
}

#######################
# PostLayoutSimShell
#######################
if {$Argument == "7"} then {
	catch {
		set Shell 1

		set PostLayoutSim 1

		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]

		do ${PathGlobalSimDir}/SecureIncludeConfig.tcl

		#Compile necessary Libraries if not yet compiled!
		do ${PathGlobalSimDir}/CompileManufacturerLibraries.tcl	
		
		# compile
		set Argument 2
	}
}

#######################
# PostSynthesisSDFSimGui
#######################
if {$Argument == "8"} then {
	catch {
		set PostSynNetSim 0
		set PostSynSDFSim 1

		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]

		do ${PathGlobalSimDir}/SecureIncludeConfig.tcl

		
		#Compile necessary Libraries if not yet compiled!
		do ${PathGlobalSimDir}/CompileManufacturerLibraries.tcl	
		
		# compile
		set Argument 2
	}
}

#######################
# PostSynthesisNetSimGui
#######################
if {$Argument == "9"} then {
	catch {
		set PostSynNetSim 1
		set PostSynSDFSim 0

		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]

		do ${PathGlobalSimDir}/SecureIncludeConfig.tcl

		#Compile necessary Libraries if not yet compiled!
		do ${PathGlobalSimDir}/CompileManufacturerLibraries.tcl	
		
		# compile
		set Argument 2
	}
}

#######################
# PostLayoutSimGui
#######################
if {$Argument == "10"} then {
	catch {
		set PostLayoutSim 1

		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]

		do ${PathGlobalSimDir}/SecureIncludeConfig.tcl

		
		#Compile necessary Libraries if not yet compiled!
		do ${PathGlobalSimDir}/CompileManufacturerLibraries.tcl	
		
		# compile
		set Argument 2
	}
}




#######################
# first part CompShell
#######################
if {$Argument == "1"} then {
	
	set test ""

	set Shell 1
		
	puts ""
	puts ""
	puts "--------------------------------------------------------------------------------"
	puts "    Begin script for Questasim."
	puts "--------------------------------------------------------------------------------"
	puts ""
	puts "                   ###########################################"
	puts "                   #      using fhlow version 1.3alpha       #"
	puts "                   ###########################################"
	puts ""
	puts ""
}

#######################
# first part CompSimShell
#######################
if {$Argument == "2"} then {
	set test ""
	catch {
		set Shell 1
	} test
}

#######################
# first part CompSim
#######################
if {
	$Argument == "4" 
	|| $Argument == "2"
	} then {

	catch {
		puts ""
		puts ""
		puts "--------------------------------------------------------------------------------"
		puts "    Begin script for Questasim."
		puts "--------------------------------------------------------------------------------"
		puts ""
		puts "                   ###########################################"
		puts "                   #      using fhlow version                #"
		puts "                   ###########################################"
		puts ""
		puts ""

		#setting the paths for files and tools

		set PathLocalSimDir .
		set PathUnitToRoot ../../../..
		set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]


		# compile
		#source ${PathGlobalSimDir}/Comp.do
	}
}

#######################
# Comp
#######################
catch {

	#Setting Pathes for tools and files
	set PathLocalSimDir .
	set PathUnitToRoot ../../../..
	set PathGlobalSimDir ${PathUnitToRoot}/flw/[file tail [pwd]]
	
	# GET QUARTUS INSTALL DIR TO EXECUTE IP CORE SIMULATION SCRIPT
	source ${PathUnitToRoot}/InstallDirQuartus.tcl

	source ${PathGlobalSimDir}/SecureIncludeConfig.tcl

	#look for testbench
	if [info exists tbUnits] then {                                                           
		puts "---------------------------- start of compilation ------------------------------"
		
		source ${PathGlobalSimDir}/CompileVhdlSource.do
		source ${PathGlobalSimDir}/UnsetVariables.tcl
		
		puts "----------------------------- end of compilation -------------------------------"
		puts ""
		puts ""

		# signalize configuration is ok
		set ConfigError 0

	} else {
		# look if shell or gui is used
		if [info exists Shell] then {
			puts "Set tbUnits in Config.tcl at least to {}! Configuration Error!"
		} else {
			tk_messageBox -message "Set tbUnits in Config.tcl at least to {}!" -title "Configuration Error" -icon error
		}

		# signalize configuration error
		set ConfigError 1
	}
} test


#######################
# Create SimCommand.tcl
# for simulation only
#######################
if {
	$Argument == "4" 
	|| $Argument == "2"
	} then {
		if [info exists IPCores] then {
			if {[llength $IPCores] > 0} then {
				cd libraries
				if [info exists LibList] then {
					unset LibList
				}
				set DirList [glob -type d *]
				foreach Dir $DirList {

					append LibList "-L " $Dir " "
				}
				puts $LibList
				cd ..
				
				if [info exists PostLayoutSim] {
					set DataToWrite "vsim -quiet -novopt ${LibList}-sdfmax /DUT=${PathLocalSimDir}/../../src/${UnitName}.sdf -noglitch -t ps work.tb${tbName}"
				} else {
					set DataToWrite "vsim -quiet -novopt ${LibList}-t ps work.tb${tbName}"
				}
				set FileName SimCommand.tcl
				set FileID [open $FileName "w"]
				puts -nonewline $FileID $DataToWrite
				close $FileID
			} else {
				if [info exists PostLayoutSim] {
					set DataToWrite "vsim -quiet -novopt -sdfmax /DUT=${PathLocalSimDir}/../../src/${UnitName}.sdf -noglitch -t ps work.tb${tbName}"
				} else {
					set DataToWrite "vsim -quiet -novopt -t ps work.tb${tbName}"
				}
				set FileName SimCommand.tcl
				set FileID [open $FileName "w"]
				puts -nonewline $FileID $DataToWrite
				close $FileID
			}
		}
}


#######################
# second part of CompSim
#######################
if {
	$Argument == "4" 
	|| $Argument == "2"
	} then {
	catch {
		# look if we had an error on compiling with current configuration
		if [expr $ConfigError] then {
			do ${PathGlobalSimDir}/UnsetVariables.tcl
		} else {

			# compilation worked fine
			source ${PathLocalSimDir}/../../Config.tcl
			if [expr $tbSuccess] then {
				
				if [expr ! [info exists UnitName]] then {
					set UnitName IdoNotExist
				}
				
				
				if [info exists PostLayoutSim] {
					if [file exists ${PathLocalSimDir}/../../src/${UnitName}.sdf] then {
						puts ""
						puts "---------- start of simulation (using delay information form SDF file) ---------"
						puts ""
						
						
						do ${PathLocalSimDir}/${FileName}
						source ${PathLocalSimDir}/Wave.do
						
						set DurationBegin [clock seconds]
						source ${PathGlobalSimDir}/RunSim.do
						
						puts ""
						puts "----------- end of simulation (using delay information form SDF file) ----------"
						puts ""
						puts ""
					} else {
						puts "no sdf file found"
					}
				} else {

					puts ""
					puts "---------------------------- start of simulation -------------------------------"
					puts ""

					# simulate either with custom Wave.do
					# or with default Wave.do
					if [file exists ${PathLocalSimDir}/Wave.do] then {
					
						
						do ${PathLocalSimDir}/${FileName}
						source ${PathLocalSimDir}/Wave.do
						
						set DurationBegin [clock seconds]
						source ${PathGlobalSimDir}/RunSim.do
						
					} else {
					
						
						do ${PathLocalSimDir}/${FileName}
						source ${PathGlobalSimDir}/Wave.do
						
						set DurationBegin [clock seconds]
						source ${PathGlobalSimDir}/RunSim.do
					}
					
					puts ""
					puts "----------------------------- end of simulation --------------------------------"
					puts ""
					puts ""
					
				}
				
				# delete generated tcl script
				file delete ${FileName}
				
				set DurationEnd [clock seconds]
				set Duration [expr ${DurationEnd} - ${DurationBegin}]
				
				if [info exists Shell] then {
					puts "Duration of Simulation: ${Duration} sec"
					
				} else {		
					# Display Simulation Duration in a MessageBox
					tk_messageBox -message "${Duration} sec                                     " \
						-title "Duration of Simulation" 
				}
				
			} else {
				# tell user that something went wrong with his testbench
				if [info exists Shell] then {
					puts "Specified Testbench was not found!"
					puts "Check Config.tcl!" 
					puts "Can't Simulate!"
				} else {
					tk_messageBox -message "Specified Testbench was not found!\nCheck Config.tcl!\nCan't Simulate!" \
						-title "Testbench Warning" -icon warning
				}
			}
			# unset tcl variables
			source $PathGlobalSimDir/UnsetVariables.tcl
		}
		puts ""
		puts ""
		puts "--------------------------------------------------------------------------------"
		puts "    End of script for Questasim."
		puts "--------------------------------------------------------------------------------"
		puts ""
		puts ""
		
		if {$Argument == "2"} then {
			exit
		}
	}
}
			
#######################
# second part CompShell	
#######################
if {$Argument == "1"} then {
	set test ""

	puts ""
	puts ""
	puts "--------------------------------------------------------------------------------"
	puts "    End of script for Questasim."
	puts "--------------------------------------------------------------------------------"
	puts ""
	puts ""

	###################
	# TODO: windos linux unterscheidung wegen exit!!!
	##################

	exit
}
