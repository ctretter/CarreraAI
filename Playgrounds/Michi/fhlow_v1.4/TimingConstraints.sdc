# Clock constraints
create_clock -name "SYSCLK" -period 40ns [get_ports {iClk}] -waveform {0.000ns 20.000ns}

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
#derive_clock_uncertainty
# Not supported for family Cyclone II

# tsu/th constraints
#set_input_delay -clock "SYSCLK" -max ...ns [get_ports {myPort1}] 
#set_input_delay -clock "SYSCLK" -min ...ns [get_ports {myPort1}] 


# tco constraints
#set_output_delay -clock "SYSCLK" -max ...ns [get_ports {myPort2}] 
#set_output_delay -clock "SYSCLK" -min -...ns [get_ports {myPort2}] 
