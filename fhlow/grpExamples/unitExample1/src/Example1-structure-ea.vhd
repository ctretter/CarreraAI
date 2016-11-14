-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/20/2016 21:24:57"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for MODELSIM (VHDL OUTPUT FROM QUARTUS II) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Example1 IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	oSEG0 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	oSEG1 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	oSEG2 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	oSEG3 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0)
	);
END Example1;

-- Design Ports Information
-- oSEG0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iClk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Example1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iClk : std_logic;
SIGNAL ww_inResetAsync : std_logic;
SIGNAL ww_oSEG0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oSEG1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oSEG2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oSEG3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \iClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Counter1~5_combout\ : std_logic;
SIGNAL \Counter0[2]~1_combout\ : std_logic;
SIGNAL \ClkCounter~4_combout\ : std_logic;
SIGNAL \ClkCounter~5_combout\ : std_logic;
SIGNAL \ClkCounter~8_combout\ : std_logic;
SIGNAL \iClk~combout\ : std_logic;
SIGNAL \iClk~clkctrl_outclk\ : std_logic;
SIGNAL \Counter0[0]~3_combout\ : std_logic;
SIGNAL \inResetAsync~combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \ClkCounter~10_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \ClkCounter~9_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \ClkCounter~6_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \ClkCounter~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \ClkCounter~3_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \ClkCounter~2_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \ClkCounter~1_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \ClkCounter~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Counter0~0_combout\ : std_logic;
SIGNAL \Counter0~2_combout\ : std_logic;
SIGNAL \Counter1[3]~0_combout\ : std_logic;
SIGNAL \Counter1[3]~1_combout\ : std_logic;
SIGNAL \Counter1[3]~2_combout\ : std_logic;
SIGNAL \Counter1[0]~6_combout\ : std_logic;
SIGNAL \Counter1[2]~4_combout\ : std_logic;
SIGNAL \Counter1~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL Seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL Seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL Counter1 : std_logic_vector(3 DOWNTO 0);
SIGNAL Counter0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ClkCounter : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_inResetAsync~combout\ : std_logic;
SIGNAL ALT_INV_Seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ALT_INV_Seg1 : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
oSEG0 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oSEG0);
oSEG1 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oSEG1);
oSEG2 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oSEG2);
oSEG3 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oSEG3);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iClk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \iClk~combout\);
\ALT_INV_inResetAsync~combout\ <= NOT \inResetAsync~combout\;
ALT_INV_Seg0(6) <= NOT Seg0(6);
ALT_INV_Seg0(5) <= NOT Seg0(5);
ALT_INV_Seg0(4) <= NOT Seg0(4);
ALT_INV_Seg0(3) <= NOT Seg0(3);
ALT_INV_Seg0(2) <= NOT Seg0(2);
ALT_INV_Seg0(1) <= NOT Seg0(1);
ALT_INV_Seg0(0) <= NOT Seg0(0);
ALT_INV_Seg1(6) <= NOT Seg1(6);
ALT_INV_Seg1(5) <= NOT Seg1(5);
ALT_INV_Seg1(4) <= NOT Seg1(4);
ALT_INV_Seg1(3) <= NOT Seg1(3);
ALT_INV_Seg1(2) <= NOT Seg1(2);
ALT_INV_Seg1(1) <= NOT Seg1(1);
ALT_INV_Seg1(0) <= NOT Seg1(0);

-- Location: LCCOMB_X2_Y20_N12
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (ClkCounter(2) & (\Add2~3\ $ (GND))) # (!ClkCounter(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((ClkCounter(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X2_Y20_N20
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (ClkCounter(6) & (\Add2~11\ $ (GND))) # (!ClkCounter(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((ClkCounter(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X2_Y20_N24
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (ClkCounter(8) & (\Add2~15\ $ (GND))) # (!ClkCounter(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((ClkCounter(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X2_Y20_N28
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (ClkCounter(10) & (\Add2~19\ $ (GND))) # (!ClkCounter(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((ClkCounter(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X2_Y19_N10
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (ClkCounter(17) & (!\Add2~33\)) # (!ClkCounter(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!ClkCounter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X2_Y19_N12
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (ClkCounter(18) & (\Add2~35\ $ (GND))) # (!ClkCounter(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((ClkCounter(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X2_Y19_N16
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (ClkCounter(20) & (\Add2~39\ $ (GND))) # (!ClkCounter(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((ClkCounter(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCFF_X1_Y18_N29
\Counter1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter1~5_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	ena => \Counter1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter1(3));

-- Location: LCFF_X1_Y20_N11
\Counter0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter0[2]~1_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter0(2));

