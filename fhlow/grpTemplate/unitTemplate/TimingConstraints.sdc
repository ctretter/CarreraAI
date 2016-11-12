# tsu/th constraints
#set_input_delay -clock "SYSCLK" -max ...ns [get_ports {myPort1}] 
#set_input_delay -clock "SYSCLK" -min ...ns [get_ports {myPort1}] 


# tco constraints
#set_output_delay -clock "SYSCLK" -max ...ns [get_ports {myPort2}] 
#set_output_delay -clock "SYSCLK" -min -...ns [get_ports {myPort2}] 
