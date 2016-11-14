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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "07/12/2016 22:56:51"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for MODELSIM (VHDL OUTPUT FROM QUARTUS II) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Example4 IS
    PORT (
	iResetAsync : IN std_logic;
	iClk : IN std_logic;
	oLED_Ack : OUT std_logic;
	oLED_Locked : OUT std_logic
	);
END Example4;

-- Design Ports Information
-- oLED_Ack	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oLED_Locked	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iClk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iResetAsync	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Example4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iResetAsync : std_logic;
SIGNAL ww_iClk : std_logic;
SIGNAL ww_oLED_Ack : std_logic;
SIGNAL ww_oLED_Locked : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \iResetAsync~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Ack~0_combout\ : std_logic;
SIGNAL \Ack~q\ : std_logic;
SIGNAL PLL_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|locked_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \altera_pll|alterapll_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Ack~q\ : std_logic;
SIGNAL ALT_INV_PLL_counter : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_iResetAsync <= iResetAsync;
ww_iClk <= iClk;
oLED_Ack <= ww_oLED_Ack;
oLED_Locked <= ww_oLED_Locked;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \iClk~input_o\);

\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ <= \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(5);

\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\
& \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\altera_pll|alterapll_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ <= NOT \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Ack~q\ <= NOT \Ack~q\;
ALT_INV_PLL_counter(0) <= NOT PLL_counter(0);
ALT_INV_PLL_counter(1) <= NOT PLL_counter(1);
ALT_INV_PLL_counter(2) <= NOT PLL_counter(2);
ALT_INV_PLL_counter(26) <= NOT PLL_counter(26);
ALT_INV_PLL_counter(27) <= NOT PLL_counter(27);
ALT_INV_PLL_counter(28) <= NOT PLL_counter(28);
ALT_INV_PLL_counter(29) <= NOT PLL_counter(29);
ALT_INV_PLL_counter(30) <= NOT PLL_counter(30);
ALT_INV_PLL_counter(5) <= NOT PLL_counter(5);
ALT_INV_PLL_counter(6) <= NOT PLL_counter(6);
ALT_INV_PLL_counter(7) <= NOT PLL_counter(7);
ALT_INV_PLL_counter(8) <= NOT PLL_counter(8);
ALT_INV_PLL_counter(9) <= NOT PLL_counter(9);
ALT_INV_PLL_counter(19) <= NOT PLL_counter(19);
ALT_INV_PLL_counter(20) <= NOT PLL_counter(20);
ALT_INV_PLL_counter(21) <= NOT PLL_counter(21);
ALT_INV_PLL_counter(22) <= NOT PLL_counter(22);
ALT_INV_PLL_counter(23) <= NOT PLL_counter(23);
ALT_INV_PLL_counter(24) <= NOT PLL_counter(24);
ALT_INV_PLL_counter(25) <= NOT PLL_counter(25);
ALT_INV_PLL_counter(3) <= NOT PLL_counter(3);
ALT_INV_PLL_counter(4) <= NOT PLL_counter(4);
ALT_INV_PLL_counter(13) <= NOT PLL_counter(13);
ALT_INV_PLL_counter(14) <= NOT PLL_counter(14);
ALT_INV_PLL_counter(15) <= NOT PLL_counter(15);
ALT_INV_PLL_counter(16) <= NOT PLL_counter(16);
ALT_INV_PLL_counter(17) <= NOT PLL_counter(17);
ALT_INV_PLL_counter(18) <= NOT PLL_counter(18);
ALT_INV_PLL_counter(10) <= NOT PLL_counter(10);
ALT_INV_PLL_counter(11) <= NOT PLL_counter(11);
ALT_INV_PLL_counter(12) <= NOT PLL_counter(12);
ALT_INV_PLL_counter(31) <= NOT PLL_counter(31);

-- Location: IOOBUF_X52_Y0_N2
\oLED_Ack~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ack~q\,
	devoe => ww_devoe,
	o => ww_oLED_Ack);

-- Location: IOOBUF_X8_Y0_N53
\oLED_Locked~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_pll|alterapll_inst|altera_pll_i|locked_wire\(0),
	devoe => ww_devoe,
	o => ww_oLED_Locked);

-- Location: IOIBUF_X32_Y0_N1
\iClk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iClk,
	o => \iClk~input_o\);

-- Location: CLKCTRL_G5
\iClk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \iClk~input_o\,
	outclk => \iClk~inputCLKENA0_outclk\);

