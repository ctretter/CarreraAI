
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 15.0 145 win32 2016.08.23.14:15:16

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "AvalonJTAG2Memory"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/15.0/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
  ensure_lib                       ./libraries/altera/               
  vmap       altera                ./libraries/altera/               
  ensure_lib                       ./libraries/lpm/                  
  vmap       lpm                   ./libraries/lpm/                  
  ensure_lib                       ./libraries/sgate/                
  vmap       sgate                 ./libraries/sgate/                
  ensure_lib                       ./libraries/altera_mf/            
  vmap       altera_mf             ./libraries/altera_mf/            
  ensure_lib                       ./libraries/altera_lnsim/         
  vmap       altera_lnsim          ./libraries/altera_lnsim/         
  ensure_lib                       ./libraries/cyclonev/             
  vmap       cyclonev              ./libraries/cyclonev/             
}
ensure_lib                                  ./libraries/rst_controller/                  
vmap       rst_controller                   ./libraries/rst_controller/                  
ensure_lib                                  ./libraries/p2b_adapter/                     
vmap       p2b_adapter                      ./libraries/p2b_adapter/                     
ensure_lib                                  ./libraries/b2p_adapter/                     
vmap       b2p_adapter                      ./libraries/b2p_adapter/                     
ensure_lib                                  ./libraries/transacto/                       
vmap       transacto                        ./libraries/transacto/                       
ensure_lib                                  ./libraries/p2b/                             
vmap       p2b                              ./libraries/p2b/                             
ensure_lib                                  ./libraries/b2p/                             
vmap       b2p                              ./libraries/b2p/                             
ensure_lib                                  ./libraries/fifo/                            
vmap       fifo                             ./libraries/fifo/                            
ensure_lib                                  ./libraries/timing_adt/                      
vmap       timing_adt                       ./libraries/timing_adt/                      
ensure_lib                                  ./libraries/jtag_phy_embedded_in_jtag_master/
vmap       jtag_phy_embedded_in_jtag_master ./libraries/jtag_phy_embedded_in_jtag_master/
ensure_lib                                  ./libraries/master_0/                        
vmap       master_0                         ./libraries/master_0/                        

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"           -work altera_lnsim_ver     
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"            -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"        -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_for_vhdl.v"          -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"       -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_for_vhdl.v"     -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v"   -work cyclonev_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_for_vhdl.v" -work cyclonev_pcie_hip_ver
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                 -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"             -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"                -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"             -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"          -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                     -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                               -work lpm                  
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                              -work lpm                  
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                            -work sgate                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                 -work sgate                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                  -work altera_mf            
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                             -work altera_mf            
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"               -work altera_lnsim         
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                        -work cyclonev             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                   -work cyclonev             
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_controller.v"           -work rst_controller                  
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_synchronizer.v"         -work rst_controller                  
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_p2b_adapter.vho" -work p2b_adapter                     
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_b2p_adapter.vho" -work b2p_adapter                     
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_transacto.vho"   -work transacto                       
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_p2b.vho"         -work p2b                             
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_b2p.vho"         -work b2p                             
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_fifo.vho"        -work fifo                            
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_timing_adt.vho"  -work timing_adt                      
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"          -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                 -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                     -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                    -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"           -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"           -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"            -work jtag_phy_embedded_in_jtag_master
  vlog     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"           -work jtag_phy_embedded_in_jtag_master
  vlog -sv "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"         -work jtag_phy_embedded_in_jtag_master
  vcom     "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0.vhd"             -work master_0                        
  vcom     "$QSYS_SIMDIR/AvalonJTAG2Memory.vhd"                                                                       
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS -L work -L work_lib -L rst_controller -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L master_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS -L work -L work_lib -L rst_controller -L p2b_adapter -L b2p_adapter -L transacto -L p2b -L b2p -L fifo -L timing_adt -L jtag_phy_embedded_in_jtag_master -L master_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
