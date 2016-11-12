set_global_assignment -entity "AlteraPLL" -library "lib_AlteraPLL" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "AlteraPLL" -library "lib_AlteraPLL" -name IP_TOOL_VERSION "15.0"
set_global_assignment -entity "AlteraPLL" -library "lib_AlteraPLL" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_AlteraPLL" -name SPD_FILE [file join $::quartus(sip_path) "AlteraPLL.spd"]

set_global_assignment -library "lib_AlteraPLL" -name MISC_FILE [file join $::quartus(sip_path) "AlteraPLL_sim/AlteraPLL.vho"]
