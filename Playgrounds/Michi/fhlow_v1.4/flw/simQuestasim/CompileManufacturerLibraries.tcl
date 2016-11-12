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

puts ""
puts "--------------------------------------------------------------------------------"
puts "   Begin manufacturer libraries handling."
puts "--------------------------------------------------------------------------------"
puts ""

if [expr [file exists ${PathUnitToRoot}/lib/lib${ChipManufacturer}/ConfigLib.tcl]] {
    catch { source ${PathUnitToRoot}/lib/lib${ChipManufacturer}/ConfigLib.tcl}
} else {
    puts "~~~~~~~~~~~~~~~~ Error ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "~~ There is something wrong with your Library!          ~~"
    puts "~~ <fhlowroot>/lib/lib${ChipManufacturer}/ConfigLib.tcl ~~"
    puts "~~ not found.                                           ~~"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    exit
    return -1;
}

foreach {Lib} $LibFiles {
    set LibName [lindex $Lib 0]
    set Files [lindex $Lib 1]

    
    if [expr ![file exists ${PathGlobalSimDir}/${LibName}]] then {
        
        vlib ${PathGlobalSimDir}/${LibName}
        vmap ${LibName} ${PathGlobalSimDir}/${LibName}
        
        puts "---------------------------- start of compilation ------------------------------"
        foreach {File} $Files {
            puts "Compiling    library file                                   $LibName, $File"
            catch "vcom -quiet -93 -work ${LibName} ${PathUnitToRoot}/lib/lib${ChipManufacturer}/src/$File" comperror
        }
        puts "----------------------------- end of compilation -------------------------------"
        puts ""
        puts ""
    } else {
        
        puts "--------------------------------------------------------------------------------"
        puts "-- There is no need to compile ${LibName}, <fhlowroot>/flw/simQuestasim/${LibName} exists!"
        puts "-- If you want to renew this library, you have to delete the directory containing the library."
        puts "--------------------------------------------------------------------------------"
    }
}

puts ""
puts "--------------------------------------------------------------------------------"
puts "   End manufacturer libraries handling."
puts "--------------------------------------------------------------------------------"
puts ""