-- Location: LCFF_X1_Y19_N11
\ClkCounter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~4_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(18));

-- Location: LCFF_X1_Y19_N21
\ClkCounter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~5_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(17));

-- Location: LCFF_X2_Y19_N17
\ClkCounter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~40_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(20));

-- Location: LCCOMB_X1_Y19_N6
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (ClkCounter(17) & (ClkCounter(19) & (!ClkCounter(20) & ClkCounter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(17),
	datab => ClkCounter(19),
	datac => ClkCounter(20),
	datad => ClkCounter(18),
	combout => \Equal0~1_combout\);

-- Location: LCFF_X1_Y20_N15
\ClkCounter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~8_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(10));

-- Location: LCFF_X2_Y20_N25
\ClkCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~16_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(8));

-- Location: LCFF_X2_Y20_N21
\ClkCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~12_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(6));

-- Location: LCCOMB_X2_Y20_N4
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!ClkCounter(6) & (!ClkCounter(7) & (!ClkCounter(8) & !ClkCounter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(6),
	datab => ClkCounter(7),
	datac => ClkCounter(8),
	datad => ClkCounter(5),
	combout => \Equal0~5_combout\);

-- Location: LCFF_X2_Y20_N13
\ClkCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~4_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(2));

-- Location: LCCOMB_X1_Y18_N28
\Counter1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1~5_combout\ = (Counter1(1) & (Counter1(3) $ (((Counter1(2) & Counter1(0)))))) # (!Counter1(1) & (Counter1(3) & ((Counter1(2)) # (!Counter1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(1),
	datab => Counter1(2),
	datac => Counter1(3),
	datad => Counter1(0),
	combout => \Counter1~5_combout\);

-- Location: LCCOMB_X1_Y20_N10
\Counter0[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter0[2]~1_combout\ = Counter0(2) $ (((\Equal0~7_combout\ & (Counter0(1) & Counter0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => Counter0(1),
	datac => Counter0(2),
	datad => Counter0(0),
	combout => \Counter0[2]~1_combout\);

-- Location: LCCOMB_X1_Y19_N10
\ClkCounter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~4_combout\ = (\Add2~36_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~36_combout\,
	datad => \Equal0~7_combout\,
	combout => \ClkCounter~4_combout\);

-- Location: LCCOMB_X1_Y19_N20
\ClkCounter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~5_combout\ = (\Add2~34_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~34_combout\,
	datad => \Equal0~7_combout\,
	combout => \ClkCounter~5_combout\);

-- Location: LCCOMB_X1_Y20_N14
\ClkCounter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~8_combout\ = (!\Equal0~7_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add2~20_combout\,
	combout => \ClkCounter~8_combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iClk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_iClk,
	combout => \iClk~combout\);

-- Location: CLKCTRL_G10
\iClk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iClk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iClk~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y20_N6
\Counter0[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter0[0]~3_combout\ = !Counter0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Counter0(0),
	combout => \Counter0[0]~3_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inResetAsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inResetAsync,
	combout => \inResetAsync~combout\);

-- Location: LCCOMB_X2_Y20_N8
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ClkCounter(0) $ (VCC)
-- \Add2~1\ = CARRY(ClkCounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X1_Y19_N0
\ClkCounter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~10_combout\ = (!\Equal0~7_combout\ & \Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add2~0_combout\,
	combout => \ClkCounter~10_combout\);

-- Location: LCFF_X1_Y19_N1
\ClkCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~10_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(0));

-- Location: LCCOMB_X2_Y20_N10
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (ClkCounter(1) & (!\Add2~1\)) # (!ClkCounter(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!ClkCounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X2_Y20_N14
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (ClkCounter(3) & (!\Add2~5\)) # (!ClkCounter(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!ClkCounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCFF_X2_Y20_N15
\ClkCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~6_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(3));

-- Location: LCCOMB_X2_Y20_N16
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (ClkCounter(4) & (\Add2~7\ $ (GND))) # (!ClkCounter(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((ClkCounter(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X2_Y20_N18
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (ClkCounter(5) & (!\Add2~9\)) # (!ClkCounter(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!ClkCounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCFF_X2_Y20_N19
\ClkCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~10_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(5));

-- Location: LCCOMB_X2_Y20_N22
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (ClkCounter(7) & (!\Add2~13\)) # (!ClkCounter(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!ClkCounter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCFF_X2_Y20_N23
\ClkCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~14_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(7));

-- Location: LCCOMB_X2_Y20_N26
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (ClkCounter(9) & (!\Add2~17\)) # (!ClkCounter(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!ClkCounter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X2_Y20_N0
\ClkCounter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~9_combout\ = (!\Equal0~7_combout\ & \Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add2~18_combout\,
	combout => \ClkCounter~9_combout\);

-- Location: LCFF_X2_Y20_N1
\ClkCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~9_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(9));

