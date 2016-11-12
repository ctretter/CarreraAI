set_global_assignment -entity "AvalonSPI" -library "lib_AvalonSPI" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "AvalonSPI" -library "lib_AvalonSPI" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "AvalonSPI" -library "lib_AvalonSPI" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_AvalonSPI" -name SPD_FILE [file join $::quartus(sip_path) "../AvalonSPI.spd"]
set_global_assignment -library "lib_AvalonSPI" -name MISC_FILE [file join $::quartus(sip_path) "../../AvalonSPI.qsys"]

set_global_assignment -library "lib_AvalonSPI" -name MISC_FILE [file join $::quartus(sip_path) "AvalonSPI.vhd"]
set_global_assignment -library "lib_AvalonSPI" -name MISC_FILE [file join $::quartus(sip_path) "submodules/AvalonSPI_spislave_0.vho"]
