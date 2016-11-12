
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

# ACDS 15.0 145 win32 2016.08.23.14:15:17

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="AvalonJTAG2Memory"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/altera/15.0/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/p2b_adapter/
mkdir -p ./libraries/b2p_adapter/
mkdir -p ./libraries/transacto/
mkdir -p ./libraries/p2b/
mkdir -p ./libraries/b2p/
mkdir -p ./libraries/fifo/
mkdir -p ./libraries/timing_adt/
mkdir -p ./libraries/jtag_phy_embedded_in_jtag_master/
mkdir -p ./libraries/master_0/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"            -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"               -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"            -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"         -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                    -work altera               
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                              -work lpm                  
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                             -work lpm                  
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                           -work sgate                
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                -work sgate                
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                 -work altera_mf            
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                            -work altera_mf            
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"              -work altera_lnsim         
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                       -work cyclonev             
  ncvhdl -v93 "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                  -work cyclonev             
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_p2b_adapter.vho" -work p2b_adapter                      -cdslib ./cds_libs/p2b_adapter.cds.lib                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_b2p_adapter.vho" -work b2p_adapter                      -cdslib ./cds_libs/b2p_adapter.cds.lib                     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_transacto.vho"   -work transacto                        -cdslib ./cds_libs/transacto.cds.lib                       
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_p2b.vho"         -work p2b                              -cdslib ./cds_libs/p2b.cds.lib                             
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_b2p.vho"         -work b2p                              -cdslib ./cds_libs/b2p.cds.lib                             
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_fifo.vho"        -work fifo                             -cdslib ./cds_libs/fifo.cds.lib                            
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0_timing_adt.vho"  -work timing_adt                       -cdslib ./cds_libs/timing_adt.cds.lib                      
  ncvlog      "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"          -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                 -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                     -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                    -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"           -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"           -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"            -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog      "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"           -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvlog -sv  "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"         -work jtag_phy_embedded_in_jtag_master -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/AvalonJTAG2Memory_master_0.vhd"             -work master_0                         -cdslib ./cds_libs/master_0.cds.lib                        
  ncvhdl -v93 "$QSYS_SIMDIR/AvalonJTAG2Memory.vhd"                                                                                                                                   
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