-- Location: LCCOMB_X2_Y20_N30
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (ClkCounter(11) & (!\Add2~21\)) # (!ClkCounter(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!ClkCounter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCFF_X2_Y20_N31
\ClkCounter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~22_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(11));

-- Location: LCCOMB_X2_Y19_N0
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (ClkCounter(12) & (\Add2~23\ $ (GND))) # (!ClkCounter(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((ClkCounter(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X2_Y19_N2
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (ClkCounter(13) & (!\Add2~25\)) # (!ClkCounter(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!ClkCounter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X1_Y19_N16
\ClkCounter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~6_combout\ = (!\Equal0~7_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add2~26_combout\,
	combout => \ClkCounter~6_combout\);

-- Location: LCFF_X1_Y19_N17
\ClkCounter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~6_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(13));

-- Location: LCCOMB_X2_Y19_N4
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (ClkCounter(14) & (\Add2~27\ $ (GND))) # (!ClkCounter(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((ClkCounter(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCFF_X2_Y19_N5
\ClkCounter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~28_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(14));

-- Location: LCCOMB_X2_Y19_N6
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (ClkCounter(15) & (!\Add2~29\)) # (!ClkCounter(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!ClkCounter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X2_Y19_N8
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (ClkCounter(16) & (\Add2~31\ $ (GND))) # (!ClkCounter(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((ClkCounter(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCFF_X2_Y19_N9
\ClkCounter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~32_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(16));

-- Location: LCFF_X2_Y19_N7
\ClkCounter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~30_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(15));

