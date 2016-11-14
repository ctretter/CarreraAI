--IP Functional Simulation Model
--VERSION_BEGIN 15.0 cbx_mgl 2015:04:22:18:06:50:SJ cbx_simgen 2015:04:22:18:04:08:SJ  VERSION_END


-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = altera_std_synchronizer 4 io_buf_tri 1 lut 44 mux21 45 oper_add 2 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  AvalonSPI_spislave_0 IS 
	 PORT 
	 ( 
		 miso	:	INOUT  STD_LOGIC;
		 mosi	:	IN  STD_LOGIC;
		 nreset	:	IN  STD_LOGIC;
		 nss	:	IN  STD_LOGIC;
		 sclk	:	IN  STD_LOGIC;
		 stsinkdata	:	IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 stsinkready	:	OUT  STD_LOGIC;
		 stsinkvalid	:	IN  STD_LOGIC;
		 stsourcedata	:	OUT  STD_LOGIC_VECTOR (7 DOWNTO 0);
		 stsourceready	:	IN  STD_LOGIC;
		 stsourcevalid	:	OUT  STD_LOGIC;
		 sysclk	:	IN  STD_LOGIC
	 ); 
 END AvalonSPI_spislave_0;

 ARCHITECTURE RTL OF AvalonSPI_spislave_0 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678_dout	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678_reset_n	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_dout	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_reset_n	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_clk	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_dout	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_reset_n	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_stsrcvalid_697_dout	:	STD_LOGIC;
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_0_177q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_1_203q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_2_202q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_3_201q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_4_200q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_5_199q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_6_198q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_7_197q	:	STD_LOGIC := '0';
	 SIGNAL  wire_n0O_w_lg_w_lg_w_lg_w_lg_w_lg_w72w73w74w75w76w77w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w_lg_w_lg_w_lg_w61w63w64w65w67w68w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w_lg_w_lg_w72w73w74w75w76w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w_lg_w_lg_w61w63w64w65w67w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w_lg_w72w73w74w75w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w_lg_w61w63w64w65w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w72w73w74w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w_lg_w61w63w64w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w72w73w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w_lg_w61w63w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w72w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w61w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w78w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w69w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w66w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w60w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_n0O_w62w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q	:	STD_LOGIC := '0';
	 SIGNAL	wire_ni_ENA	:	STD_LOGIC;
	 SIGNAL  wire_ni_w53w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_ni_w58w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_d3_stsrcvalid_163q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nii_w123w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_157q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_154q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_1_150q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_2_149q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_0_189q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_1_175q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_2_174q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_3_173q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_4_172q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_5_171q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_6_170q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_0_468q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_1_497q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_2_496q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_3_495q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_4_494q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_5_493q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_6_492q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_7_491q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_valid_483q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w50w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_1_318q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_3_316q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_6_313q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_d3_stsinkready_304q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nll_w98w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_290q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_320q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_2_317q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_4_315q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_5_314q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_7_312q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_286q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_1_281q	:	STD_LOGIC := '0';
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_2_280q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nlO_w105w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nlO_w103w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nlO_w102w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q	:	STD_LOGIC := '0';
	 SIGNAL	wire_nO_ENA	:	STD_LOGIC;
	 SIGNAL  wire_nO_w17w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w14w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w_oe	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_283m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_284m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_295m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_296m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_297m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_298m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_299m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_300m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_301m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_302m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_275m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_276m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_277m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_145m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_146m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_151m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_152m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_561m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_560m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_2_559m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_3_558m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_4_557m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_538m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_539m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_540m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_541m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_542m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_543m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_544m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_545m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_546m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_547m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_548m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_549m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_550m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_551m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_552m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_553m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_5_556m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_6_555m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_7_554m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_data_5_427m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_418m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_419m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_o	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_o	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_w_lg_w11w13w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w56w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_stsinkdata_range29w43w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nreset80w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_nss82w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w97w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w122w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w11w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w12w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w57w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w55w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_sclk121w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_stsinkvalid10w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_stsinkdata_range28w42w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_376_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_stsinkready_292_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_spi_domain_reset_141_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcevalid_159_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_internal_out_ready_470_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_592_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_601_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_always0_0_467_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_0_458_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_425_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
	 SIGNAL  wire_w_stsinkdata_range29w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_stsinkdata_range28w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_w11w13w(0) <= wire_w11w(0) AND wire_w12w(0);
	wire_w56w(0) <= s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcevalid_159_dataout AND wire_w55w(0);
	wire_w_lg_w_stsinkdata_range29w43w(0) <= wire_w_stsinkdata_range29w(0) AND wire_w_lg_w_stsinkdata_range28w42w(0);
	wire_w_lg_nreset80w(0) <= NOT nreset;
	wire_w_lg_nss82w(0) <= NOT nss;
	wire_w97w(0) <= NOT s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout;
	wire_w122w(0) <= NOT s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_spi_domain_reset_141_dataout;
	wire_w11w(0) <= NOT s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_592_dataout;
	wire_w12w(0) <= NOT s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_601_dataout;
	wire_w57w(0) <= NOT s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_always0_0_467_dataout;
	wire_w55w(0) <= NOT s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_0_458_dataout;
	wire_w_lg_sclk121w(0) <= NOT sclk;
	wire_w_lg_stsinkvalid10w(0) <= NOT stsinkvalid;
	wire_w_lg_w_stsinkdata_range28w42w(0) <= NOT wire_w_stsinkdata_range28w(0);
	miso <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w_dataout;
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout <= ((wire_nlO_w102w(0) AND wire_nlO_w103w(0)) AND wire_nlO_w105w(0));
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_376_dataout <= ((avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_2_280q AND avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_1_281q) AND avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_286q);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout <= (wire_w_lg_nreset80w(0) OR nss);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_stsinkready_292_dataout <= (wire_nll_w98w(0) AND wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_dout);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout <= ((avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_2_149q AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_1_150q) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_154q);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_spi_domain_reset_141_dataout <= (wire_w_lg_nreset80w(0) OR nss);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcevalid_159_dataout <= (wire_nii_w123w(0) AND wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_stsrcvalid_697_dout);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_internal_out_ready_470_dataout <= (stsourceready OR wire_nl_w50w(0));
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_592_dataout <= ((((((((NOT stsinkdata(0)) AND stsinkdata(1)) AND (NOT stsinkdata(2))) AND stsinkdata(3)) AND (NOT stsinkdata(4))) AND (NOT stsinkdata(5))) AND stsinkdata(6)) AND (NOT stsinkdata(7)));
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_601_dataout <= ((((((wire_w_lg_w_stsinkdata_range29w43w(0) AND stsinkdata(2)) AND stsinkdata(3)) AND (NOT stsinkdata(4))) AND (NOT stsinkdata(5))) AND stsinkdata(6)) AND (NOT stsinkdata(7)));
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout <= (s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_592_dataout OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_601_dataout);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_always0_0_467_dataout <= (wire_n0O_w_lg_w_lg_w_lg_w_lg_w_lg_w72w73w74w75w76w77w(0) AND wire_n0O_w78w(0));
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_0_458_dataout <= ((wire_n0O_w_lg_w_lg_w_lg_w_lg_w_lg_w61w63w64w65w67w68w(0) AND wire_n0O_w69w(0)) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_1_203q);
	s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_425_dataout <= (wire_w56w(0) AND wire_ni_w58w(0));
	s_wire_vcc <= '1';
	stsinkready <= (s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_stsinkready_292_dataout AND (wire_w_lg_stsinkvalid10w(0) OR wire_nO_w14w(0)));
	stsourcedata <= ( avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_7_491q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_6_492q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_5_493q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_4_494q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_3_495q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_2_496q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_1_497q & avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_0_468q);
	stsourcevalid <= avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_valid_483q;
	wire_w_stsinkdata_range29w(0) <= stsinkdata(0);
	wire_w_stsinkdata_range28w(0) <= stsinkdata(1);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678_reset_n <= wire_w97w(0);
	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678 :  altera_std_synchronizer
	  GENERIC MAP (
		depth => 2
	  )
	  PORT MAP ( 
		clk => sclk,
		din => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_dout,
		dout => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678_dout,
		reset_n => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678_reset_n
	  );
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_reset_n <= wire_w97w(0);
	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679 :  altera_std_synchronizer
	  GENERIC MAP (
		depth => 2
	  )
	  PORT MAP ( 
		clk => sysclk,
		din => avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_290q,
		dout => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_dout,
		reset_n => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_reset_n
	  );
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_clk <= wire_w_lg_sclk121w(0);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_reset_n <= wire_w122w(0);
	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696 :  altera_std_synchronizer
	  GENERIC MAP (
		depth => 2
	  )
	  PORT MAP ( 
		clk => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_clk,
		din => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_stsrcvalid_697_dout,
		dout => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_dout,
		reset_n => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_reset_n
	  );
	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_stsrcvalid_697 :  altera_std_synchronizer
	  GENERIC MAP (
		depth => 2
	  )
	  PORT MAP ( 
		clk => sysclk,
		din => avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_157q,
		dout => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_stsrcvalid_697_dout,
		reset_n => nreset
	  );
	PROCESS (sclk, nreset)
	BEGIN
		IF (nreset = '0') THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_0_177q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_1_203q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_2_202q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_3_201q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_4_200q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_5_199q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_6_198q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_7_197q <= '0';
		ELSIF (sclk = '0' AND sclk'event) THEN
			IF (s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_0_177q <= mosi;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_1_203q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_0_189q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_2_202q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_1_175q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_3_201q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_2_174q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_4_200q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_3_173q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_5_199q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_4_172q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_6_198q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_5_171q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_7_197q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_6_170q;
			END IF;
		END IF;
	END PROCESS;
	wire_n0O_w_lg_w_lg_w_lg_w_lg_w_lg_w72w73w74w75w76w77w(0) <= wire_n0O_w_lg_w_lg_w_lg_w_lg_w72w73w74w75w76w(0) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_2_202q;
	wire_n0O_w_lg_w_lg_w_lg_w_lg_w_lg_w61w63w64w65w67w68w(0) <= wire_n0O_w_lg_w_lg_w_lg_w_lg_w61w63w64w65w67w(0) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_3_201q;
	wire_n0O_w_lg_w_lg_w_lg_w_lg_w72w73w74w75w76w(0) <= wire_n0O_w_lg_w_lg_w_lg_w72w73w74w75w(0) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_3_201q;
	wire_n0O_w_lg_w_lg_w_lg_w_lg_w61w63w64w65w67w(0) <= wire_n0O_w_lg_w_lg_w_lg_w61w63w64w65w(0) AND wire_n0O_w66w(0);
	wire_n0O_w_lg_w_lg_w_lg_w72w73w74w75w(0) <= wire_n0O_w_lg_w_lg_w72w73w74w(0) AND wire_n0O_w66w(0);
	wire_n0O_w_lg_w_lg_w_lg_w61w63w64w65w(0) <= wire_n0O_w_lg_w_lg_w61w63w64w(0) AND wire_n0O_w60w(0);
	wire_n0O_w_lg_w_lg_w72w73w74w(0) <= wire_n0O_w_lg_w72w73w(0) AND wire_n0O_w60w(0);
	wire_n0O_w_lg_w_lg_w61w63w64w(0) <= wire_n0O_w_lg_w61w63w(0) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_6_198q;
	wire_n0O_w_lg_w72w73w(0) <= wire_n0O_w72w(0) AND avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_6_198q;
	wire_n0O_w_lg_w61w63w(0) <= wire_n0O_w61w(0) AND wire_n0O_w62w(0);
	wire_n0O_w72w(0) <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_0_177q AND wire_n0O_w62w(0);
	wire_n0O_w61w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_0_177q;
	wire_n0O_w78w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_1_203q;
	wire_n0O_w69w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_2_202q;
	wire_n0O_w66w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_4_200q;
	wire_n0O_w60w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_5_199q;
	wire_n0O_w62w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_7_197q;
	PROCESS (sysclk, nreset)
	BEGIN
		IF (nreset = '0') THEN
				avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q <= '0';
		ELSIF (sysclk = '1' AND sysclk'event) THEN
			IF (wire_ni_ENA = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_419m_dataout;
			END IF;
		END IF;
	END PROCESS;
	wire_ni_ENA <= (stsourceready AND s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcevalid_159_dataout);
	wire_ni_w53w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q;
	wire_ni_w58w(0) <= avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q OR wire_w57w(0);
	PROCESS (sysclk, nreset)
	BEGIN
		IF (nreset = '0') THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_d3_stsrcvalid_163q <= '0';
		ELSIF (sysclk = '1' AND sysclk'event) THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_d3_stsrcvalid_163q <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_stsrcvalid_697_dout;
		END IF;
	END PROCESS;
	wire_nii_w123w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_d3_stsrcvalid_163q;
	PROCESS (sclk, nreset)
	BEGIN
		IF (nreset = '0') THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_157q <= '0';
		ELSIF (sclk = '0' AND sclk'event) THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_157q <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_152m_dataout;
		END IF;
	END PROCESS;
	PROCESS (sclk, s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_spi_domain_reset_141_dataout)
	BEGIN
		IF (s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_spi_domain_reset_141_dataout = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_154q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_1_150q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_2_149q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_0_189q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_1_175q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_2_174q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_3_173q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_4_172q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_5_171q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_6_170q <= '0';
		ELSIF (sclk = '0' AND sclk'event) THEN
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_154q <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_146m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_1_150q <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_145m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_2_149q <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_144m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_0_189q <= mosi;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_1_175q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_0_189q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_2_174q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_1_175q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_3_173q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_2_174q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_4_172q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_3_173q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_5_171q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_4_172q;
				avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_6_170q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_wrshiftreg_5_171q;
		END IF;
	END PROCESS;
	PROCESS (sysclk, nreset)
	BEGIN
		IF (nreset = '0') THEN
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_0_468q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_1_497q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_2_496q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_3_495q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_4_494q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_5_493q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_6_492q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_7_491q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_valid_483q <= '0';
		ELSIF (sysclk = '1' AND sysclk'event) THEN
			IF (s_wire_avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_internal_out_ready_470_dataout = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_0_468q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_0_177q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_1_497q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_1_203q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_2_496q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_2_202q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_3_495q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_3_201q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_4_494q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_4_200q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_5_493q <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_data_5_427m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_6_492q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_6_198q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_data_7_491q <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_7_197q;
				avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_valid_483q <= s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_425_dataout;
			END IF;
		END IF;
	END PROCESS;
	wire_nl_w50w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_single_output_pipeline_stage_spiphy_single_output_pipeline_stage_out_valid_483q;
	PROCESS (sclk, s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout)
	BEGIN
		IF (s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_1_318q <= '1';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_3_316q <= '1';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_6_313q <= '1';
		ELSIF (sclk = '1' AND sclk'event) THEN
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_1_318q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_301m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_3_316q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_299m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_6_313q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_296m_dataout;
		END IF;
		if (now = 0 ns) then
			avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_1_318q <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_3_316q <= '1' after 1 ps;
		end if;
		if (now = 0 ns) then
			avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_6_313q <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (sysclk, s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout)
	BEGIN
		IF (s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_d3_stsinkready_304q <= '0';
		ELSIF (sysclk = '1' AND sysclk'event) THEN
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_d3_stsinkready_304q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_stsinkready_679_dout;
		END IF;
	END PROCESS;
	wire_nll_w98w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_d3_stsinkready_304q;
	PROCESS (sclk, s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout)
	BEGIN
		IF (s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_spi_domain_reset_270_dataout = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_290q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_320q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_2_317q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_4_315q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_5_314q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_7_312q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_286q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_1_281q <= '0';
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_2_280q <= '0';
		ELSIF (sclk = '1' AND sclk'event) THEN
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_290q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_284m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_320q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_302m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_2_317q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_300m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_4_315q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_298m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_5_314q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_297m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_7_312q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_295m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_286q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_277m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_1_281q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_276m_dataout;
				avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_2_280q <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_275m_dataout;
		END IF;
	END PROCESS;
	wire_nlO_w105w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_286q;
	wire_nlO_w103w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_1_281q;
	wire_nlO_w102w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_2_280q;
	PROCESS (sysclk, nreset)
	BEGIN
		IF (nreset = '0') THEN
				avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q <= '0';
		ELSIF (sysclk = '1' AND sysclk'event) THEN
			IF (wire_nO_ENA = '1') THEN
				avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q <= (s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_stsinkready_292_dataout AND (wire_nO_w17w(0) AND s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout));
			END IF;
		END IF;
	END PROCESS;
	wire_nO_ENA <= (stsinkvalid AND s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_stsinkready_292_dataout);
	wire_nO_w17w(0) <= NOT avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q;
	wire_nO_w14w(0) <= avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q OR wire_w_lg_w11w13w(0);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w_oe <= wire_w_lg_nss82w(0);
	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w :  io_buf_tri
	  PORT MAP ( 
		datain => avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_7_312q,
		dataout => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w_dataout,
		oe => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_miso_271w_oe
	  );
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_283m_dataout <= avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_290q AND NOT(wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_altera_std_synchronizer_sync_miso_ack_678_dout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_284m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_loadstsinkdata_283m_dataout OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_295m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_7_554m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_6_313q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_296m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_6_555m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_5_314q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_297m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_5_556m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_4_315q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_298m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_4_557m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_3_316q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_299m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_3_558m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_2_317q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_300m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_2_559m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_1_318q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_301m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_560m_dataout WHEN s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_320q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_302m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_561m_dataout AND s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_rdshiftreg_0_409_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_275m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_o(2) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_376_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_276m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_o(1) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_376_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_277m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_o(0) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_376_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_144m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_o(2) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_145m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_o(1) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_146m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_o(0) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_151m_dataout <= avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_157q AND NOT(wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_altera_std_synchronizer_sync_mosi_ack_696_dout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_152m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sendsetvalid_151m_dataout OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_258_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_0_561m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_553m_dataout AND NOT(wire_w_lg_stsinkvalid10w(0));
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_1_560m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_552m_dataout OR wire_w_lg_stsinkvalid10w(0);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_2_559m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_551m_dataout AND NOT(wire_w_lg_stsinkvalid10w(0));
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_3_558m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_550m_dataout OR wire_w_lg_stsinkvalid10w(0);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_4_557m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_549m_dataout AND NOT(wire_w_lg_stsinkvalid10w(0));
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_538m_dataout <= stsinkdata(7) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_539m_dataout <= stsinkdata(6) OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_540m_dataout <= stsinkdata(5) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_541m_dataout <= stsinkdata(4) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_542m_dataout <= stsinkdata(3) OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_543m_dataout <= stsinkdata(2) OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_544m_dataout <= stsinkdata(1) AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_545m_dataout <= stsinkdata(0) OR s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_537_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_546m_dataout <= stsinkdata(7) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_538m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_547m_dataout <= stsinkdata(6) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_539m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_548m_dataout <= (NOT stsinkdata(5)) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_540m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_549m_dataout <= stsinkdata(4) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_541m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_550m_dataout <= stsinkdata(3) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_542m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_551m_dataout <= stsinkdata(2) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_543m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_552m_dataout <= stsinkdata(1) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_544m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_553m_dataout <= stsinkdata(0) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_received_esc_521q = '1'  ELSE wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_545m_dataout;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_5_556m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_548m_dataout AND NOT(wire_w_lg_stsinkvalid10w(0));
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_6_555m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_547m_dataout OR wire_w_lg_stsinkvalid10w(0);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_7_554m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_inserter_spiphy_altera_avalon_st_idle_inserter_out_data_546m_dataout AND NOT(wire_w_lg_stsinkvalid10w(0));
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_data_5_427m_dataout <= wire_n0O_w60w(0) WHEN avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q = '1'  ELSE avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_stsourcedata_5_199q;
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_418m_dataout <= avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_411q AND NOT(s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_out_valid_425_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_419m_dataout <= wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_received_esc_418m_dataout OR (wire_ni_w53w(0) AND s_wire_avalonspi_spislave_0_spiphy_spislave_0_spi_phy_internal_altera_avalon_st_idle_remover_spiphy_altera_avalon_st_idle_remover_always0_0_467_dataout);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_a <= ( avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_2_280q & avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_1_281q & avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_sclkpedgecounter_0_286q);
	wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_b <= ( "0" & "0" & "1");
	avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3,
		width_o => 3
	  )
	  PORT MAP ( 
		a => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_a,
		b => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_b,
		cin => wire_gnd,
		o => wire_avalonspi_spislave_0_spiphy_spislave_0_misoctl_spiphy_misoctl_add0_274_o
	  );
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_a <= ( avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_2_149q & avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_1_150q & avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_sclkpedgecounter_0_154q);
	wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_b <= ( "0" & "0" & "1");
	avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3,
		width_o => 3
	  )
	  PORT MAP ( 
		a => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_a,
		b => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_b,
		cin => wire_gnd,
		o => wire_avalonspi_spislave_0_spiphy_spislave_0_mosictl_spiphy_mosictl_add0_143_o
	  );

 END RTL; --AvalonSPI_spislave_0
--synopsys translate_on
--VALID FILE