-- Location: LABCELL_X10_Y28_N0
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( PLL_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~126\ = CARRY(( PLL_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(0),
	cin => GND,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: IOIBUF_X10_Y0_N75
\iResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iResetAsync,
	o => \iResetAsync~input_o\);

-- Location: LABCELL_X10_Y28_N33
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( PLL_counter(11) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( PLL_counter(11) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(11),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X10_Y28_N36
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( PLL_counter(12) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( PLL_counter(12) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(12),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 2000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 3,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 3,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "100.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \altera_pll|alterapll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \iResetAsync~input_o\,
	refclkin => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \altera_pll|alterapll_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \altera_pll|alterapll_inst|altera_pll_i|locked_wire\(0),
	tclk => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y19_N1
\altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 1,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "100.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 5)
-- pragma translate_on
PORT MAP (
	nen0 => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\,
	tclk0 => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \altera_pll|alterapll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G7
\altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: FF_X10_Y28_N37
\PLL_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(12));

-- Location: LABCELL_X10_Y28_N39
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( PLL_counter(13) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~38\ = CARRY(( PLL_counter(13) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(13),
	cin => \Add0~6\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X10_Y28_N40
\PLL_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(13));

-- Location: LABCELL_X10_Y28_N42
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( PLL_counter(14) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( PLL_counter(14) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(14),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X10_Y28_N43
\PLL_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(14));

-- Location: LABCELL_X10_Y28_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( PLL_counter(15) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( PLL_counter(15) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(15),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X10_Y28_N46
\PLL_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(15));

-- Location: LABCELL_X10_Y28_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( PLL_counter(16) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( PLL_counter(16) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(16),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X10_Y28_N49
\PLL_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(16));

-- Location: LABCELL_X10_Y28_N51
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( PLL_counter(17) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( PLL_counter(17) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(17),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X10_Y28_N52
\PLL_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(17));

-- Location: LABCELL_X10_Y28_N54
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( PLL_counter(18) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( PLL_counter(18) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(18),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X10_Y28_N55
\PLL_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(18));

-- Location: LABCELL_X10_Y28_N57
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( PLL_counter(19) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~74\ = CARRY(( PLL_counter(19) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(19),
	cin => \Add0~18\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X10_Y28_N58
\PLL_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(19));

-- Location: LABCELL_X10_Y27_N0
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( PLL_counter(20) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( PLL_counter(20) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(20),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X10_Y27_N2
\PLL_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(20));

-- Location: LABCELL_X10_Y27_N3
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( PLL_counter(21) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( PLL_counter(21) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(21),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X10_Y27_N5
\PLL_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(21));

-- Location: LABCELL_X10_Y27_N6
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( PLL_counter(22) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( PLL_counter(22) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(22),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X10_Y27_N8
\PLL_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(22));

-- Location: LABCELL_X10_Y27_N9
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( PLL_counter(23) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( PLL_counter(23) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(23),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X10_Y27_N10
\PLL_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(23));

-- Location: LABCELL_X10_Y27_N12
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( PLL_counter(24) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( PLL_counter(24) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(24),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X10_Y27_N14
\PLL_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(24));

-- Location: LABCELL_X10_Y27_N15
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( PLL_counter(25) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( PLL_counter(25) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(25),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X10_Y27_N16
\PLL_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(25));

-- Location: LABCELL_X10_Y27_N18
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( PLL_counter(26) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~114\ = CARRY(( PLL_counter(26) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(26),
	cin => \Add0~50\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X10_Y27_N19
\PLL_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(26));

-- Location: LABCELL_X10_Y27_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( PLL_counter(27) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( PLL_counter(27) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(27),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X10_Y27_N23
\PLL_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(27));

-- Location: LABCELL_X10_Y27_N24
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( PLL_counter(28) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( PLL_counter(28) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(28),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X10_Y27_N25
\PLL_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(28));

-- Location: LABCELL_X10_Y27_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( PLL_counter(29) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( PLL_counter(29) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(29),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X10_Y27_N29
\PLL_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(29));

-- Location: LABCELL_X10_Y27_N30
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( PLL_counter(30) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( PLL_counter(30) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(30),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X10_Y27_N32
\PLL_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(30));

-- Location: LABCELL_X10_Y27_N51
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !PLL_counter(27) & ( !PLL_counter(30) & ( (!PLL_counter(29) & (!PLL_counter(26) & !PLL_counter(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PLL_counter(29),
	datab => ALT_INV_PLL_counter(26),
	datac => ALT_INV_PLL_counter(28),
	datae => ALT_INV_PLL_counter(27),
	dataf => ALT_INV_PLL_counter(30),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X10_Y27_N42
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !PLL_counter(21) & ( !PLL_counter(19) & ( (!PLL_counter(23) & (!PLL_counter(22) & (!PLL_counter(20) & !PLL_counter(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PLL_counter(23),
	datab => ALT_INV_PLL_counter(22),
	datac => ALT_INV_PLL_counter(20),
	datad => ALT_INV_PLL_counter(24),
	datae => ALT_INV_PLL_counter(21),
	dataf => ALT_INV_PLL_counter(19),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X11_Y28_N0
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( PLL_counter(5) & ( (PLL_counter(8) & (PLL_counter(6) & (PLL_counter(7) & PLL_counter(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PLL_counter(8),
	datab => ALT_INV_PLL_counter(6),
	datac => ALT_INV_PLL_counter(7),
	datad => ALT_INV_PLL_counter(9),
	dataf => ALT_INV_PLL_counter(5),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X11_Y27_N30
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~3_combout\ & ( (!PLL_counter(3) & (!PLL_counter(25) & (\LessThan0~4_combout\ & !PLL_counter(4)))) ) ) ) # ( \LessThan0~2_combout\ & ( !\LessThan0~3_combout\ & ( (!PLL_counter(25) & 
-- \LessThan0~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PLL_counter(3),
	datab => ALT_INV_PLL_counter(25),
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_PLL_counter(4),
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X11_Y28_N6
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !PLL_counter(16) & ( !PLL_counter(13) & ( (!PLL_counter(18) & (!PLL_counter(14) & (!PLL_counter(15) & !PLL_counter(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PLL_counter(18),
	datab => ALT_INV_PLL_counter(14),
	datac => ALT_INV_PLL_counter(15),
	datad => ALT_INV_PLL_counter(17),
	datae => ALT_INV_PLL_counter(16),
	dataf => ALT_INV_PLL_counter(13),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X10_Y27_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( PLL_counter(31) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(31),
	cin => \Add0~98\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X10_Y27_N34
\PLL_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(31));

-- Location: LABCELL_X10_Y27_N54
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~0_combout\ & ( (!PLL_counter(31) & ((!\LessThan0~5_combout\) # (!\LessThan0~1_combout\))) ) ) # ( !\LessThan0~0_combout\ & ( !PLL_counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_PLL_counter(31),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X10_Y28_N2
\PLL_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(0));

-- Location: LABCELL_X10_Y28_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( PLL_counter(1) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( PLL_counter(1) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(1),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X10_Y28_N5
\PLL_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(1));

-- Location: LABCELL_X10_Y28_N6
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( PLL_counter(2) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( PLL_counter(2) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(2),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X10_Y28_N8
\PLL_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(2));

-- Location: LABCELL_X10_Y28_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( PLL_counter(3) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~46\ = CARRY(( PLL_counter(3) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(3),
	cin => \Add0~118\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X10_Y28_N10
\PLL_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(3));

-- Location: LABCELL_X10_Y28_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( PLL_counter(4) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( PLL_counter(4) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(4),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X10_Y28_N13
\PLL_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(4));

-- Location: LABCELL_X10_Y28_N15
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( PLL_counter(5) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~94\ = CARRY(( PLL_counter(5) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(5),
	cin => \Add0~42\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X10_Y28_N16
\PLL_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(5));

-- Location: LABCELL_X10_Y28_N18
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( PLL_counter(6) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( PLL_counter(6) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(6),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X10_Y28_N19
\PLL_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(6));

-- Location: LABCELL_X10_Y28_N21
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( PLL_counter(7) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( PLL_counter(7) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(7),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X10_Y28_N22
\PLL_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(7));

-- Location: LABCELL_X10_Y28_N24
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( PLL_counter(8) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( PLL_counter(8) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(8),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X10_Y28_N25
\PLL_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(8));

-- Location: LABCELL_X10_Y28_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( PLL_counter(9) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( PLL_counter(9) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(9),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X10_Y28_N28
\PLL_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(9));

-- Location: LABCELL_X10_Y28_N30
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( PLL_counter(10) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~14\ = CARRY(( PLL_counter(10) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PLL_counter(10),
	cin => \Add0~78\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X10_Y28_N31
\PLL_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(10));

-- Location: FF_X10_Y28_N34
\PLL_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \iResetAsync~input_o\,
	sclr => \LessThan0~6_combout\,
	ena => \altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PLL_counter(11));

-- Location: LABCELL_X11_Y28_N3
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !PLL_counter(10) & ( (!PLL_counter(11) & !PLL_counter(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PLL_counter(11),
	datad => ALT_INV_PLL_counter(12),
	dataf => ALT_INV_PLL_counter(10),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X10_Y27_N36
\Ack~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ack~0_combout\ = ( \Ack~q\ & ( PLL_counter(31) ) ) # ( \Ack~q\ & ( !PLL_counter(31) & ( (!GLOBAL(\altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\)) # ((\LessThan0~0_combout\ & (\LessThan0~1_combout\ & \LessThan0~5_combout\))) ) ) ) 
-- # ( !\Ack~q\ & ( !PLL_counter(31) & ( (GLOBAL(\altera_pll|alterapll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\) & ((!\LessThan0~0_combout\) # ((!\LessThan0~1_combout\) # (!\LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110111111110000000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \altera_pll|alterapll_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	datae => \ALT_INV_Ack~q\,
	dataf => ALT_INV_PLL_counter(31),
	combout => \Ack~0_combout\);

-- Location: FF_X10_Y27_N37
Ack : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Ack~0_combout\,
	clrn => \iResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ack~q\);

-- Location: LABCELL_X53_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