-- Location: LCCOMB_X1_Y19_N2
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (ClkCounter(13) & (!ClkCounter(14) & (!ClkCounter(16) & !ClkCounter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(13),
	datab => ClkCounter(14),
	datac => ClkCounter(16),
	datad => ClkCounter(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y19_N12
\ClkCounter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~7_combout\ = (\Add2~24_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	datad => \Equal0~7_combout\,
	combout => \ClkCounter~7_combout\);

-- Location: LCFF_X1_Y19_N13
\ClkCounter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~7_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(12));

-- Location: LCCOMB_X2_Y20_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (ClkCounter(10) & (!ClkCounter(11) & (ClkCounter(12) & ClkCounter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(10),
	datab => ClkCounter(11),
	datac => ClkCounter(12),
	datad => ClkCounter(9),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y19_N14
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (ClkCounter(19) & (!\Add2~37\)) # (!ClkCounter(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!ClkCounter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X1_Y19_N24
\ClkCounter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~3_combout\ = (\Add2~38_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~38_combout\,
	datad => \Equal0~7_combout\,
	combout => \ClkCounter~3_combout\);

-- Location: LCFF_X1_Y19_N25
\ClkCounter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~3_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(19));

-- Location: LCCOMB_X2_Y19_N18
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (ClkCounter(21) & (!\Add2~41\)) # (!ClkCounter(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!ClkCounter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X1_Y19_N28
\ClkCounter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~2_combout\ = (!\Equal0~7_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add2~42_combout\,
	combout => \ClkCounter~2_combout\);

-- Location: LCFF_X1_Y19_N29
\ClkCounter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~2_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(21));

-- Location: LCCOMB_X2_Y19_N20
\Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (ClkCounter(22) & (\Add2~43\ $ (GND))) # (!ClkCounter(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((ClkCounter(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X1_Y19_N18
\ClkCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~1_combout\ = (!\Equal0~7_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add2~44_combout\,
	combout => \ClkCounter~1_combout\);

-- Location: LCFF_X1_Y19_N19
\ClkCounter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~1_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(22));

-- Location: LCCOMB_X2_Y19_N22
\Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (ClkCounter(23) & (!\Add2~45\)) # (!ClkCounter(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!ClkCounter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ClkCounter(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCFF_X2_Y19_N23
\ClkCounter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~46_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(23));

-- Location: LCCOMB_X2_Y19_N24
\Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = \Add2~47\ $ (!ClkCounter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ClkCounter(24),
	cin => \Add2~47\,
	combout => \Add2~48_combout\);

-- Location: LCCOMB_X1_Y19_N8
\ClkCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ClkCounter~0_combout\ = (!\Equal0~7_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add2~48_combout\,
	combout => \ClkCounter~0_combout\);

-- Location: LCFF_X1_Y19_N9
\ClkCounter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \ClkCounter~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(24));

-- Location: LCCOMB_X1_Y19_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (ClkCounter(21) & (ClkCounter(22) & (ClkCounter(24) & !ClkCounter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(21),
	datab => ClkCounter(22),
	datac => ClkCounter(24),
	datad => ClkCounter(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y19_N14
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCFF_X2_Y20_N17
\ClkCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~8_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(4));

-- Location: LCFF_X2_Y20_N11
\ClkCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add2~2_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ClkCounter(1));

-- Location: LCCOMB_X2_Y20_N6
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!ClkCounter(2) & (!ClkCounter(3) & (!ClkCounter(4) & !ClkCounter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ClkCounter(2),
	datab => ClkCounter(3),
	datac => ClkCounter(4),
	datad => ClkCounter(1),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X1_Y19_N30
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (!ClkCounter(0) & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => ClkCounter(0),
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCFF_X1_Y20_N7
\Counter0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter0[0]~3_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter0(0));

-- Location: LCCOMB_X1_Y20_N8
\Counter0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter0~0_combout\ = (Counter0(1) & (((!Counter0(0))))) # (!Counter0(1) & (Counter0(0) & ((Counter0(2)) # (!Counter0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Counter0~0_combout\);

-- Location: LCFF_X1_Y20_N9
\Counter0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter0~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter0(1));

-- Location: LCCOMB_X1_Y20_N28
\Counter0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter0~2_combout\ = (Counter0(2) & (Counter0(3) $ (((Counter0(1) & Counter0(0)))))) # (!Counter0(2) & (Counter0(3) & ((Counter0(1)) # (!Counter0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(1),
	datac => Counter0(3),
	datad => Counter0(0),
	combout => \Counter0~2_combout\);

-- Location: LCFF_X1_Y20_N29
\Counter0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter0~2_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	ena => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter0(3));

-- Location: LCCOMB_X1_Y20_N16
\Counter1[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1[3]~0_combout\ = (!Counter0(2) & (Counter0(3) & (!Counter0(1) & Counter0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Counter1[3]~0_combout\);

-- Location: LCCOMB_X1_Y19_N26
\Counter1[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1[3]~1_combout\ = (\Counter1[3]~0_combout\ & !ClkCounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter1[3]~0_combout\,
	datad => ClkCounter(0),
	combout => \Counter1[3]~1_combout\);

-- Location: LCCOMB_X1_Y19_N4
\Counter1[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1[3]~2_combout\ = (\Equal0~5_combout\ & (\Counter1[3]~1_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Counter1[3]~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Counter1[3]~2_combout\);

-- Location: LCCOMB_X1_Y18_N22
\Counter1[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1[0]~6_combout\ = !Counter1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Counter1(0),
	combout => \Counter1[0]~6_combout\);

-- Location: LCFF_X1_Y18_N23
\Counter1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter1[0]~6_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	ena => \Counter1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter1(0));

-- Location: LCCOMB_X1_Y18_N2
\Counter1[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1[2]~4_combout\ = Counter1(2) $ (((Counter1(1) & (\Counter1[3]~2_combout\ & Counter1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(1),
	datab => \Counter1[3]~2_combout\,
	datac => Counter1(2),
	datad => Counter1(0),
	combout => \Counter1[2]~4_combout\);

-- Location: LCFF_X1_Y18_N3
\Counter1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter1[2]~4_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter1(2));

-- Location: LCCOMB_X1_Y18_N24
\Counter1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Counter1~3_combout\ = (Counter1(1) & (((!Counter1(0))))) # (!Counter1(1) & (Counter1(0) & ((Counter1(2)) # (!Counter1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Counter1~3_combout\);

-- Location: LCFF_X1_Y18_N25
\Counter1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Counter1~3_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	ena => \Counter1[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Counter1(1));

-- Location: LCCOMB_X1_Y18_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (Counter1(3) & ((Counter1(2) $ (!Counter1(1))) # (!Counter1(0)))) # (!Counter1(3) & ((Counter1(1)) # (Counter1(2) $ (!Counter1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux6~0_combout\);

-- Location: LCFF_X1_Y18_N17
\Seg1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(0));

-- Location: LCCOMB_X1_Y18_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (Counter1(3) & ((Counter1(0) & ((!Counter1(1)))) # (!Counter1(0) & (!Counter1(2))))) # (!Counter1(3) & ((Counter1(1) $ (!Counter1(0))) # (!Counter1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X1_Y18_N27
\Seg1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux5~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(1));

-- Location: LCCOMB_X1_Y18_N12
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (Counter1(3) & (((!Counter1(1) & Counter1(0))) # (!Counter1(2)))) # (!Counter1(3) & ((Counter1(2)) # ((Counter1(0)) # (!Counter1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux4~0_combout\);

-- Location: LCFF_X1_Y18_N13
\Seg1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux4~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(2));

-- Location: LCCOMB_X1_Y18_N6
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (Counter1(0) & ((Counter1(2) $ (Counter1(1))))) # (!Counter1(0) & ((Counter1(3) & ((Counter1(2)) # (!Counter1(1)))) # (!Counter1(3) & ((Counter1(1)) # (!Counter1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X1_Y18_N7
\Seg1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux3~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(3));

-- Location: LCCOMB_X1_Y18_N0
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (Counter1(1) & ((Counter1(3)) # ((!Counter1(0))))) # (!Counter1(1) & ((Counter1(2) & (Counter1(3))) # (!Counter1(2) & ((!Counter1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux2~0_combout\);

-- Location: LCFF_X1_Y18_N1
\Seg1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux2~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(4));

-- Location: LCCOMB_X1_Y18_N10
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (Counter1(2) & ((Counter1(3) $ (!Counter1(1))) # (!Counter1(0)))) # (!Counter1(2) & ((Counter1(3)) # ((!Counter1(1) & !Counter1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X1_Y18_N11
\Seg1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux1~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(5));

-- Location: LCCOMB_X1_Y18_N4
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (Counter1(0) & ((Counter1(3)) # (Counter1(2) $ (Counter1(1))))) # (!Counter1(0) & ((Counter1(1)) # (Counter1(3) $ (Counter1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter1(3),
	datab => Counter1(2),
	datac => Counter1(1),
	datad => Counter1(0),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X1_Y18_N5
\Seg1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux0~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg1(6));

-- Location: LCCOMB_X1_Y20_N0
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (Counter0(2) & ((Counter0(1)) # (Counter0(3) $ (Counter0(0))))) # (!Counter0(2) & ((Counter0(3) $ (Counter0(1))) # (!Counter0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux13~0_combout\);

-- Location: LCFF_X1_Y20_N1
\Seg0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux13~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(0));

-- Location: LCCOMB_X1_Y20_N2
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (Counter0(3) & ((Counter0(0) & ((!Counter0(1)))) # (!Counter0(0) & (!Counter0(2))))) # (!Counter0(3) & ((Counter0(1) $ (!Counter0(0))) # (!Counter0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux12~0_combout\);

-- Location: LCFF_X1_Y20_N3
\Seg0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux12~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(1));

-- Location: LCCOMB_X1_Y20_N4
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (Counter0(2) & (((!Counter0(1) & Counter0(0))) # (!Counter0(3)))) # (!Counter0(2) & ((Counter0(3)) # ((Counter0(0)) # (!Counter0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux11~0_combout\);

-- Location: LCFF_X1_Y20_N5
\Seg0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux11~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(2));

-- Location: LCCOMB_X1_Y20_N22
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (Counter0(0) & (Counter0(2) $ (((Counter0(1)))))) # (!Counter0(0) & ((Counter0(2) & ((Counter0(3)) # (Counter0(1)))) # (!Counter0(2) & ((!Counter0(1)) # (!Counter0(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux10~0_combout\);

-- Location: LCFF_X1_Y20_N23
\Seg0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux10~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(3));

-- Location: LCCOMB_X1_Y20_N24
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (Counter0(1) & (((Counter0(3)) # (!Counter0(0))))) # (!Counter0(1) & ((Counter0(2) & (Counter0(3))) # (!Counter0(2) & ((!Counter0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux9~0_combout\);

-- Location: LCFF_X1_Y20_N25
\Seg0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux9~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(4));

-- Location: LCCOMB_X1_Y20_N26
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (Counter0(2) & ((Counter0(3) $ (!Counter0(1))) # (!Counter0(0)))) # (!Counter0(2) & ((Counter0(3)) # ((!Counter0(1) & !Counter0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux8~0_combout\);

-- Location: LCFF_X1_Y20_N27
\Seg0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux8~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(5));

-- Location: LCCOMB_X1_Y20_N12
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (Counter0(0) & ((Counter0(3)) # (Counter0(2) $ (Counter0(1))))) # (!Counter0(0) & ((Counter0(1)) # (Counter0(2) $ (Counter0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter0(2),
	datab => Counter0(3),
	datac => Counter0(1),
	datad => Counter0(0),
	combout => \Mux7~0_combout\);

-- Location: LCFF_X1_Y20_N13
\Seg0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux7~0_combout\,
	aclr => \ALT_INV_inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Seg0(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg1(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Seg0(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3(6));
END structure;


