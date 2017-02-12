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

-- DATE "02/12/2017 16:32:20"

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

ENTITY 	TestOpticalSensor IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	oDataValid : OUT std_logic;
	iMISO : IN std_logic;
	oSelect : OUT std_logic;
	oSysClk : OUT std_logic;
	oMOSI : OUT std_logic;
	oHEX1 : OUT std_logic_vector(6 DOWNTO 0);
	oHEX2 : OUT std_logic_vector(6 DOWNTO 0);
	oHEX3 : OUT std_logic_vector(6 DOWNTO 0);
	oHEX4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END TestOpticalSensor;

-- Design Ports Information
-- oDataValid	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSelect	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSysClk	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oMOSI	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iClk	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iMISO	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TestOpticalSensor IS
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
SIGNAL ww_oDataValid : std_logic;
SIGNAL ww_iMISO : std_logic;
SIGNAL ww_oSelect : std_logic;
SIGNAL ww_oSysClk : std_logic;
SIGNAL ww_oMOSI : std_logic;
SIGNAL ww_oHEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \iClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inResetAsync~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|Add1~10_combout\ : std_logic;
SIGNAL \uut|Add1~12_combout\ : std_logic;
SIGNAL \uut|Add1~14_combout\ : std_logic;
SIGNAL \uut|Add1~16_combout\ : std_logic;
SIGNAL \uut|Add1~18_combout\ : std_logic;
SIGNAL \uut|Add1~22_combout\ : std_logic;
SIGNAL \uut|Add1~24_combout\ : std_logic;
SIGNAL \uut|Add1~26_combout\ : std_logic;
SIGNAL \uut|Add1~30_combout\ : std_logic;
SIGNAL \uut|Add1~32_combout\ : std_logic;
SIGNAL \uut|Add1~34_combout\ : std_logic;
SIGNAL \uut|Add1~36_combout\ : std_logic;
SIGNAL \uut|Add1~40_combout\ : std_logic;
SIGNAL \uut|Add1~42_combout\ : std_logic;
SIGNAL \uut|Add1~46_combout\ : std_logic;
SIGNAL \uut|Add0~14_combout\ : std_logic;
SIGNAL \uut|Add0~18_combout\ : std_logic;
SIGNAL \uut|Add0~22_combout\ : std_logic;
SIGNAL \uut|Add0~52_combout\ : std_logic;
SIGNAL \uut|Add0~61\ : std_logic;
SIGNAL \uut|Add0~62_combout\ : std_logic;
SIGNAL \uut|Add2~0_combout\ : std_logic;
SIGNAL \uut|Add2~4_combout\ : std_logic;
SIGNAL \uut|Add2~18_combout\ : std_logic;
SIGNAL \uut|Add2~24_combout\ : std_logic;
SIGNAL \uut|Add2~26_combout\ : std_logic;
SIGNAL \uut|Add2~28_combout\ : std_logic;
SIGNAL \uut|Add2~38_combout\ : std_logic;
SIGNAL \uut|Add2~44_combout\ : std_logic;
SIGNAL \uut|Add2~48_combout\ : std_logic;
SIGNAL \uut|Add2~50_combout\ : std_logic;
SIGNAL \uut|Add2~61\ : std_logic;
SIGNAL \uut|Add2~62_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~6_combout\ : std_logic;
SIGNAL \uut|MasterOutput~1_combout\ : std_logic;
SIGNAL \uut|MasterOutput~2_combout\ : std_logic;
SIGNAL \uut|MasterOutput~3_combout\ : std_logic;
SIGNAL \uut|MasterOutput~4_combout\ : std_logic;
SIGNAL \uut|MasterOutput~5_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~3_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~6_combout\ : std_logic;
SIGNAL \uut|Selector2~1_combout\ : std_logic;
SIGNAL \uut|Equal2~1_combout\ : std_logic;
SIGNAL \uut|Equal2~5_combout\ : std_logic;
SIGNAL \uut|Equal2~10_combout\ : std_logic;
SIGNAL \uut|Selector103~1_combout\ : std_logic;
SIGNAL \uut|MasterOutput~9_combout\ : std_logic;
SIGNAL \uut|Selector115~0_combout\ : std_logic;
SIGNAL \uut|Selector1~2_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~10_combout\ : std_logic;
SIGNAL \uut|Selector101~0_combout\ : std_logic;
SIGNAL \uut|Selector70~0_combout\ : std_logic;
SIGNAL \uut|Selector75~0_combout\ : std_logic;
SIGNAL \uut|Selector90~0_combout\ : std_logic;
SIGNAL \uut|Selector92~0_combout\ : std_logic;
SIGNAL \uut|Selector67~0_combout\ : std_logic;
SIGNAL \uut|Selector69~0_combout\ : std_logic;
SIGNAL \uut|Selector38~0_combout\ : std_logic;
SIGNAL \uut|Selector44~0_combout\ : std_logic;
SIGNAL \uut|Selector45~0_combout\ : std_logic;
SIGNAL \uut|Selector47~0_combout\ : std_logic;
SIGNAL \uut|Selector50~0_combout\ : std_logic;
SIGNAL \uut|Selector55~0_combout\ : std_logic;
SIGNAL \uut|Selector56~0_combout\ : std_logic;
SIGNAL \uut|Selector57~0_combout\ : std_logic;
SIGNAL \uut|Selector60~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~3_combout\ : std_logic;
SIGNAL \uut|Decoder0~6_combout\ : std_logic;
SIGNAL \uut|Decoder0~7_combout\ : std_logic;
SIGNAL \uut|Decoder0~8_combout\ : std_logic;
SIGNAL \uut|Decoder0~9_combout\ : std_logic;
SIGNAL \uut|Decoder0~10_combout\ : std_logic;
SIGNAL \uut|Decoder0~11_combout\ : std_logic;
SIGNAL \uut|BurstRegData[45]~5_combout\ : std_logic;
SIGNAL \uut|Decoder0~12_combout\ : std_logic;
SIGNAL \uut|Decoder0~18_combout\ : std_logic;
SIGNAL \GenerateStrobe|ClkCounter~1_combout\ : std_logic;
SIGNAL \uut|Selector15~2_combout\ : std_logic;
SIGNAL \uut|Selector16~2_combout\ : std_logic;
SIGNAL \uut|Selector18~2_combout\ : std_logic;
SIGNAL \uut|Selector20~2_combout\ : std_logic;
SIGNAL \uut|Selector21~2_combout\ : std_logic;
SIGNAL \uut|Selector25~2_combout\ : std_logic;
SIGNAL \uut|Selector28~2_combout\ : std_logic;
SIGNAL \iClk~combout\ : std_logic;
SIGNAL \iClk~clkctrl_outclk\ : std_logic;
SIGNAL \uut|Selector114~0_combout\ : std_logic;
SIGNAL \uut|State.Init~feeder_combout\ : std_logic;
SIGNAL \inResetAsync~combout\ : std_logic;
SIGNAL \inResetAsync~clkctrl_outclk\ : std_logic;
SIGNAL \uut|State.Init~regout\ : std_logic;
SIGNAL \uut|Add1~1\ : std_logic;
SIGNAL \uut|Add1~2_combout\ : std_logic;
SIGNAL \uut|Add2~1\ : std_logic;
SIGNAL \uut|Add2~2_combout\ : std_logic;
SIGNAL \uut|Selector68~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~1\ : std_logic;
SIGNAL \GenerateStrobe|Add0~2_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~3\ : std_logic;
SIGNAL \GenerateStrobe|Add0~5\ : std_logic;
SIGNAL \GenerateStrobe|Add0~7\ : std_logic;
SIGNAL \GenerateStrobe|Add0~8_combout\ : std_logic;
SIGNAL \GenerateStrobe|ClkCounter~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~9\ : std_logic;
SIGNAL \GenerateStrobe|Add0~10_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~4_combout\ : std_logic;
SIGNAL \GenerateStrobe|Equal0~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Equal0~1_combout\ : std_logic;
SIGNAL \GenerateStrobe|oStrobe~regout\ : std_logic;
SIGNAL \uut|Add2~11\ : std_logic;
SIGNAL \uut|Add2~12_combout\ : std_logic;
SIGNAL \uut|Selector63~0_combout\ : std_logic;
SIGNAL \uut|Selector1~5_combout\ : std_logic;
SIGNAL \uut|Selector3~0_combout\ : std_logic;
SIGNAL \uut|Selector1~1_combout\ : std_logic;
SIGNAL \uut|Selector3~1_combout\ : std_logic;
SIGNAL \uut|State.ReadBurstRegister~regout\ : std_logic;
SIGNAL \uut|SysClk~0_combout\ : std_logic;
SIGNAL \uut|Selector103~2_combout\ : std_logic;
SIGNAL \uut|Selector103~3_combout\ : std_logic;
SIGNAL \uut|SysClk~regout\ : std_logic;
SIGNAL \uut|Sel~0_combout\ : std_logic;
SIGNAL \uut|Selector37~1_combout\ : std_logic;
SIGNAL \uut|Selector37~0_combout\ : std_logic;
SIGNAL \uut|Selector37~2_combout\ : std_logic;
SIGNAL \uut|Selector37~3_combout\ : std_logic;
SIGNAL \uut|Sel~regout\ : std_logic;
SIGNAL \uut|Add0~0_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter~4_combout\ : std_logic;
SIGNAL \uut|Selector101~1_combout\ : std_logic;
SIGNAL \uut|Selector101~2_combout\ : std_logic;
SIGNAL \uut|Add0~9\ : std_logic;
SIGNAL \uut|Add0~10_combout\ : std_logic;
SIGNAL \uut|Selector96~0_combout\ : std_logic;
SIGNAL \uut|Add1~0_combout\ : std_logic;
SIGNAL \uut|Selector36~2_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[26]~2_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[0]~5_combout\ : std_logic;
SIGNAL \uut|Decoder0~0_combout\ : std_logic;
SIGNAL \uut|Selector31~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[26]~3_combout\ : std_logic;
SIGNAL \uut|MasterOutput~0_combout\ : std_logic;
SIGNAL \uut|Selector13~2_combout\ : std_logic;
SIGNAL \uut|Selector19~2_combout\ : std_logic;
SIGNAL \uut|Selector23~2_combout\ : std_logic;
SIGNAL \uut|Selector24~2_combout\ : std_logic;
SIGNAL \uut|Selector27~2_combout\ : std_logic;
SIGNAL \uut|Selector30~2_combout\ : std_logic;
SIGNAL \uut|Add1~9\ : std_logic;
SIGNAL \uut|Add1~11\ : std_logic;
SIGNAL \uut|Add1~13\ : std_logic;
SIGNAL \uut|Add1~15\ : std_logic;
SIGNAL \uut|Add1~17\ : std_logic;
SIGNAL \uut|Add1~19\ : std_logic;
SIGNAL \uut|Add1~21\ : std_logic;
SIGNAL \uut|Add1~23\ : std_logic;
SIGNAL \uut|Add1~25\ : std_logic;
SIGNAL \uut|Add1~27\ : std_logic;
SIGNAL \uut|Add1~28_combout\ : std_logic;
SIGNAL \uut|Selector22~2_combout\ : std_logic;
SIGNAL \uut|Add1~29\ : std_logic;
SIGNAL \uut|Add1~31\ : std_logic;
SIGNAL \uut|Add1~33\ : std_logic;
SIGNAL \uut|Add1~35\ : std_logic;
SIGNAL \uut|Add1~37\ : std_logic;
SIGNAL \uut|Add1~38_combout\ : std_logic;
SIGNAL \uut|Selector17~2_combout\ : std_logic;
SIGNAL \uut|Add1~39\ : std_logic;
SIGNAL \uut|Add1~41\ : std_logic;
SIGNAL \uut|Add1~43\ : std_logic;
SIGNAL \uut|Add1~44_combout\ : std_logic;
SIGNAL \uut|Selector14~2_combout\ : std_logic;
SIGNAL \uut|Add1~45\ : std_logic;
SIGNAL \uut|Add1~47\ : std_logic;
SIGNAL \uut|Add1~48_combout\ : std_logic;
SIGNAL \uut|Selector12~2_combout\ : std_logic;
SIGNAL \uut|Add1~49\ : std_logic;
SIGNAL \uut|Add1~50_combout\ : std_logic;
SIGNAL \uut|Selector11~2_combout\ : std_logic;
SIGNAL \uut|Add1~51\ : std_logic;
SIGNAL \uut|Add1~52_combout\ : std_logic;
SIGNAL \uut|Selector10~2_combout\ : std_logic;
SIGNAL \uut|Add1~53\ : std_logic;
SIGNAL \uut|Add1~54_combout\ : std_logic;
SIGNAL \uut|Selector9~2_combout\ : std_logic;
SIGNAL \uut|Add1~55\ : std_logic;
SIGNAL \uut|Add1~56_combout\ : std_logic;
SIGNAL \uut|Selector8~2_combout\ : std_logic;
SIGNAL \uut|Add1~57\ : std_logic;
SIGNAL \uut|Add1~58_combout\ : std_logic;
SIGNAL \uut|Selector7~2_combout\ : std_logic;
SIGNAL \uut|Add1~59\ : std_logic;
SIGNAL \uut|Add1~60_combout\ : std_logic;
SIGNAL \uut|Selector6~2_combout\ : std_logic;
SIGNAL \uut|Add1~61\ : std_logic;
SIGNAL \uut|Add1~62_combout\ : std_logic;
SIGNAL \uut|Selector5~2_combout\ : std_logic;
SIGNAL \uut|Selector29~2_combout\ : std_logic;
SIGNAL \uut|Add1~20_combout\ : std_logic;
SIGNAL \uut|Selector26~2_combout\ : std_logic;
SIGNAL \uut|MasterOutput~7_combout\ : std_logic;
SIGNAL \uut|Equal1~0_combout\ : std_logic;
SIGNAL \uut|Equal1~1_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[3]~0_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[3]~2_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[3]~3_combout\ : std_logic;
SIGNAL \uut|Add0~11\ : std_logic;
SIGNAL \uut|Add0~12_combout\ : std_logic;
SIGNAL \uut|Selector95~0_combout\ : std_logic;
SIGNAL \uut|Equal0~0_combout\ : std_logic;
SIGNAL \uut|Equal0~1_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[3]~1_combout\ : std_logic;
SIGNAL \uut|Add0~1\ : std_logic;
SIGNAL \uut|Add0~3\ : std_logic;
SIGNAL \uut|Add0~4_combout\ : std_logic;
SIGNAL \uut|Selector99~0_combout\ : std_logic;
SIGNAL \uut|Add0~5\ : std_logic;
SIGNAL \uut|Add0~6_combout\ : std_logic;
SIGNAL \uut|Selector98~0_combout\ : std_logic;
SIGNAL \uut|Add0~7\ : std_logic;
SIGNAL \uut|Add0~8_combout\ : std_logic;
SIGNAL \uut|Selector97~0_combout\ : std_logic;
SIGNAL \uut|Selector94~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~7_combout\ : std_logic;
SIGNAL \uut|Add0~2_combout\ : std_logic;
SIGNAL \uut|Selector100~0_combout\ : std_logic;
SIGNAL \uut|Add0~13\ : std_logic;
SIGNAL \uut|Add0~15\ : std_logic;
SIGNAL \uut|Add0~16_combout\ : std_logic;
SIGNAL \uut|Selector93~0_combout\ : std_logic;
SIGNAL \uut|Add0~17\ : std_logic;
SIGNAL \uut|Add0~19\ : std_logic;
SIGNAL \uut|Add0~20_combout\ : std_logic;
SIGNAL \uut|Selector91~0_combout\ : std_logic;
SIGNAL \uut|Add0~21\ : std_logic;
SIGNAL \uut|Add0~23\ : std_logic;
SIGNAL \uut|Add0~24_combout\ : std_logic;
SIGNAL \uut|Selector89~0_combout\ : std_logic;
SIGNAL \uut|Add0~25\ : std_logic;
SIGNAL \uut|Add0~26_combout\ : std_logic;
SIGNAL \uut|Selector88~0_combout\ : std_logic;
SIGNAL \uut|Add0~27\ : std_logic;
SIGNAL \uut|Add0~28_combout\ : std_logic;
SIGNAL \uut|Selector87~0_combout\ : std_logic;
SIGNAL \uut|Add0~29\ : std_logic;
SIGNAL \uut|Add0~30_combout\ : std_logic;
SIGNAL \uut|Selector86~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~5_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~8_combout\ : std_logic;
SIGNAL \uut|Add0~31\ : std_logic;
SIGNAL \uut|Add0~32_combout\ : std_logic;
SIGNAL \uut|Selector85~0_combout\ : std_logic;
SIGNAL \uut|Add0~33\ : std_logic;
SIGNAL \uut|Add0~34_combout\ : std_logic;
SIGNAL \uut|Selector84~0_combout\ : std_logic;
SIGNAL \uut|Add0~35\ : std_logic;
SIGNAL \uut|Add0~36_combout\ : std_logic;
SIGNAL \uut|Selector83~0_combout\ : std_logic;
SIGNAL \uut|Add0~37\ : std_logic;
SIGNAL \uut|Add0~38_combout\ : std_logic;
SIGNAL \uut|Selector82~0_combout\ : std_logic;
SIGNAL \uut|Add0~39\ : std_logic;
SIGNAL \uut|Add0~41\ : std_logic;
SIGNAL \uut|Add0~42_combout\ : std_logic;
SIGNAL \uut|Selector80~0_combout\ : std_logic;
SIGNAL \uut|Add0~43\ : std_logic;
SIGNAL \uut|Add0~44_combout\ : std_logic;
SIGNAL \uut|Selector79~0_combout\ : std_logic;
SIGNAL \uut|Add0~45\ : std_logic;
SIGNAL \uut|Add0~47\ : std_logic;
SIGNAL \uut|Add0~48_combout\ : std_logic;
SIGNAL \uut|Selector77~0_combout\ : std_logic;
SIGNAL \uut|Add0~49\ : std_logic;
SIGNAL \uut|Add0~50_combout\ : std_logic;
SIGNAL \uut|Selector76~0_combout\ : std_logic;
SIGNAL \uut|Add0~51\ : std_logic;
SIGNAL \uut|Add0~53\ : std_logic;
SIGNAL \uut|Add0~54_combout\ : std_logic;
SIGNAL \uut|Selector74~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~1_combout\ : std_logic;
SIGNAL \uut|Add0~40_combout\ : std_logic;
SIGNAL \uut|Selector81~0_combout\ : std_logic;
SIGNAL \uut|Add0~46_combout\ : std_logic;
SIGNAL \uut|Selector78~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~2_combout\ : std_logic;
SIGNAL \uut|Add0~55\ : std_logic;
SIGNAL \uut|Add0~56_combout\ : std_logic;
SIGNAL \uut|Selector73~0_combout\ : std_logic;
SIGNAL \uut|Add0~57\ : std_logic;
SIGNAL \uut|Add0~58_combout\ : std_logic;
SIGNAL \uut|Selector72~0_combout\ : std_logic;
SIGNAL \uut|Add0~59\ : std_logic;
SIGNAL \uut|Add0~60_combout\ : std_logic;
SIGNAL \uut|Selector71~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~4_combout\ : std_logic;
SIGNAL \uut|Selector1~3_combout\ : std_logic;
SIGNAL \uut|Selector1~4_combout\ : std_logic;
SIGNAL \uut|Selector1~6_combout\ : std_logic;
SIGNAL \uut|Selector1~7_combout\ : std_logic;
SIGNAL \uut|State.SetBurstRegister~regout\ : std_logic;
SIGNAL \uut|Selector69~1_combout\ : std_logic;
SIGNAL \uut|Equal4~0_combout\ : std_logic;
SIGNAL \uut|Selector103~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~9_combout\ : std_logic;
SIGNAL \uut|Selector1~0_combout\ : std_logic;
SIGNAL \uut|Selector4~0_combout\ : std_logic;
SIGNAL \uut|State.OutputAndWaitForWrite~regout\ : std_logic;
SIGNAL \uut|Selector37~4_combout\ : std_logic;
SIGNAL \uut|CntWaitCycles[30]~1_combout\ : std_logic;
SIGNAL \uut|Add2~3\ : std_logic;
SIGNAL \uut|Add2~5\ : std_logic;
SIGNAL \uut|Add2~6_combout\ : std_logic;
SIGNAL \uut|Selector66~0_combout\ : std_logic;
SIGNAL \uut|Add2~7\ : std_logic;
SIGNAL \uut|Add2~9\ : std_logic;
SIGNAL \uut|Add2~10_combout\ : std_logic;
SIGNAL \uut|Selector64~0_combout\ : std_logic;
SIGNAL \uut|Equal2~8_combout\ : std_logic;
SIGNAL \uut|CntWaitCycles[30]~0_combout\ : std_logic;
SIGNAL \uut|Add2~8_combout\ : std_logic;
SIGNAL \uut|Selector65~0_combout\ : std_logic;
SIGNAL \uut|Equal2~7_combout\ : std_logic;
SIGNAL \uut|Add2~13\ : std_logic;
SIGNAL \uut|Add2~14_combout\ : std_logic;
SIGNAL \uut|Selector62~0_combout\ : std_logic;
SIGNAL \uut|Add2~15\ : std_logic;
SIGNAL \uut|Add2~16_combout\ : std_logic;
SIGNAL \uut|Selector61~0_combout\ : std_logic;
SIGNAL \uut|Add2~17\ : std_logic;
SIGNAL \uut|Add2~19\ : std_logic;
SIGNAL \uut|Add2~20_combout\ : std_logic;
SIGNAL \uut|Selector59~0_combout\ : std_logic;
SIGNAL \uut|Add2~21\ : std_logic;
SIGNAL \uut|Add2~22_combout\ : std_logic;
SIGNAL \uut|Selector58~0_combout\ : std_logic;
SIGNAL \uut|Equal2~6_combout\ : std_logic;
SIGNAL \uut|Equal4~1_combout\ : std_logic;
SIGNAL \uut|Add2~23\ : std_logic;
SIGNAL \uut|Add2~25\ : std_logic;
SIGNAL \uut|Add2~27\ : std_logic;
SIGNAL \uut|Add2~29\ : std_logic;
SIGNAL \uut|Add2~30_combout\ : std_logic;
SIGNAL \uut|Selector54~0_combout\ : std_logic;
SIGNAL \uut|Add2~31\ : std_logic;
SIGNAL \uut|Add2~33\ : std_logic;
SIGNAL \uut|Add2~34_combout\ : std_logic;
SIGNAL \uut|Selector52~0_combout\ : std_logic;
SIGNAL \uut|Add2~35\ : std_logic;
SIGNAL \uut|Add2~36_combout\ : std_logic;
SIGNAL \uut|Selector51~0_combout\ : std_logic;
SIGNAL \uut|Add2~37\ : std_logic;
SIGNAL \uut|Add2~39\ : std_logic;
SIGNAL \uut|Add2~41\ : std_logic;
SIGNAL \uut|Add2~42_combout\ : std_logic;
SIGNAL \uut|Selector48~0_combout\ : std_logic;
SIGNAL \uut|Add2~43\ : std_logic;
SIGNAL \uut|Add2~45\ : std_logic;
SIGNAL \uut|Add2~46_combout\ : std_logic;
SIGNAL \uut|Selector46~0_combout\ : std_logic;
SIGNAL \uut|Add2~47\ : std_logic;
SIGNAL \uut|Add2~49\ : std_logic;
SIGNAL \uut|Add2~51\ : std_logic;
SIGNAL \uut|Add2~52_combout\ : std_logic;
SIGNAL \uut|Selector43~0_combout\ : std_logic;
SIGNAL \uut|Add2~53\ : std_logic;
SIGNAL \uut|Add2~54_combout\ : std_logic;
SIGNAL \uut|Selector42~0_combout\ : std_logic;
SIGNAL \uut|Add2~55\ : std_logic;
SIGNAL \uut|Add2~57\ : std_logic;
SIGNAL \uut|Add2~58_combout\ : std_logic;
SIGNAL \uut|Selector40~0_combout\ : std_logic;
SIGNAL \uut|Add2~59\ : std_logic;
SIGNAL \uut|Add2~60_combout\ : std_logic;
SIGNAL \uut|Selector39~0_combout\ : std_logic;
SIGNAL \uut|Add2~56_combout\ : std_logic;
SIGNAL \uut|Selector41~0_combout\ : std_logic;
SIGNAL \uut|Equal2~0_combout\ : std_logic;
SIGNAL \uut|Add2~32_combout\ : std_logic;
SIGNAL \uut|Selector53~0_combout\ : std_logic;
SIGNAL \uut|Equal2~3_combout\ : std_logic;
SIGNAL \uut|Add2~40_combout\ : std_logic;
SIGNAL \uut|Selector49~0_combout\ : std_logic;
SIGNAL \uut|Equal2~2_combout\ : std_logic;
SIGNAL \uut|Equal2~4_combout\ : std_logic;
SIGNAL \uut|Equal4~2_combout\ : std_logic;
SIGNAL \uut|Equal2~9_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[0]~4_combout\ : std_logic;
SIGNAL \uut|Selector2~2_combout\ : std_logic;
SIGNAL \uut|Selector2~3_combout\ : std_logic;
SIGNAL \uut|State.WaitForRead~regout\ : std_logic;
SIGNAL \uut|Selector35~2_combout\ : std_logic;
SIGNAL \uut|Add1~3\ : std_logic;
SIGNAL \uut|Add1~4_combout\ : std_logic;
SIGNAL \uut|Selector34~2_combout\ : std_logic;
SIGNAL \uut|Add1~5\ : std_logic;
SIGNAL \uut|Add1~6_combout\ : std_logic;
SIGNAL \uut|Selector33~2_combout\ : std_logic;
SIGNAL \uut|Add1~7\ : std_logic;
SIGNAL \uut|Add1~8_combout\ : std_logic;
SIGNAL \uut|Selector32~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~2_combout\ : std_logic;
SIGNAL \uut|LessThan1~0_combout\ : std_logic;
SIGNAL \uut|MasterOutput~6_combout\ : std_logic;
SIGNAL \uut|MasterOutput~8_combout\ : std_logic;
SIGNAL \uut|Decoder0~1_combout\ : std_logic;
SIGNAL \uut|Decoder0~5_combout\ : std_logic;
SIGNAL \iMISO~combout\ : std_logic;
SIGNAL \uut|BurstRegData[46]~1_combout\ : std_logic;
SIGNAL \uut|Selector117~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[43]~3_combout\ : std_logic;
SIGNAL \uut|Selector116~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[44]~2_combout\ : std_logic;
SIGNAL \CheckValidData~0_combout\ : std_logic;
SIGNAL \uut|Selector113~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~4_combout\ : std_logic;
SIGNAL \uut|BurstRegData[47]~0_combout\ : std_logic;
SIGNAL \uut|Selector118~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[42]~6_combout\ : std_logic;
SIGNAL \uut|Selector119~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[41]~7_combout\ : std_logic;
SIGNAL \CheckValidData~1_combout\ : std_logic;
SIGNAL \CheckValidData~2_combout\ : std_logic;
SIGNAL \uut|Selector121~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~13_combout\ : std_logic;
SIGNAL \uut|Decoder0~14_combout\ : std_logic;
SIGNAL \uut|BurstRegData[39]~8_combout\ : std_logic;
SIGNAL \uut|Selector125~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~16_combout\ : std_logic;
SIGNAL \uut|Decoder0~17_combout\ : std_logic;
SIGNAL \uut|BurstRegData[35]~11_combout\ : std_logic;
SIGNAL \uut|Selector122~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~15_combout\ : std_logic;
SIGNAL \uut|BurstRegData[38]~9_combout\ : std_logic;
SIGNAL \uut|Selector124~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[36]~10_combout\ : std_logic;
SIGNAL \CheckValidData~3_combout\ : std_logic;
SIGNAL \uut|Selector123~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~19_combout\ : std_logic;
SIGNAL \uut|BurstRegData[37]~13_combout\ : std_logic;
SIGNAL \uut|Selector127~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[33]~15_combout\ : std_logic;
SIGNAL \CheckValidData~4_combout\ : std_logic;
SIGNAL \CheckValidData~5_combout\ : std_logic;
SIGNAL \uut|Selector104~0_combout\ : std_logic;
SIGNAL \uut|DataValid~regout\ : std_logic;
SIGNAL \CheckValidData~6_combout\ : std_logic;
SIGNAL \oDataValid~reg0_regout\ : std_logic;
SIGNAL \uut|Selector102~0_combout\ : std_logic;
SIGNAL \uut|MasterOutput~10_combout\ : std_logic;
SIGNAL \uut|Selector102~1_combout\ : std_logic;
SIGNAL \uut|MasterOutput~regout\ : std_logic;
SIGNAL \uut|Selector126~0_combout\ : std_logic;
SIGNAL \uut|Decoder0~20_combout\ : std_logic;
SIGNAL \uut|Decoder0~21_combout\ : std_logic;
SIGNAL \uut|BurstRegData[34]~14_combout\ : std_logic;
SIGNAL \uut|Selector128~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[32]~12_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \oHEX1[0]~reg0_regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \oHEX1[1]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \oHEX1[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \oHEX1[3]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \oHEX1[4]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \oHEX1[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \oHEX1[6]~reg0_regout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \oHEX2[0]~reg0_regout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \oHEX2[1]~reg0_regout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \oHEX2[2]~reg0_regout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \oHEX2[3]~reg0_regout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \oHEX2[4]~reg0_regout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \oHEX2[5]~reg0_regout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \oHEX2[6]~reg0_regout\ : std_logic;
SIGNAL \uut|Selector120~0_combout\ : std_logic;
SIGNAL \uut|BurstRegData[40]~4_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \oHEX3[0]~reg0_regout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \oHEX3[1]~reg0_regout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \oHEX3[2]~reg0_regout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \oHEX3[3]~reg0_regout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \oHEX3[4]~reg0_regout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \oHEX3[5]~reg0_regout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \oHEX3[6]~reg0_regout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \oHEX4[0]~reg0_regout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \oHEX4[1]~reg0_regout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \oHEX4[2]~reg0_regout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \oHEX4[3]~reg0_regout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \oHEX4[4]~reg0_regout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \oHEX4[5]~reg0_regout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \oHEX4[6]~reg0_regout\ : std_logic;
SIGNAL \uut|oDataY\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|oDataX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|SysClkGenCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|SlaveClkCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|CntWaitCycles\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|BurstRegData\ : std_logic_vector(55 DOWNTO 0);
SIGNAL \GenerateStrobe|ClkCounter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_inResetAsync~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_oHEX4[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX4[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX4[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX4[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX4[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX4[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX3[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX3[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX3[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX3[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX3[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX3[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX2[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX2[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX2[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX2[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX2[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX2[0]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX1[5]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX1[4]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX1[3]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX1[2]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX1[1]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_oHEX1[0]~reg0_regout\ : std_logic;
SIGNAL \uut|ALT_INV_SysClk~regout\ : std_logic;
SIGNAL \uut|ALT_INV_Sel~regout\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
oDataValid <= ww_oDataValid;
ww_iMISO <= iMISO;
oSelect <= ww_oSelect;
oSysClk <= ww_oSysClk;
oMOSI <= ww_oMOSI;
oHEX1 <= ww_oHEX1;
oHEX2 <= ww_oHEX2;
oHEX3 <= ww_oHEX3;
oHEX4 <= ww_oHEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iClk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \iClk~combout\);

\inResetAsync~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inResetAsync~combout\);
\ALT_INV_inResetAsync~clkctrl_outclk\ <= NOT \inResetAsync~clkctrl_outclk\;
\ALT_INV_oHEX4[5]~reg0_regout\ <= NOT \oHEX4[5]~reg0_regout\;
\ALT_INV_oHEX4[4]~reg0_regout\ <= NOT \oHEX4[4]~reg0_regout\;
\ALT_INV_oHEX4[3]~reg0_regout\ <= NOT \oHEX4[3]~reg0_regout\;
\ALT_INV_oHEX4[2]~reg0_regout\ <= NOT \oHEX4[2]~reg0_regout\;
\ALT_INV_oHEX4[1]~reg0_regout\ <= NOT \oHEX4[1]~reg0_regout\;
\ALT_INV_oHEX4[0]~reg0_regout\ <= NOT \oHEX4[0]~reg0_regout\;
\ALT_INV_oHEX3[5]~reg0_regout\ <= NOT \oHEX3[5]~reg0_regout\;
\ALT_INV_oHEX3[4]~reg0_regout\ <= NOT \oHEX3[4]~reg0_regout\;
\ALT_INV_oHEX3[3]~reg0_regout\ <= NOT \oHEX3[3]~reg0_regout\;
\ALT_INV_oHEX3[2]~reg0_regout\ <= NOT \oHEX3[2]~reg0_regout\;
\ALT_INV_oHEX3[1]~reg0_regout\ <= NOT \oHEX3[1]~reg0_regout\;
\ALT_INV_oHEX3[0]~reg0_regout\ <= NOT \oHEX3[0]~reg0_regout\;
\ALT_INV_oHEX2[5]~reg0_regout\ <= NOT \oHEX2[5]~reg0_regout\;
\ALT_INV_oHEX2[4]~reg0_regout\ <= NOT \oHEX2[4]~reg0_regout\;
\ALT_INV_oHEX2[3]~reg0_regout\ <= NOT \oHEX2[3]~reg0_regout\;
\ALT_INV_oHEX2[2]~reg0_regout\ <= NOT \oHEX2[2]~reg0_regout\;
\ALT_INV_oHEX2[1]~reg0_regout\ <= NOT \oHEX2[1]~reg0_regout\;
\ALT_INV_oHEX2[0]~reg0_regout\ <= NOT \oHEX2[0]~reg0_regout\;
\ALT_INV_oHEX1[5]~reg0_regout\ <= NOT \oHEX1[5]~reg0_regout\;
\ALT_INV_oHEX1[4]~reg0_regout\ <= NOT \oHEX1[4]~reg0_regout\;
\ALT_INV_oHEX1[3]~reg0_regout\ <= NOT \oHEX1[3]~reg0_regout\;
\ALT_INV_oHEX1[2]~reg0_regout\ <= NOT \oHEX1[2]~reg0_regout\;
\ALT_INV_oHEX1[1]~reg0_regout\ <= NOT \oHEX1[1]~reg0_regout\;
\ALT_INV_oHEX1[0]~reg0_regout\ <= NOT \oHEX1[0]~reg0_regout\;
\uut|ALT_INV_SysClk~regout\ <= NOT \uut|SysClk~regout\;
\uut|ALT_INV_Sel~regout\ <= NOT \uut|Sel~regout\;

-- Location: LCFF_X2_Y21_N7
\uut|oDataX[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector115~0_combout\,
	sdata => \uut|BurstRegData\(45),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(5));

-- Location: LCCOMB_X25_Y14_N10
\uut|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~10_combout\ = (\uut|SlaveClkCounter\(5) & (\uut|Add1~9\ & VCC)) # (!\uut|SlaveClkCounter\(5) & (!\uut|Add1~9\))
-- \uut|Add1~11\ = CARRY((!\uut|SlaveClkCounter\(5) & !\uut|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(5),
	datad => VCC,
	cin => \uut|Add1~9\,
	combout => \uut|Add1~10_combout\,
	cout => \uut|Add1~11\);

-- Location: LCCOMB_X25_Y14_N12
\uut|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~12_combout\ = (\uut|SlaveClkCounter\(6) & ((GND) # (!\uut|Add1~11\))) # (!\uut|SlaveClkCounter\(6) & (\uut|Add1~11\ $ (GND)))
-- \uut|Add1~13\ = CARRY((\uut|SlaveClkCounter\(6)) # (!\uut|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(6),
	datad => VCC,
	cin => \uut|Add1~11\,
	combout => \uut|Add1~12_combout\,
	cout => \uut|Add1~13\);

-- Location: LCCOMB_X25_Y14_N14
\uut|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~14_combout\ = (\uut|SlaveClkCounter\(7) & (\uut|Add1~13\ & VCC)) # (!\uut|SlaveClkCounter\(7) & (!\uut|Add1~13\))
-- \uut|Add1~15\ = CARRY((!\uut|SlaveClkCounter\(7) & !\uut|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(7),
	datad => VCC,
	cin => \uut|Add1~13\,
	combout => \uut|Add1~14_combout\,
	cout => \uut|Add1~15\);

-- Location: LCCOMB_X25_Y14_N16
\uut|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~16_combout\ = (\uut|SlaveClkCounter\(8) & ((GND) # (!\uut|Add1~15\))) # (!\uut|SlaveClkCounter\(8) & (\uut|Add1~15\ $ (GND)))
-- \uut|Add1~17\ = CARRY((\uut|SlaveClkCounter\(8)) # (!\uut|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(8),
	datad => VCC,
	cin => \uut|Add1~15\,
	combout => \uut|Add1~16_combout\,
	cout => \uut|Add1~17\);

-- Location: LCCOMB_X25_Y14_N18
\uut|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~18_combout\ = (\uut|SlaveClkCounter\(9) & (\uut|Add1~17\ & VCC)) # (!\uut|SlaveClkCounter\(9) & (!\uut|Add1~17\))
-- \uut|Add1~19\ = CARRY((!\uut|SlaveClkCounter\(9) & !\uut|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(9),
	datad => VCC,
	cin => \uut|Add1~17\,
	combout => \uut|Add1~18_combout\,
	cout => \uut|Add1~19\);

-- Location: LCCOMB_X25_Y14_N22
\uut|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~22_combout\ = (\uut|SlaveClkCounter\(11) & (\uut|Add1~21\ & VCC)) # (!\uut|SlaveClkCounter\(11) & (!\uut|Add1~21\))
-- \uut|Add1~23\ = CARRY((!\uut|SlaveClkCounter\(11) & !\uut|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(11),
	datad => VCC,
	cin => \uut|Add1~21\,
	combout => \uut|Add1~22_combout\,
	cout => \uut|Add1~23\);

-- Location: LCCOMB_X25_Y14_N24
\uut|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~24_combout\ = (\uut|SlaveClkCounter\(12) & ((GND) # (!\uut|Add1~23\))) # (!\uut|SlaveClkCounter\(12) & (\uut|Add1~23\ $ (GND)))
-- \uut|Add1~25\ = CARRY((\uut|SlaveClkCounter\(12)) # (!\uut|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(12),
	datad => VCC,
	cin => \uut|Add1~23\,
	combout => \uut|Add1~24_combout\,
	cout => \uut|Add1~25\);

-- Location: LCCOMB_X25_Y14_N26
\uut|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~26_combout\ = (\uut|SlaveClkCounter\(13) & (\uut|Add1~25\ & VCC)) # (!\uut|SlaveClkCounter\(13) & (!\uut|Add1~25\))
-- \uut|Add1~27\ = CARRY((!\uut|SlaveClkCounter\(13) & !\uut|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(13),
	datad => VCC,
	cin => \uut|Add1~25\,
	combout => \uut|Add1~26_combout\,
	cout => \uut|Add1~27\);

-- Location: LCCOMB_X25_Y14_N30
\uut|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~30_combout\ = (\uut|SlaveClkCounter\(15) & (\uut|Add1~29\ & VCC)) # (!\uut|SlaveClkCounter\(15) & (!\uut|Add1~29\))
-- \uut|Add1~31\ = CARRY((!\uut|SlaveClkCounter\(15) & !\uut|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(15),
	datad => VCC,
	cin => \uut|Add1~29\,
	combout => \uut|Add1~30_combout\,
	cout => \uut|Add1~31\);

-- Location: LCCOMB_X25_Y13_N0
\uut|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~32_combout\ = (\uut|SlaveClkCounter\(16) & ((GND) # (!\uut|Add1~31\))) # (!\uut|SlaveClkCounter\(16) & (\uut|Add1~31\ $ (GND)))
-- \uut|Add1~33\ = CARRY((\uut|SlaveClkCounter\(16)) # (!\uut|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(16),
	datad => VCC,
	cin => \uut|Add1~31\,
	combout => \uut|Add1~32_combout\,
	cout => \uut|Add1~33\);

-- Location: LCCOMB_X25_Y13_N2
\uut|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~34_combout\ = (\uut|SlaveClkCounter\(17) & (\uut|Add1~33\ & VCC)) # (!\uut|SlaveClkCounter\(17) & (!\uut|Add1~33\))
-- \uut|Add1~35\ = CARRY((!\uut|SlaveClkCounter\(17) & !\uut|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(17),
	datad => VCC,
	cin => \uut|Add1~33\,
	combout => \uut|Add1~34_combout\,
	cout => \uut|Add1~35\);

-- Location: LCCOMB_X25_Y13_N4
\uut|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~36_combout\ = (\uut|SlaveClkCounter\(18) & ((GND) # (!\uut|Add1~35\))) # (!\uut|SlaveClkCounter\(18) & (\uut|Add1~35\ $ (GND)))
-- \uut|Add1~37\ = CARRY((\uut|SlaveClkCounter\(18)) # (!\uut|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(18),
	datad => VCC,
	cin => \uut|Add1~35\,
	combout => \uut|Add1~36_combout\,
	cout => \uut|Add1~37\);

-- Location: LCCOMB_X25_Y13_N8
\uut|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~40_combout\ = (\uut|SlaveClkCounter\(20) & ((GND) # (!\uut|Add1~39\))) # (!\uut|SlaveClkCounter\(20) & (\uut|Add1~39\ $ (GND)))
-- \uut|Add1~41\ = CARRY((\uut|SlaveClkCounter\(20)) # (!\uut|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(20),
	datad => VCC,
	cin => \uut|Add1~39\,
	combout => \uut|Add1~40_combout\,
	cout => \uut|Add1~41\);

-- Location: LCCOMB_X25_Y13_N10
\uut|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~42_combout\ = (\uut|SlaveClkCounter\(21) & (\uut|Add1~41\ & VCC)) # (!\uut|SlaveClkCounter\(21) & (!\uut|Add1~41\))
-- \uut|Add1~43\ = CARRY((!\uut|SlaveClkCounter\(21) & !\uut|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(21),
	datad => VCC,
	cin => \uut|Add1~41\,
	combout => \uut|Add1~42_combout\,
	cout => \uut|Add1~43\);

-- Location: LCCOMB_X25_Y13_N14
\uut|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~46_combout\ = (\uut|SlaveClkCounter\(23) & (\uut|Add1~45\ & VCC)) # (!\uut|SlaveClkCounter\(23) & (!\uut|Add1~45\))
-- \uut|Add1~47\ = CARRY((!\uut|SlaveClkCounter\(23) & !\uut|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(23),
	datad => VCC,
	cin => \uut|Add1~45\,
	combout => \uut|Add1~46_combout\,
	cout => \uut|Add1~47\);

-- Location: LCCOMB_X23_Y16_N14
\uut|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~14_combout\ = (\uut|SysClkGenCounter\(7) & (!\uut|Add0~13\)) # (!\uut|SysClkGenCounter\(7) & ((\uut|Add0~13\) # (GND)))
-- \uut|Add0~15\ = CARRY((!\uut|Add0~13\) # (!\uut|SysClkGenCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(7),
	datad => VCC,
	cin => \uut|Add0~13\,
	combout => \uut|Add0~14_combout\,
	cout => \uut|Add0~15\);

-- Location: LCCOMB_X23_Y16_N18
\uut|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~18_combout\ = (\uut|SysClkGenCounter\(9) & (!\uut|Add0~17\)) # (!\uut|SysClkGenCounter\(9) & ((\uut|Add0~17\) # (GND)))
-- \uut|Add0~19\ = CARRY((!\uut|Add0~17\) # (!\uut|SysClkGenCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(9),
	datad => VCC,
	cin => \uut|Add0~17\,
	combout => \uut|Add0~18_combout\,
	cout => \uut|Add0~19\);

-- Location: LCCOMB_X23_Y16_N22
\uut|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~22_combout\ = (\uut|SysClkGenCounter\(11) & (!\uut|Add0~21\)) # (!\uut|SysClkGenCounter\(11) & ((\uut|Add0~21\) # (GND)))
-- \uut|Add0~23\ = CARRY((!\uut|Add0~21\) # (!\uut|SysClkGenCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(11),
	datad => VCC,
	cin => \uut|Add0~21\,
	combout => \uut|Add0~22_combout\,
	cout => \uut|Add0~23\);

-- Location: LCCOMB_X23_Y15_N20
\uut|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~52_combout\ = (\uut|SysClkGenCounter\(26) & (\uut|Add0~51\ $ (GND))) # (!\uut|SysClkGenCounter\(26) & (!\uut|Add0~51\ & VCC))
-- \uut|Add0~53\ = CARRY((\uut|SysClkGenCounter\(26) & !\uut|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(26),
	datad => VCC,
	cin => \uut|Add0~51\,
	combout => \uut|Add0~52_combout\,
	cout => \uut|Add0~53\);

-- Location: LCCOMB_X23_Y15_N28
\uut|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~60_combout\ = (\uut|SysClkGenCounter\(30) & (\uut|Add0~59\ $ (GND))) # (!\uut|SysClkGenCounter\(30) & (!\uut|Add0~59\ & VCC))
-- \uut|Add0~61\ = CARRY((\uut|SysClkGenCounter\(30) & !\uut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(30),
	datad => VCC,
	cin => \uut|Add0~59\,
	combout => \uut|Add0~60_combout\,
	cout => \uut|Add0~61\);

-- Location: LCCOMB_X23_Y15_N30
\uut|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~62_combout\ = \uut|Add0~61\ $ (\uut|SysClkGenCounter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|SysClkGenCounter\(31),
	cin => \uut|Add0~61\,
	combout => \uut|Add0~62_combout\);

-- Location: LCCOMB_X43_Y15_N0
\uut|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~0_combout\ = \uut|CntWaitCycles\(0) $ (GND)
-- \uut|Add2~1\ = CARRY(!\uut|CntWaitCycles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(0),
	datad => VCC,
	combout => \uut|Add2~0_combout\,
	cout => \uut|Add2~1\);

-- Location: LCCOMB_X43_Y15_N4
\uut|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~4_combout\ = (\uut|CntWaitCycles\(2) & (\uut|Add2~3\ $ (GND))) # (!\uut|CntWaitCycles\(2) & (!\uut|Add2~3\ & VCC))
-- \uut|Add2~5\ = CARRY((\uut|CntWaitCycles\(2) & !\uut|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(2),
	datad => VCC,
	cin => \uut|Add2~3\,
	combout => \uut|Add2~4_combout\,
	cout => \uut|Add2~5\);

-- Location: LCCOMB_X43_Y15_N18
\uut|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~18_combout\ = (\uut|CntWaitCycles\(9) & (!\uut|Add2~17\)) # (!\uut|CntWaitCycles\(9) & ((\uut|Add2~17\) # (GND)))
-- \uut|Add2~19\ = CARRY((!\uut|Add2~17\) # (!\uut|CntWaitCycles\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(9),
	datad => VCC,
	cin => \uut|Add2~17\,
	combout => \uut|Add2~18_combout\,
	cout => \uut|Add2~19\);

-- Location: LCCOMB_X43_Y15_N24
\uut|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~24_combout\ = (\uut|CntWaitCycles\(12) & (\uut|Add2~23\ $ (GND))) # (!\uut|CntWaitCycles\(12) & (!\uut|Add2~23\ & VCC))
-- \uut|Add2~25\ = CARRY((\uut|CntWaitCycles\(12) & !\uut|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(12),
	datad => VCC,
	cin => \uut|Add2~23\,
	combout => \uut|Add2~24_combout\,
	cout => \uut|Add2~25\);

-- Location: LCCOMB_X43_Y15_N26
\uut|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~26_combout\ = (\uut|CntWaitCycles\(13) & (!\uut|Add2~25\)) # (!\uut|CntWaitCycles\(13) & ((\uut|Add2~25\) # (GND)))
-- \uut|Add2~27\ = CARRY((!\uut|Add2~25\) # (!\uut|CntWaitCycles\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(13),
	datad => VCC,
	cin => \uut|Add2~25\,
	combout => \uut|Add2~26_combout\,
	cout => \uut|Add2~27\);

-- Location: LCCOMB_X43_Y15_N28
\uut|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~28_combout\ = (\uut|CntWaitCycles\(14) & (\uut|Add2~27\ $ (GND))) # (!\uut|CntWaitCycles\(14) & (!\uut|Add2~27\ & VCC))
-- \uut|Add2~29\ = CARRY((\uut|CntWaitCycles\(14) & !\uut|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(14),
	datad => VCC,
	cin => \uut|Add2~27\,
	combout => \uut|Add2~28_combout\,
	cout => \uut|Add2~29\);

-- Location: LCCOMB_X43_Y14_N6
\uut|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~38_combout\ = (\uut|CntWaitCycles\(19) & (!\uut|Add2~37\)) # (!\uut|CntWaitCycles\(19) & ((\uut|Add2~37\) # (GND)))
-- \uut|Add2~39\ = CARRY((!\uut|Add2~37\) # (!\uut|CntWaitCycles\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(19),
	datad => VCC,
	cin => \uut|Add2~37\,
	combout => \uut|Add2~38_combout\,
	cout => \uut|Add2~39\);

-- Location: LCCOMB_X43_Y14_N12
\uut|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~44_combout\ = (\uut|CntWaitCycles\(22) & (\uut|Add2~43\ $ (GND))) # (!\uut|CntWaitCycles\(22) & (!\uut|Add2~43\ & VCC))
-- \uut|Add2~45\ = CARRY((\uut|CntWaitCycles\(22) & !\uut|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(22),
	datad => VCC,
	cin => \uut|Add2~43\,
	combout => \uut|Add2~44_combout\,
	cout => \uut|Add2~45\);

-- Location: LCCOMB_X43_Y14_N16
\uut|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~48_combout\ = (\uut|CntWaitCycles\(24) & (\uut|Add2~47\ $ (GND))) # (!\uut|CntWaitCycles\(24) & (!\uut|Add2~47\ & VCC))
-- \uut|Add2~49\ = CARRY((\uut|CntWaitCycles\(24) & !\uut|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(24),
	datad => VCC,
	cin => \uut|Add2~47\,
	combout => \uut|Add2~48_combout\,
	cout => \uut|Add2~49\);

-- Location: LCCOMB_X43_Y14_N18
\uut|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~50_combout\ = (\uut|CntWaitCycles\(25) & (!\uut|Add2~49\)) # (!\uut|CntWaitCycles\(25) & ((\uut|Add2~49\) # (GND)))
-- \uut|Add2~51\ = CARRY((!\uut|Add2~49\) # (!\uut|CntWaitCycles\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(25),
	datad => VCC,
	cin => \uut|Add2~49\,
	combout => \uut|Add2~50_combout\,
	cout => \uut|Add2~51\);

-- Location: LCCOMB_X43_Y14_N28
\uut|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~60_combout\ = (\uut|CntWaitCycles\(30) & (\uut|Add2~59\ $ (GND))) # (!\uut|CntWaitCycles\(30) & (!\uut|Add2~59\ & VCC))
-- \uut|Add2~61\ = CARRY((\uut|CntWaitCycles\(30) & !\uut|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(30),
	datad => VCC,
	cin => \uut|Add2~59\,
	combout => \uut|Add2~60_combout\,
	cout => \uut|Add2~61\);

-- Location: LCCOMB_X43_Y14_N30
\uut|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~62_combout\ = \uut|Add2~61\ $ (\uut|CntWaitCycles\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|CntWaitCycles\(31),
	cin => \uut|Add2~61\,
	combout => \uut|Add2~62_combout\);

-- Location: LCCOMB_X29_Y15_N6
\GenerateStrobe|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~0_combout\ = \GenerateStrobe|ClkCounter\(0) $ (VCC)
-- \GenerateStrobe|Add0~1\ = CARRY(\GenerateStrobe|ClkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(0),
	datad => VCC,
	combout => \GenerateStrobe|Add0~0_combout\,
	cout => \GenerateStrobe|Add0~1\);

-- Location: LCCOMB_X29_Y15_N12
\GenerateStrobe|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~6_combout\ = (\GenerateStrobe|ClkCounter\(3) & (!\GenerateStrobe|Add0~5\)) # (!\GenerateStrobe|ClkCounter\(3) & ((\GenerateStrobe|Add0~5\) # (GND)))
-- \GenerateStrobe|Add0~7\ = CARRY((!\GenerateStrobe|Add0~5\) # (!\GenerateStrobe|ClkCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(3),
	datad => VCC,
	cin => \GenerateStrobe|Add0~5\,
	combout => \GenerateStrobe|Add0~6_combout\,
	cout => \GenerateStrobe|Add0~7\);

-- Location: LCCOMB_X26_Y13_N16
\uut|MasterOutput~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~1_combout\ = (!\uut|SlaveClkCounter\(29) & (!\uut|SlaveClkCounter\(27) & (!\uut|SlaveClkCounter\(30) & !\uut|SlaveClkCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(29),
	datab => \uut|SlaveClkCounter\(27),
	datac => \uut|SlaveClkCounter\(30),
	datad => \uut|SlaveClkCounter\(28),
	combout => \uut|MasterOutput~1_combout\);

-- Location: LCCOMB_X26_Y13_N2
\uut|MasterOutput~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~2_combout\ = (!\uut|SlaveClkCounter\(23) & (!\uut|SlaveClkCounter\(25) & (!\uut|SlaveClkCounter\(26) & !\uut|SlaveClkCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(23),
	datab => \uut|SlaveClkCounter\(25),
	datac => \uut|SlaveClkCounter\(26),
	datad => \uut|SlaveClkCounter\(24),
	combout => \uut|MasterOutput~2_combout\);

-- Location: LCFF_X25_Y15_N21
\uut|SlaveClkCounter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector15~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(21));

-- Location: LCFF_X25_Y15_N7
\uut|SlaveClkCounter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector16~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(20));

-- Location: LCCOMB_X25_Y15_N2
\uut|MasterOutput~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~3_combout\ = (!\uut|SlaveClkCounter\(20) & (!\uut|SlaveClkCounter\(19) & (!\uut|SlaveClkCounter\(21) & !\uut|SlaveClkCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(20),
	datab => \uut|SlaveClkCounter\(19),
	datac => \uut|SlaveClkCounter\(21),
	datad => \uut|SlaveClkCounter\(22),
	combout => \uut|MasterOutput~3_combout\);

-- Location: LCFF_X26_Y13_N21
\uut|SlaveClkCounter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector18~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(18));

-- Location: LCFF_X25_Y15_N5
\uut|SlaveClkCounter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector20~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(16));

-- Location: LCFF_X26_Y13_N25
\uut|SlaveClkCounter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector21~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(15));

-- Location: LCCOMB_X26_Y13_N26
\uut|MasterOutput~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~4_combout\ = (!\uut|SlaveClkCounter\(15) & (!\uut|SlaveClkCounter\(16) & (!\uut|SlaveClkCounter\(18) & !\uut|SlaveClkCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(15),
	datab => \uut|SlaveClkCounter\(16),
	datac => \uut|SlaveClkCounter\(18),
	datad => \uut|SlaveClkCounter\(17),
	combout => \uut|MasterOutput~4_combout\);

-- Location: LCCOMB_X26_Y13_N4
\uut|MasterOutput~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~5_combout\ = (\uut|MasterOutput~1_combout\ & (\uut|MasterOutput~4_combout\ & (\uut|MasterOutput~3_combout\ & \uut|MasterOutput~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MasterOutput~1_combout\,
	datab => \uut|MasterOutput~4_combout\,
	datac => \uut|MasterOutput~3_combout\,
	datad => \uut|MasterOutput~2_combout\,
	combout => \uut|MasterOutput~5_combout\);

-- Location: LCFF_X25_Y15_N27
\uut|SlaveClkCounter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector25~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(11));

-- Location: LCFF_X26_Y14_N17
\uut|SlaveClkCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector28~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(8));

-- Location: LCFF_X27_Y15_N15
\uut|SysClkGenCounter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector70~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(31));

-- Location: LCFF_X24_Y15_N27
\uut|SysClkGenCounter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector75~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(26));

-- Location: LCCOMB_X24_Y15_N18
\uut|RegAndClockGen~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~3_combout\ = (!\uut|SysClkGenCounter\(18) & (!\uut|SysClkGenCounter\(17) & (!\uut|SysClkGenCounter\(16) & !\uut|SysClkGenCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(18),
	datab => \uut|SysClkGenCounter\(17),
	datac => \uut|SysClkGenCounter\(16),
	datad => \uut|SysClkGenCounter\(19),
	combout => \uut|RegAndClockGen~3_combout\);

-- Location: LCFF_X24_Y15_N23
\uut|SysClkGenCounter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector90~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(11));

-- Location: LCFF_X24_Y16_N3
\uut|SysClkGenCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector92~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(9));

-- Location: LCCOMB_X24_Y16_N6
\uut|RegAndClockGen~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~6_combout\ = (!\uut|SysClkGenCounter\(11) & (!\uut|SysClkGenCounter\(8) & (!\uut|SysClkGenCounter\(10) & !\uut|SysClkGenCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(11),
	datab => \uut|SysClkGenCounter\(8),
	datac => \uut|SysClkGenCounter\(10),
	datad => \uut|SysClkGenCounter\(9),
	combout => \uut|RegAndClockGen~6_combout\);

-- Location: LCCOMB_X25_Y16_N20
\uut|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector2~1_combout\ = (\uut|Equal1~1_combout\) # (!\uut|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Equal1~1_combout\,
	datac => \uut|Selector1~0_combout\,
	combout => \uut|Selector2~1_combout\);

-- Location: LCFF_X42_Y15_N13
\uut|CntWaitCycles[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector67~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(2));

-- Location: LCFF_X42_Y14_N17
\uut|CntWaitCycles[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector38~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(31));

-- Location: LCFF_X42_Y14_N15
\uut|CntWaitCycles[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector44~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(25));

-- Location: LCFF_X42_Y14_N1
\uut|CntWaitCycles[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector45~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(24));

-- Location: LCCOMB_X42_Y14_N10
\uut|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~1_combout\ = (!\uut|CntWaitCycles\(27) & (!\uut|CntWaitCycles\(26) & (!\uut|CntWaitCycles\(25) & !\uut|CntWaitCycles\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(27),
	datab => \uut|CntWaitCycles\(26),
	datac => \uut|CntWaitCycles\(25),
	datad => \uut|CntWaitCycles\(24),
	combout => \uut|Equal2~1_combout\);

-- Location: LCFF_X44_Y15_N27
\uut|CntWaitCycles[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector47~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(22));

-- Location: LCFF_X42_Y14_N13
\uut|CntWaitCycles[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector50~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(19));

-- Location: LCFF_X42_Y15_N21
\uut|CntWaitCycles[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector55~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(14));

-- Location: LCFF_X42_Y15_N15
\uut|CntWaitCycles[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector56~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(13));

-- Location: LCFF_X42_Y15_N9
\uut|CntWaitCycles[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector57~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(12));

-- Location: LCCOMB_X42_Y15_N10
\uut|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~5_combout\ = (!\uut|CntWaitCycles\(14) & (!\uut|CntWaitCycles\(15) & (!\uut|CntWaitCycles\(13) & !\uut|CntWaitCycles\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(14),
	datab => \uut|CntWaitCycles\(15),
	datac => \uut|CntWaitCycles\(13),
	datad => \uut|CntWaitCycles\(12),
	combout => \uut|Equal2~5_combout\);

-- Location: LCFF_X44_Y15_N7
\uut|CntWaitCycles[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector60~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(9));

-- Location: LCCOMB_X30_Y15_N12
\uut|Equal2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~10_combout\ = (\uut|Equal2~5_combout\ & (\uut|Equal2~4_combout\ & (\uut|Equal2~7_combout\ & \uut|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~5_combout\,
	datab => \uut|Equal2~4_combout\,
	datac => \uut|Equal2~7_combout\,
	datad => \uut|Equal2~6_combout\,
	combout => \uut|Equal2~10_combout\);

-- Location: LCCOMB_X26_Y15_N6
\uut|Selector103~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector103~1_combout\ = (\uut|SysClk~0_combout\) # ((!\uut|Selector103~0_combout\ & ((\uut|Sel~0_combout\) # (!\uut|State.SetBurstRegister~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetBurstRegister~regout\,
	datab => \uut|Selector103~0_combout\,
	datac => \uut|Sel~0_combout\,
	datad => \uut|SysClk~0_combout\,
	combout => \uut|Selector103~1_combout\);

-- Location: LCCOMB_X25_Y16_N6
\uut|MasterOutput~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~9_combout\ = (\uut|SlaveClkCounter\(31)) # ((\uut|MasterOutput~0_combout\ & \uut|MasterOutput~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(31),
	datac => \uut|MasterOutput~0_combout\,
	datad => \uut|MasterOutput~8_combout\,
	combout => \uut|MasterOutput~9_combout\);

-- Location: LCCOMB_X2_Y21_N6
\uut|Selector115~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector115~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataX\(5),
	combout => \uut|Selector115~0_combout\);

-- Location: LCFF_X5_Y21_N17
\uut|BurstRegData[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[45]~5_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(45));

-- Location: LCCOMB_X27_Y15_N16
\uut|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~2_combout\ = (\uut|State.ReadBurstRegister~regout\ & (((\uut|RegAndClockGen~9_combout\)))) # (!\uut|State.ReadBurstRegister~regout\ & (!\uut|SysClk~regout\ & (!\uut|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClk~regout\,
	datab => \uut|State.ReadBurstRegister~regout\,
	datac => \uut|Equal0~0_combout\,
	datad => \uut|RegAndClockGen~9_combout\,
	combout => \uut|Selector1~2_combout\);

-- Location: LCCOMB_X27_Y15_N4
\uut|RegAndClockGen~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~10_combout\ = (\uut|RegAndClockGen~4_combout\ & (\uut|RegAndClockGen~8_combout\ & \uut|RegAndClockGen~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~4_combout\,
	datac => \uut|RegAndClockGen~8_combout\,
	datad => \uut|RegAndClockGen~9_combout\,
	combout => \uut|RegAndClockGen~10_combout\);

-- Location: LCCOMB_X26_Y15_N20
\uut|Selector101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector101~0_combout\ = ((\uut|SysClkGenCounter~4_combout\ & ((\uut|Equal1~1_combout\) # (!\uut|RegAndClockGen~10_combout\)))) # (!\uut|State.ReadBurstRegister~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal1~1_combout\,
	datab => \uut|SysClkGenCounter~4_combout\,
	datac => \uut|State.ReadBurstRegister~regout\,
	datad => \uut|RegAndClockGen~10_combout\,
	combout => \uut|Selector101~0_combout\);

-- Location: LCCOMB_X27_Y15_N14
\uut|Selector70~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector70~0_combout\ = (\uut|Add0~62_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~62_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector70~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\uut|Selector75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector75~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~52_combout\,
	combout => \uut|Selector75~0_combout\);

-- Location: LCCOMB_X24_Y15_N22
\uut|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector90~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~22_combout\,
	combout => \uut|Selector90~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\uut|Selector92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector92~0_combout\ = (\uut|Add0~18_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~18_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector92~0_combout\);

-- Location: LCFF_X29_Y15_N25
\GenerateStrobe|ClkCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|ClkCounter~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(3));

-- Location: LCFF_X29_Y15_N7
\GenerateStrobe|ClkCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(0));

-- Location: LCCOMB_X42_Y15_N12
\uut|Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector67~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~4_combout\,
	combout => \uut|Selector67~0_combout\);

-- Location: LCCOMB_X42_Y15_N24
\uut|Selector69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector69~0_combout\ = (\uut|Selector37~4_combout\) # ((\GenerateStrobe|oStrobe~regout\ & (\uut|Add2~0_combout\)) # (!\GenerateStrobe|oStrobe~regout\ & ((!\uut|CntWaitCycles\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|oStrobe~regout\,
	datab => \uut|Selector37~4_combout\,
	datac => \uut|Add2~0_combout\,
	datad => \uut|CntWaitCycles\(0),
	combout => \uut|Selector69~0_combout\);

-- Location: LCCOMB_X42_Y14_N16
\uut|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector38~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~62_combout\,
	combout => \uut|Selector38~0_combout\);

-- Location: LCCOMB_X42_Y14_N14
\uut|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector44~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~50_combout\,
	combout => \uut|Selector44~0_combout\);

-- Location: LCCOMB_X42_Y14_N0
\uut|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector45~0_combout\ = (\uut|Add2~48_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add2~48_combout\,
	datad => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector45~0_combout\);

-- Location: LCCOMB_X44_Y15_N26
\uut|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector47~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datac => \uut|Add2~44_combout\,
	combout => \uut|Selector47~0_combout\);

-- Location: LCCOMB_X42_Y14_N12
\uut|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector50~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~38_combout\,
	combout => \uut|Selector50~0_combout\);

-- Location: LCCOMB_X42_Y15_N20
\uut|Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector55~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~28_combout\,
	combout => \uut|Selector55~0_combout\);

-- Location: LCCOMB_X42_Y15_N14
\uut|Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector56~0_combout\ = (\uut|Add2~26_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add2~26_combout\,
	datad => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector56~0_combout\);

-- Location: LCCOMB_X42_Y15_N8
\uut|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector57~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~24_combout\,
	combout => \uut|Selector57~0_combout\);

-- Location: LCCOMB_X44_Y15_N6
\uut|Selector60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector60~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~18_combout\,
	combout => \uut|Selector60~0_combout\);

-- Location: LCCOMB_X25_Y16_N22
\uut|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~3_combout\ = (!\uut|SlaveClkCounter\(2) & (\uut|SlaveClkCounter\(3) & (!\uut|SlaveClkCounter\(0) & !\uut|SlaveClkCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(2),
	datab => \uut|SlaveClkCounter\(3),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|Decoder0~3_combout\);

-- Location: LCCOMB_X6_Y21_N10
\uut|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~6_combout\ = (!\uut|SlaveClkCounter\(1) & (\uut|SlaveClkCounter\(0) & !\uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|Decoder0~6_combout\);

-- Location: LCCOMB_X6_Y21_N6
\uut|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~7_combout\ = (\uut|SlaveClkCounter\(1) & (\uut|SlaveClkCounter\(0) & !\uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|Decoder0~7_combout\);

-- Location: LCCOMB_X25_Y16_N24
\uut|Decoder0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~8_combout\ = (\uut|SlaveClkCounter\(2) & (!\uut|SlaveClkCounter\(0) & \uut|SlaveClkCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(2),
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|SlaveClkCounter\(3),
	combout => \uut|Decoder0~8_combout\);

-- Location: LCCOMB_X25_Y16_N10
\uut|Decoder0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~9_combout\ = (\uut|Decoder0~2_combout\ & (\uut|Decoder0~1_combout\ & (\uut|Decoder0~8_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~2_combout\,
	datab => \uut|Decoder0~1_combout\,
	datac => \uut|Decoder0~8_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~9_combout\);

-- Location: LCCOMB_X5_Y21_N20
\uut|Decoder0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~10_combout\ = (\uut|SlaveClkCounter\(3) & (\uut|SlaveClkCounter\(1) & (!\uut|SlaveClkCounter\(2) & !\uut|SlaveClkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(2),
	datad => \uut|SlaveClkCounter\(0),
	combout => \uut|Decoder0~10_combout\);

-- Location: LCCOMB_X5_Y21_N22
\uut|Decoder0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~11_combout\ = (\uut|Decoder0~10_combout\ & (\uut|Decoder0~2_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~10_combout\,
	datab => \uut|Decoder0~2_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~11_combout\);

-- Location: LCCOMB_X5_Y21_N16
\uut|BurstRegData[45]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[45]~5_combout\ = (\uut|Decoder0~11_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~11_combout\ & (\uut|BurstRegData\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Decoder0~11_combout\,
	datac => \uut|BurstRegData\(45),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[45]~5_combout\);

-- Location: LCCOMB_X6_Y21_N12
\uut|Decoder0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~12_combout\ = (!\uut|SlaveClkCounter\(1) & (\uut|SlaveClkCounter\(0) & \uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|Decoder0~12_combout\);

-- Location: LCCOMB_X5_Y21_N24
\uut|Decoder0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~18_combout\ = (!\uut|SlaveClkCounter\(3) & (\uut|SlaveClkCounter\(1) & (!\uut|SlaveClkCounter\(2) & !\uut|SlaveClkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(2),
	datad => \uut|SlaveClkCounter\(0),
	combout => \uut|Decoder0~18_combout\);

-- Location: LCCOMB_X29_Y15_N24
\GenerateStrobe|ClkCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|ClkCounter~1_combout\ = (\GenerateStrobe|Add0~6_combout\ & (((!\GenerateStrobe|ClkCounter\(0)) # (!\GenerateStrobe|ClkCounter\(1))) # (!\GenerateStrobe|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|Add0~6_combout\,
	datab => \GenerateStrobe|Equal0~0_combout\,
	datac => \GenerateStrobe|ClkCounter\(1),
	datad => \GenerateStrobe|ClkCounter\(0),
	combout => \GenerateStrobe|ClkCounter~1_combout\);

-- Location: LCCOMB_X25_Y15_N20
\uut|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector15~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~42_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~42_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector15~2_combout\);

-- Location: LCCOMB_X25_Y15_N6
\uut|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector16~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~40_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~40_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector16~2_combout\);

-- Location: LCCOMB_X26_Y13_N20
\uut|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector18~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~36_combout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~36_combout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector18~2_combout\);

-- Location: LCCOMB_X25_Y15_N4
\uut|Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector20~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~32_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~32_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector20~2_combout\);

-- Location: LCCOMB_X26_Y13_N24
\uut|Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector21~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~30_combout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~30_combout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector21~2_combout\);

-- Location: LCCOMB_X25_Y15_N26
\uut|Selector25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector25~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~22_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~22_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector25~2_combout\);

-- Location: LCCOMB_X26_Y14_N16
\uut|Selector28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector28~2_combout\ = (\uut|Add1~16_combout\ & (\uut|State.Init~regout\ & (!\uut|State.WaitForRead~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~16_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector28~2_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y21_N26
\uut|Selector114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector114~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataX\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataX\(6),
	combout => \uut|Selector114~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\uut|State.Init~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|State.Init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uut|State.Init~feeder_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G6
\inResetAsync~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inResetAsync~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inResetAsync~clkctrl_outclk\);

-- Location: LCFF_X26_Y14_N29
\uut|State.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|State.Init~feeder_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.Init~regout\);

-- Location: LCCOMB_X25_Y14_N0
\uut|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~0_combout\ = \uut|SlaveClkCounter\(0) $ (GND)
-- \uut|Add1~1\ = CARRY(!\uut|SlaveClkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(0),
	datad => VCC,
	combout => \uut|Add1~0_combout\,
	cout => \uut|Add1~1\);

-- Location: LCCOMB_X25_Y14_N2
\uut|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~2_combout\ = (\uut|SlaveClkCounter\(1) & (!\uut|Add1~1\)) # (!\uut|SlaveClkCounter\(1) & (\uut|Add1~1\ & VCC))
-- \uut|Add1~3\ = CARRY((\uut|SlaveClkCounter\(1) & !\uut|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(1),
	datad => VCC,
	cin => \uut|Add1~1\,
	combout => \uut|Add1~2_combout\,
	cout => \uut|Add1~3\);

-- Location: LCCOMB_X43_Y15_N2
\uut|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~2_combout\ = (\uut|CntWaitCycles\(1) & (!\uut|Add2~1\)) # (!\uut|CntWaitCycles\(1) & ((\uut|Add2~1\) # (GND)))
-- \uut|Add2~3\ = CARRY((!\uut|Add2~1\) # (!\uut|CntWaitCycles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(1),
	datad => VCC,
	cin => \uut|Add2~1\,
	combout => \uut|Add2~2_combout\,
	cout => \uut|Add2~3\);

-- Location: LCCOMB_X44_Y15_N10
\uut|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector68~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~2_combout\,
	combout => \uut|Selector68~0_combout\);

-- Location: LCCOMB_X29_Y15_N8
\GenerateStrobe|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~2_combout\ = (\GenerateStrobe|ClkCounter\(1) & (!\GenerateStrobe|Add0~1\)) # (!\GenerateStrobe|ClkCounter\(1) & ((\GenerateStrobe|Add0~1\) # (GND)))
-- \GenerateStrobe|Add0~3\ = CARRY((!\GenerateStrobe|Add0~1\) # (!\GenerateStrobe|ClkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobe|ClkCounter\(1),
	datad => VCC,
	cin => \GenerateStrobe|Add0~1\,
	combout => \GenerateStrobe|Add0~2_combout\,
	cout => \GenerateStrobe|Add0~3\);

-- Location: LCFF_X29_Y15_N9
\GenerateStrobe|ClkCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(1));

-- Location: LCCOMB_X29_Y15_N10
\GenerateStrobe|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~4_combout\ = (\GenerateStrobe|ClkCounter\(2) & (\GenerateStrobe|Add0~3\ $ (GND))) # (!\GenerateStrobe|ClkCounter\(2) & (!\GenerateStrobe|Add0~3\ & VCC))
-- \GenerateStrobe|Add0~5\ = CARRY((\GenerateStrobe|ClkCounter\(2) & !\GenerateStrobe|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(2),
	datad => VCC,
	cin => \GenerateStrobe|Add0~3\,
	combout => \GenerateStrobe|Add0~4_combout\,
	cout => \GenerateStrobe|Add0~5\);

-- Location: LCCOMB_X29_Y15_N14
\GenerateStrobe|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~8_combout\ = (\GenerateStrobe|ClkCounter\(4) & (\GenerateStrobe|Add0~7\ $ (GND))) # (!\GenerateStrobe|ClkCounter\(4) & (!\GenerateStrobe|Add0~7\ & VCC))
-- \GenerateStrobe|Add0~9\ = CARRY((\GenerateStrobe|ClkCounter\(4) & !\GenerateStrobe|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobe|ClkCounter\(4),
	datad => VCC,
	cin => \GenerateStrobe|Add0~7\,
	combout => \GenerateStrobe|Add0~8_combout\,
	cout => \GenerateStrobe|Add0~9\);

-- Location: LCCOMB_X29_Y15_N22
\GenerateStrobe|ClkCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|ClkCounter~0_combout\ = (\GenerateStrobe|Add0~8_combout\ & (((!\GenerateStrobe|Equal0~0_combout\) # (!\GenerateStrobe|ClkCounter\(1))) # (!\GenerateStrobe|ClkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(0),
	datab => \GenerateStrobe|ClkCounter\(1),
	datac => \GenerateStrobe|Add0~8_combout\,
	datad => \GenerateStrobe|Equal0~0_combout\,
	combout => \GenerateStrobe|ClkCounter~0_combout\);

-- Location: LCFF_X29_Y15_N23
\GenerateStrobe|ClkCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|ClkCounter~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(4));

-- Location: LCCOMB_X29_Y15_N16
\GenerateStrobe|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~10_combout\ = \GenerateStrobe|ClkCounter\(5) $ (\GenerateStrobe|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(5),
	cin => \GenerateStrobe|Add0~9\,
	combout => \GenerateStrobe|Add0~10_combout\);

-- Location: LCFF_X29_Y15_N17
\GenerateStrobe|ClkCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~10_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(5));

-- Location: LCFF_X29_Y15_N11
\GenerateStrobe|ClkCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(2));

-- Location: LCCOMB_X29_Y15_N26
\GenerateStrobe|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Equal0~0_combout\ = (!\GenerateStrobe|ClkCounter\(3) & (\GenerateStrobe|ClkCounter\(4) & (!\GenerateStrobe|ClkCounter\(5) & \GenerateStrobe|ClkCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(3),
	datab => \GenerateStrobe|ClkCounter\(4),
	datac => \GenerateStrobe|ClkCounter\(5),
	datad => \GenerateStrobe|ClkCounter\(2),
	combout => \GenerateStrobe|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y15_N18
\GenerateStrobe|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Equal0~1_combout\ = (\GenerateStrobe|ClkCounter\(0) & (\GenerateStrobe|ClkCounter\(1) & \GenerateStrobe|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(0),
	datac => \GenerateStrobe|ClkCounter\(1),
	datad => \GenerateStrobe|Equal0~0_combout\,
	combout => \GenerateStrobe|Equal0~1_combout\);

-- Location: LCFF_X29_Y15_N19
\GenerateStrobe|oStrobe\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Equal0~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|oStrobe~regout\);

-- Location: LCCOMB_X43_Y15_N10
\uut|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~10_combout\ = (\uut|CntWaitCycles\(5) & (!\uut|Add2~9\)) # (!\uut|CntWaitCycles\(5) & ((\uut|Add2~9\) # (GND)))
-- \uut|Add2~11\ = CARRY((!\uut|Add2~9\) # (!\uut|CntWaitCycles\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(5),
	datad => VCC,
	cin => \uut|Add2~9\,
	combout => \uut|Add2~10_combout\,
	cout => \uut|Add2~11\);

-- Location: LCCOMB_X43_Y15_N12
\uut|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~12_combout\ = (\uut|CntWaitCycles\(6) & (\uut|Add2~11\ $ (GND))) # (!\uut|CntWaitCycles\(6) & (!\uut|Add2~11\ & VCC))
-- \uut|Add2~13\ = CARRY((\uut|CntWaitCycles\(6) & !\uut|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(6),
	datad => VCC,
	cin => \uut|Add2~11\,
	combout => \uut|Add2~12_combout\,
	cout => \uut|Add2~13\);

-- Location: LCCOMB_X42_Y15_N16
\uut|Selector63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector63~0_combout\ = (\uut|Add2~12_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add2~12_combout\,
	datad => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector63~0_combout\);

-- Location: LCFF_X42_Y15_N17
\uut|CntWaitCycles[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector63~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(6));

-- Location: LCCOMB_X30_Y15_N20
\uut|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~5_combout\ = (\uut|Equal2~10_combout\ & (\GenerateStrobe|oStrobe~regout\ & (\uut|State.WaitForRead~regout\ & !\uut|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~10_combout\,
	datab => \GenerateStrobe|oStrobe~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|Equal2~8_combout\,
	combout => \uut|Selector1~5_combout\);

-- Location: LCCOMB_X30_Y15_N4
\uut|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector3~0_combout\ = ((\uut|State.OutputAndWaitForWrite~regout\ & !\uut|Equal4~2_combout\)) # (!\uut|Selector1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datac => \uut|Selector1~5_combout\,
	datad => \uut|Equal4~2_combout\,
	combout => \uut|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y15_N26
\uut|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~1_combout\ = (\uut|Equal2~10_combout\ & (\GenerateStrobe|oStrobe~regout\ & (\uut|State.OutputAndWaitForWrite~regout\ & !\uut|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~10_combout\,
	datab => \GenerateStrobe|oStrobe~regout\,
	datac => \uut|State.OutputAndWaitForWrite~regout\,
	datad => \uut|Equal4~0_combout\,
	combout => \uut|Selector1~1_combout\);

-- Location: LCCOMB_X30_Y15_N18
\uut|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector3~1_combout\ = (\uut|Selector1~6_combout\ & (!\uut|Selector3~0_combout\)) # (!\uut|Selector1~6_combout\ & (((\uut|State.ReadBurstRegister~regout\ & !\uut|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector1~6_combout\,
	datab => \uut|Selector3~0_combout\,
	datac => \uut|State.ReadBurstRegister~regout\,
	datad => \uut|Selector1~1_combout\,
	combout => \uut|Selector3~1_combout\);

-- Location: LCFF_X30_Y15_N19
\uut|State.ReadBurstRegister\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector3~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.ReadBurstRegister~regout\);

-- Location: LCCOMB_X26_Y15_N28
\uut|SysClk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClk~0_combout\ = \uut|SysClk~regout\ $ (((\uut|Equal0~1_combout\) # (!\uut|Sel~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Equal0~1_combout\,
	datac => \uut|Sel~regout\,
	datad => \uut|SysClk~regout\,
	combout => \uut|SysClk~0_combout\);

-- Location: LCCOMB_X30_Y15_N16
\uut|Selector103~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector103~2_combout\ = (\uut|State.WaitForRead~regout\ & (((\uut|Equal2~8_combout\) # (!\GenerateStrobe|oStrobe~regout\)) # (!\uut|Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~10_combout\,
	datab => \GenerateStrobe|oStrobe~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|Equal2~8_combout\,
	combout => \uut|Selector103~2_combout\);

-- Location: LCCOMB_X26_Y15_N8
\uut|Selector103~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector103~3_combout\ = ((!\uut|SysClk~0_combout\ & ((\uut|State.ReadBurstRegister~regout\) # (\uut|Selector103~2_combout\)))) # (!\uut|Selector103~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector103~1_combout\,
	datab => \uut|SysClk~0_combout\,
	datac => \uut|State.ReadBurstRegister~regout\,
	datad => \uut|Selector103~2_combout\,
	combout => \uut|Selector103~3_combout\);

-- Location: LCFF_X26_Y15_N9
\uut|SysClk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector103~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClk~regout\);

-- Location: LCCOMB_X26_Y15_N16
\uut|Sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Sel~0_combout\ = (!\uut|Equal1~1_combout\ & (!\uut|Equal0~1_combout\ & !\uut|SysClk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal1~1_combout\,
	datab => \uut|Equal0~1_combout\,
	datac => \uut|SysClk~regout\,
	combout => \uut|Sel~0_combout\);

-- Location: LCCOMB_X29_Y15_N2
\uut|Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector37~1_combout\ = (\uut|State.WaitForRead~regout\ & ((\uut|Equal2~9_combout\) # (!\GenerateStrobe|oStrobe~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~9_combout\,
	datab => \uut|State.WaitForRead~regout\,
	datad => \GenerateStrobe|oStrobe~regout\,
	combout => \uut|Selector37~1_combout\);

-- Location: LCCOMB_X30_Y15_N8
\uut|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector37~0_combout\ = (\uut|State.ReadBurstRegister~regout\) # ((\uut|State.OutputAndWaitForWrite~regout\ & ((\uut|Equal4~2_combout\) # (!\GenerateStrobe|oStrobe~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|Equal4~2_combout\,
	datac => \GenerateStrobe|oStrobe~regout\,
	datad => \uut|State.ReadBurstRegister~regout\,
	combout => \uut|Selector37~0_combout\);

-- Location: LCCOMB_X29_Y15_N20
\uut|Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector37~2_combout\ = (\uut|Selector2~1_combout\ & ((\uut|Sel~regout\) # ((!\uut|Selector37~1_combout\ & !\uut|Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector2~1_combout\,
	datab => \uut|Selector37~1_combout\,
	datac => \uut|Selector37~0_combout\,
	datad => \uut|Sel~regout\,
	combout => \uut|Selector37~2_combout\);

-- Location: LCCOMB_X29_Y15_N0
\uut|Selector37~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector37~3_combout\ = (\uut|Selector37~2_combout\ & (((!\uut|Sel~0_combout\ & \uut|Sel~regout\)) # (!\uut|State.SetBurstRegister~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetBurstRegister~regout\,
	datab => \uut|Sel~0_combout\,
	datac => \uut|Sel~regout\,
	datad => \uut|Selector37~2_combout\,
	combout => \uut|Selector37~3_combout\);

-- Location: LCFF_X29_Y15_N1
\uut|Sel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector37~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|Sel~regout\);

-- Location: LCCOMB_X23_Y16_N0
\uut|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~0_combout\ = \uut|SysClkGenCounter\(0) $ (GND)
-- \uut|Add0~1\ = CARRY(!\uut|SysClkGenCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(0),
	datad => VCC,
	combout => \uut|Add0~0_combout\,
	cout => \uut|Add0~1\);

-- Location: LCCOMB_X26_Y15_N26
\uut|SysClkGenCounter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter~4_combout\ = (\uut|Sel~regout\ & ((\uut|Add0~0_combout\))) # (!\uut|Sel~regout\ & (!\uut|SysClkGenCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(0),
	datac => \uut|Sel~regout\,
	datad => \uut|Add0~0_combout\,
	combout => \uut|SysClkGenCounter~4_combout\);

-- Location: LCCOMB_X26_Y15_N30
\uut|Selector101~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector101~1_combout\ = (\uut|Selector101~0_combout\ & ((\uut|SysClkGenCounter~4_combout\) # ((!\uut|Selector103~0_combout\ & !\uut|State.WaitForRead~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector101~0_combout\,
	datab => \uut|SysClkGenCounter~4_combout\,
	datac => \uut|Selector103~0_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector101~1_combout\);

-- Location: LCCOMB_X26_Y15_N22
\uut|Selector101~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector101~2_combout\ = ((\uut|State.SetBurstRegister~regout\ & (!\uut|Sel~0_combout\ & !\uut|SysClkGenCounter~4_combout\))) # (!\uut|Selector101~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetBurstRegister~regout\,
	datab => \uut|Selector101~1_combout\,
	datac => \uut|Sel~0_combout\,
	datad => \uut|SysClkGenCounter~4_combout\,
	combout => \uut|Selector101~2_combout\);

-- Location: LCFF_X26_Y15_N23
\uut|SysClkGenCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector101~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(0));

-- Location: LCCOMB_X23_Y16_N8
\uut|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~8_combout\ = (\uut|SysClkGenCounter\(4) & (\uut|Add0~7\ $ (GND))) # (!\uut|SysClkGenCounter\(4) & (!\uut|Add0~7\ & VCC))
-- \uut|Add0~9\ = CARRY((\uut|SysClkGenCounter\(4) & !\uut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(4),
	datad => VCC,
	cin => \uut|Add0~7\,
	combout => \uut|Add0~8_combout\,
	cout => \uut|Add0~9\);

-- Location: LCCOMB_X23_Y16_N10
\uut|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~10_combout\ = (\uut|SysClkGenCounter\(5) & (!\uut|Add0~9\)) # (!\uut|SysClkGenCounter\(5) & ((\uut|Add0~9\) # (GND)))
-- \uut|Add0~11\ = CARRY((!\uut|Add0~9\) # (!\uut|SysClkGenCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(5),
	datad => VCC,
	cin => \uut|Add0~9\,
	combout => \uut|Add0~10_combout\,
	cout => \uut|Add0~11\);

-- Location: LCCOMB_X27_Y15_N10
\uut|Selector96~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector96~0_combout\ = (\uut|Add0~10_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~10_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector96~0_combout\);

-- Location: LCCOMB_X25_Y15_N16
\uut|Selector36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector36~2_combout\ = (\uut|State.OutputAndWaitForWrite~regout\) # (((\uut|State.WaitForRead~regout\) # (!\uut|Add1~0_combout\)) # (!\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~0_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector36~2_combout\);

-- Location: LCCOMB_X26_Y15_N4
\uut|SlaveClkCounter[26]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[26]~2_combout\ = (\uut|State.ReadBurstRegister~regout\ & (((!\uut|Equal1~1_combout\)) # (!\uut|Selector1~3_combout\))) # (!\uut|State.ReadBurstRegister~regout\ & (\uut|State.SetBurstRegister~regout\ & ((!\uut|Equal1~1_combout\) # 
-- (!\uut|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadBurstRegister~regout\,
	datab => \uut|Selector1~3_combout\,
	datac => \uut|State.SetBurstRegister~regout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|SlaveClkCounter[26]~2_combout\);

-- Location: LCCOMB_X25_Y15_N30
\uut|SlaveClkCounter[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[0]~5_combout\ = (!\uut|SlaveClkCounter[26]~2_combout\ & (((!\uut|State.OutputAndWaitForWrite~regout\ & !\uut|State.WaitForRead~regout\)) # (!\uut|SlaveClkCounter[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.WaitForRead~regout\,
	datac => \uut|SlaveClkCounter[0]~4_combout\,
	datad => \uut|SlaveClkCounter[26]~2_combout\,
	combout => \uut|SlaveClkCounter[0]~5_combout\);

-- Location: LCFF_X25_Y15_N17
\uut|SlaveClkCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector36~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(0));

-- Location: LCCOMB_X6_Y21_N18
\uut|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~0_combout\ = (\uut|SlaveClkCounter\(1) & (\uut|SlaveClkCounter\(0) & \uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y14_N12
\uut|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector31~0_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & ((\uut|State.WaitForRead~regout\) # ((\uut|Add1~10_combout\ & \uut|State.Init~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~10_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector31~0_combout\);

-- Location: LCCOMB_X26_Y15_N14
\uut|SlaveClkCounter[26]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[26]~3_combout\ = (!\uut|Selector103~0_combout\ & (!\uut|SlaveClkCounter[26]~2_combout\ & !\uut|Selector103~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Selector103~0_combout\,
	datac => \uut|SlaveClkCounter[26]~2_combout\,
	datad => \uut|Selector103~2_combout\,
	combout => \uut|SlaveClkCounter[26]~3_combout\);

-- Location: LCFF_X26_Y14_N13
\uut|SlaveClkCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector31~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(5));

-- Location: LCCOMB_X25_Y16_N16
\uut|MasterOutput~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~0_combout\ = (!\uut|SlaveClkCounter\(4) & (!\uut|SlaveClkCounter\(3) & !\uut|SlaveClkCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(4),
	datac => \uut|SlaveClkCounter\(3),
	datad => \uut|SlaveClkCounter\(5),
	combout => \uut|MasterOutput~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\uut|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector13~2_combout\ = (\uut|Add1~46_combout\ & (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~46_combout\,
	datab => \uut|State.OutputAndWaitForWrite~regout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector13~2_combout\);

-- Location: LCFF_X26_Y13_N1
\uut|SlaveClkCounter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector13~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(23));

-- Location: LCCOMB_X26_Y13_N22
\uut|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector19~2_combout\ = (\uut|Add1~34_combout\ & (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~34_combout\,
	datab => \uut|State.OutputAndWaitForWrite~regout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector19~2_combout\);

-- Location: LCFF_X26_Y13_N23
\uut|SlaveClkCounter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector19~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(17));

-- Location: LCCOMB_X26_Y14_N22
\uut|Selector23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector23~2_combout\ = (\uut|Add1~26_combout\ & (\uut|State.Init~regout\ & (!\uut|State.WaitForRead~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~26_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector23~2_combout\);

-- Location: LCFF_X26_Y14_N23
\uut|SlaveClkCounter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector23~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(13));

-- Location: LCCOMB_X26_Y14_N24
\uut|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector24~2_combout\ = (\uut|Add1~24_combout\ & (\uut|State.Init~regout\ & (!\uut|State.WaitForRead~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~24_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector24~2_combout\);

-- Location: LCFF_X26_Y14_N25
\uut|SlaveClkCounter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector24~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(12));

-- Location: LCCOMB_X26_Y14_N30
\uut|Selector27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector27~2_combout\ = (\uut|Add1~18_combout\ & (\uut|State.Init~regout\ & (!\uut|State.WaitForRead~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~18_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector27~2_combout\);

-- Location: LCFF_X26_Y14_N31
\uut|SlaveClkCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector27~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(9));

-- Location: LCCOMB_X26_Y14_N14
\uut|Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector30~2_combout\ = (\uut|Add1~12_combout\ & (\uut|State.Init~regout\ & (!\uut|State.WaitForRead~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~12_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector30~2_combout\);

-- Location: LCFF_X26_Y14_N15
\uut|SlaveClkCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector30~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(6));

-- Location: LCCOMB_X25_Y14_N8
\uut|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~8_combout\ = (\uut|SlaveClkCounter\(4) & ((GND) # (!\uut|Add1~7\))) # (!\uut|SlaveClkCounter\(4) & (\uut|Add1~7\ $ (GND)))
-- \uut|Add1~9\ = CARRY((\uut|SlaveClkCounter\(4)) # (!\uut|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(4),
	datad => VCC,
	cin => \uut|Add1~7\,
	combout => \uut|Add1~8_combout\,
	cout => \uut|Add1~9\);

-- Location: LCCOMB_X25_Y14_N20
\uut|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~20_combout\ = (\uut|SlaveClkCounter\(10) & ((GND) # (!\uut|Add1~19\))) # (!\uut|SlaveClkCounter\(10) & (\uut|Add1~19\ $ (GND)))
-- \uut|Add1~21\ = CARRY((\uut|SlaveClkCounter\(10)) # (!\uut|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(10),
	datad => VCC,
	cin => \uut|Add1~19\,
	combout => \uut|Add1~20_combout\,
	cout => \uut|Add1~21\);

-- Location: LCCOMB_X25_Y14_N28
\uut|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~28_combout\ = (\uut|SlaveClkCounter\(14) & ((GND) # (!\uut|Add1~27\))) # (!\uut|SlaveClkCounter\(14) & (\uut|Add1~27\ $ (GND)))
-- \uut|Add1~29\ = CARRY((\uut|SlaveClkCounter\(14)) # (!\uut|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(14),
	datad => VCC,
	cin => \uut|Add1~27\,
	combout => \uut|Add1~28_combout\,
	cout => \uut|Add1~29\);

-- Location: LCCOMB_X25_Y15_N24
\uut|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector22~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~28_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~28_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector22~2_combout\);

-- Location: LCFF_X25_Y15_N25
\uut|SlaveClkCounter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector22~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(14));

-- Location: LCCOMB_X25_Y13_N6
\uut|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~38_combout\ = (\uut|SlaveClkCounter\(19) & (\uut|Add1~37\ & VCC)) # (!\uut|SlaveClkCounter\(19) & (!\uut|Add1~37\))
-- \uut|Add1~39\ = CARRY((!\uut|SlaveClkCounter\(19) & !\uut|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(19),
	datad => VCC,
	cin => \uut|Add1~37\,
	combout => \uut|Add1~38_combout\,
	cout => \uut|Add1~39\);

-- Location: LCCOMB_X25_Y15_N8
\uut|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector17~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~38_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~38_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector17~2_combout\);

-- Location: LCFF_X25_Y15_N9
\uut|SlaveClkCounter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector17~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(19));

-- Location: LCCOMB_X25_Y13_N12
\uut|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~44_combout\ = (\uut|SlaveClkCounter\(22) & ((GND) # (!\uut|Add1~43\))) # (!\uut|SlaveClkCounter\(22) & (\uut|Add1~43\ $ (GND)))
-- \uut|Add1~45\ = CARRY((\uut|SlaveClkCounter\(22)) # (!\uut|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(22),
	datad => VCC,
	cin => \uut|Add1~43\,
	combout => \uut|Add1~44_combout\,
	cout => \uut|Add1~45\);

-- Location: LCCOMB_X25_Y15_N18
\uut|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector14~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~44_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~44_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector14~2_combout\);

-- Location: LCFF_X25_Y15_N19
\uut|SlaveClkCounter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector14~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(22));

-- Location: LCCOMB_X25_Y13_N16
\uut|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~48_combout\ = (\uut|SlaveClkCounter\(24) & ((GND) # (!\uut|Add1~47\))) # (!\uut|SlaveClkCounter\(24) & (\uut|Add1~47\ $ (GND)))
-- \uut|Add1~49\ = CARRY((\uut|SlaveClkCounter\(24)) # (!\uut|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(24),
	datad => VCC,
	cin => \uut|Add1~47\,
	combout => \uut|Add1~48_combout\,
	cout => \uut|Add1~49\);

-- Location: LCCOMB_X26_Y13_N30
\uut|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector12~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|Add1~48_combout\ & (\uut|State.Init~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|Add1~48_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector12~2_combout\);

-- Location: LCFF_X26_Y13_N31
\uut|SlaveClkCounter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector12~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(24));

-- Location: LCCOMB_X25_Y13_N18
\uut|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~50_combout\ = (\uut|SlaveClkCounter\(25) & (\uut|Add1~49\ & VCC)) # (!\uut|SlaveClkCounter\(25) & (!\uut|Add1~49\))
-- \uut|Add1~51\ = CARRY((!\uut|SlaveClkCounter\(25) & !\uut|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(25),
	datad => VCC,
	cin => \uut|Add1~49\,
	combout => \uut|Add1~50_combout\,
	cout => \uut|Add1~51\);

-- Location: LCCOMB_X26_Y13_N28
\uut|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector11~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|Add1~50_combout\ & (\uut|State.Init~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|Add1~50_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector11~2_combout\);

-- Location: LCFF_X26_Y13_N29
\uut|SlaveClkCounter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector11~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(25));

-- Location: LCCOMB_X25_Y13_N20
\uut|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~52_combout\ = (\uut|SlaveClkCounter\(26) & ((GND) # (!\uut|Add1~51\))) # (!\uut|SlaveClkCounter\(26) & (\uut|Add1~51\ $ (GND)))
-- \uut|Add1~53\ = CARRY((\uut|SlaveClkCounter\(26)) # (!\uut|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(26),
	datad => VCC,
	cin => \uut|Add1~51\,
	combout => \uut|Add1~52_combout\,
	cout => \uut|Add1~53\);

-- Location: LCCOMB_X26_Y13_N18
\uut|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector10~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~52_combout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~52_combout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector10~2_combout\);

-- Location: LCFF_X26_Y13_N19
\uut|SlaveClkCounter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector10~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(26));

-- Location: LCCOMB_X25_Y13_N22
\uut|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~54_combout\ = (\uut|SlaveClkCounter\(27) & (\uut|Add1~53\ & VCC)) # (!\uut|SlaveClkCounter\(27) & (!\uut|Add1~53\))
-- \uut|Add1~55\ = CARRY((!\uut|SlaveClkCounter\(27) & !\uut|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(27),
	datad => VCC,
	cin => \uut|Add1~53\,
	combout => \uut|Add1~54_combout\,
	cout => \uut|Add1~55\);

-- Location: LCCOMB_X26_Y13_N14
\uut|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector9~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|Add1~54_combout\ & (\uut|State.Init~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|Add1~54_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector9~2_combout\);

-- Location: LCFF_X26_Y13_N15
\uut|SlaveClkCounter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector9~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(27));

-- Location: LCCOMB_X25_Y13_N24
\uut|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~56_combout\ = (\uut|SlaveClkCounter\(28) & ((GND) # (!\uut|Add1~55\))) # (!\uut|SlaveClkCounter\(28) & (\uut|Add1~55\ $ (GND)))
-- \uut|Add1~57\ = CARRY((\uut|SlaveClkCounter\(28)) # (!\uut|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(28),
	datad => VCC,
	cin => \uut|Add1~55\,
	combout => \uut|Add1~56_combout\,
	cout => \uut|Add1~57\);

-- Location: LCCOMB_X26_Y13_N12
\uut|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector8~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|Add1~56_combout\ & (\uut|State.Init~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|Add1~56_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector8~2_combout\);

-- Location: LCFF_X26_Y13_N13
\uut|SlaveClkCounter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector8~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(28));

-- Location: LCCOMB_X25_Y13_N26
\uut|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~58_combout\ = (\uut|SlaveClkCounter\(29) & (\uut|Add1~57\ & VCC)) # (!\uut|SlaveClkCounter\(29) & (!\uut|Add1~57\))
-- \uut|Add1~59\ = CARRY((!\uut|SlaveClkCounter\(29) & !\uut|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(29),
	datad => VCC,
	cin => \uut|Add1~57\,
	combout => \uut|Add1~58_combout\,
	cout => \uut|Add1~59\);

-- Location: LCCOMB_X26_Y13_N10
\uut|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector7~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|Add1~58_combout\ & (\uut|State.Init~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|Add1~58_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector7~2_combout\);

-- Location: LCFF_X26_Y13_N11
\uut|SlaveClkCounter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector7~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(29));

-- Location: LCCOMB_X25_Y13_N28
\uut|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~60_combout\ = (\uut|SlaveClkCounter\(30) & ((GND) # (!\uut|Add1~59\))) # (!\uut|SlaveClkCounter\(30) & (\uut|Add1~59\ $ (GND)))
-- \uut|Add1~61\ = CARRY((\uut|SlaveClkCounter\(30)) # (!\uut|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(30),
	datad => VCC,
	cin => \uut|Add1~59\,
	combout => \uut|Add1~60_combout\,
	cout => \uut|Add1~61\);

-- Location: LCCOMB_X26_Y13_N8
\uut|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector6~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|Add1~60_combout\ & (\uut|State.Init~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|Add1~60_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector6~2_combout\);

-- Location: LCFF_X26_Y13_N9
\uut|SlaveClkCounter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector6~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(30));

-- Location: LCCOMB_X25_Y13_N30
\uut|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~62_combout\ = \uut|SlaveClkCounter\(31) $ (!\uut|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(31),
	cin => \uut|Add1~61\,
	combout => \uut|Add1~62_combout\);

-- Location: LCCOMB_X25_Y15_N14
\uut|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector5~2_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~62_combout\ & !\uut|State.WaitForRead~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~62_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector5~2_combout\);

-- Location: LCFF_X25_Y15_N15
\uut|SlaveClkCounter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector5~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(31));

-- Location: LCCOMB_X26_Y14_N2
\uut|Selector29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector29~2_combout\ = (\uut|Add1~14_combout\ & (\uut|State.Init~regout\ & (!\uut|State.WaitForRead~regout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add1~14_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector29~2_combout\);

-- Location: LCFF_X26_Y14_N3
\uut|SlaveClkCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector29~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(7));

-- Location: LCCOMB_X26_Y14_N4
\uut|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector26~2_combout\ = (!\uut|State.WaitForRead~regout\ & (\uut|State.Init~regout\ & (\uut|Add1~20_combout\ & !\uut|State.OutputAndWaitForWrite~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~20_combout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector26~2_combout\);

-- Location: LCFF_X26_Y14_N5
\uut|SlaveClkCounter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector26~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(10));

-- Location: LCCOMB_X26_Y14_N20
\uut|MasterOutput~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~7_combout\ = (!\uut|SlaveClkCounter\(8) & (!\uut|SlaveClkCounter\(7) & (!\uut|SlaveClkCounter\(10) & !\uut|SlaveClkCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(8),
	datab => \uut|SlaveClkCounter\(7),
	datac => \uut|SlaveClkCounter\(10),
	datad => \uut|SlaveClkCounter\(9),
	combout => \uut|MasterOutput~7_combout\);

-- Location: LCCOMB_X26_Y14_N0
\uut|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~0_combout\ = ((\uut|SlaveClkCounter\(31)) # ((\uut|SlaveClkCounter\(6)) # (!\uut|MasterOutput~7_combout\))) # (!\uut|MasterOutput~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MasterOutput~6_combout\,
	datab => \uut|SlaveClkCounter\(31),
	datac => \uut|MasterOutput~7_combout\,
	datad => \uut|SlaveClkCounter\(6),
	combout => \uut|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y15_N12
\uut|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~1_combout\ = (((\uut|Equal1~0_combout\) # (!\uut|MasterOutput~0_combout\)) # (!\uut|Decoder0~0_combout\)) # (!\uut|MasterOutput~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MasterOutput~5_combout\,
	datab => \uut|Decoder0~0_combout\,
	datac => \uut|MasterOutput~0_combout\,
	datad => \uut|Equal1~0_combout\,
	combout => \uut|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y15_N24
\uut|SysClkGenCounter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[3]~0_combout\ = (\uut|State.ReadBurstRegister~regout\ & (((\uut|Equal1~1_combout\)) # (!\uut|Selector1~3_combout\))) # (!\uut|State.ReadBurstRegister~regout\ & (\uut|State.SetBurstRegister~regout\ & ((\uut|Equal1~1_combout\) # 
-- (!\uut|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadBurstRegister~regout\,
	datab => \uut|Selector1~3_combout\,
	datac => \uut|State.SetBurstRegister~regout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|SysClkGenCounter[3]~0_combout\);

-- Location: LCCOMB_X30_Y15_N10
\uut|SysClkGenCounter[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[3]~2_combout\ = (\uut|State.WaitForRead~regout\) # ((\uut|State.OutputAndWaitForWrite~regout\ & ((\uut|Equal4~2_combout\) # (!\GenerateStrobe|oStrobe~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \GenerateStrobe|oStrobe~regout\,
	datac => \uut|State.WaitForRead~regout\,
	datad => \uut|Equal4~2_combout\,
	combout => \uut|SysClkGenCounter[3]~2_combout\);

-- Location: LCCOMB_X24_Y15_N6
\uut|SysClkGenCounter[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[3]~3_combout\ = (\uut|Sel~regout\) # ((!\uut|SysClkGenCounter[3]~0_combout\ & !\uut|SysClkGenCounter[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~regout\,
	datac => \uut|SysClkGenCounter[3]~0_combout\,
	datad => \uut|SysClkGenCounter[3]~2_combout\,
	combout => \uut|SysClkGenCounter[3]~3_combout\);

-- Location: LCFF_X27_Y15_N11
\uut|SysClkGenCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector96~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(5));

-- Location: LCCOMB_X23_Y16_N12
\uut|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~12_combout\ = (\uut|SysClkGenCounter\(6) & (\uut|Add0~11\ $ (GND))) # (!\uut|SysClkGenCounter\(6) & (!\uut|Add0~11\ & VCC))
-- \uut|Add0~13\ = CARRY((\uut|SysClkGenCounter\(6) & !\uut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(6),
	datad => VCC,
	cin => \uut|Add0~11\,
	combout => \uut|Add0~12_combout\,
	cout => \uut|Add0~13\);

-- Location: LCCOMB_X27_Y15_N0
\uut|Selector95~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector95~0_combout\ = (\uut|Add0~12_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~12_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector95~0_combout\);

-- Location: LCFF_X27_Y15_N1
\uut|SysClkGenCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector95~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(6));

-- Location: LCCOMB_X27_Y15_N20
\uut|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal0~0_combout\ = ((!\uut|SysClkGenCounter\(6)) # (!\uut|SysClkGenCounter\(0))) # (!\uut|SysClkGenCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(5),
	datab => \uut|SysClkGenCounter\(0),
	datac => \uut|SysClkGenCounter\(6),
	combout => \uut|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y15_N2
\uut|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal0~1_combout\ = ((\uut|Equal0~0_combout\) # (!\uut|RegAndClockGen~8_combout\)) # (!\uut|RegAndClockGen~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~4_combout\,
	datab => \uut|RegAndClockGen~8_combout\,
	datac => \uut|Equal0~0_combout\,
	combout => \uut|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y15_N4
\uut|SysClkGenCounter[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[3]~1_combout\ = (\uut|Equal0~1_combout\ & ((\uut|SysClkGenCounter[3]~0_combout\) # ((\uut|State.WaitForRead~regout\) # (\uut|Selector103~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[3]~0_combout\,
	datab => \uut|State.WaitForRead~regout\,
	datac => \uut|Selector103~0_combout\,
	datad => \uut|Equal0~1_combout\,
	combout => \uut|SysClkGenCounter[3]~1_combout\);

-- Location: LCCOMB_X23_Y16_N2
\uut|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~2_combout\ = (\uut|SysClkGenCounter\(1) & (!\uut|Add0~1\)) # (!\uut|SysClkGenCounter\(1) & ((\uut|Add0~1\) # (GND)))
-- \uut|Add0~3\ = CARRY((!\uut|Add0~1\) # (!\uut|SysClkGenCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(1),
	datad => VCC,
	cin => \uut|Add0~1\,
	combout => \uut|Add0~2_combout\,
	cout => \uut|Add0~3\);

-- Location: LCCOMB_X23_Y16_N4
\uut|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~4_combout\ = (\uut|SysClkGenCounter\(2) & (\uut|Add0~3\ $ (GND))) # (!\uut|SysClkGenCounter\(2) & (!\uut|Add0~3\ & VCC))
-- \uut|Add0~5\ = CARRY((\uut|SysClkGenCounter\(2) & !\uut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(2),
	datad => VCC,
	cin => \uut|Add0~3\,
	combout => \uut|Add0~4_combout\,
	cout => \uut|Add0~5\);

-- Location: LCCOMB_X24_Y16_N10
\uut|Selector99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector99~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~4_combout\,
	combout => \uut|Selector99~0_combout\);

-- Location: LCFF_X24_Y16_N11
\uut|SysClkGenCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector99~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(2));

-- Location: LCCOMB_X23_Y16_N6
\uut|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~6_combout\ = (\uut|SysClkGenCounter\(3) & (!\uut|Add0~5\)) # (!\uut|SysClkGenCounter\(3) & ((\uut|Add0~5\) # (GND)))
-- \uut|Add0~7\ = CARRY((!\uut|Add0~5\) # (!\uut|SysClkGenCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(3),
	datad => VCC,
	cin => \uut|Add0~5\,
	combout => \uut|Add0~6_combout\,
	cout => \uut|Add0~7\);

-- Location: LCCOMB_X24_Y16_N0
\uut|Selector98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector98~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~6_combout\,
	combout => \uut|Selector98~0_combout\);

-- Location: LCFF_X24_Y16_N1
\uut|SysClkGenCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector98~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(3));

-- Location: LCCOMB_X24_Y15_N0
\uut|Selector97~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector97~0_combout\ = (\uut|Add0~8_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~8_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector97~0_combout\);

-- Location: LCFF_X24_Y15_N1
\uut|SysClkGenCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector97~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(4));

-- Location: LCCOMB_X25_Y16_N26
\uut|Selector94~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector94~0_combout\ = (\uut|Add0~14_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~14_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector94~0_combout\);

-- Location: LCFF_X25_Y16_N27
\uut|SysClkGenCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector94~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(7));

-- Location: LCCOMB_X24_Y16_N4
\uut|RegAndClockGen~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~7_combout\ = (!\uut|SysClkGenCounter\(2) & (!\uut|SysClkGenCounter\(4) & (!\uut|SysClkGenCounter\(7) & !\uut|SysClkGenCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(2),
	datab => \uut|SysClkGenCounter\(4),
	datac => \uut|SysClkGenCounter\(7),
	datad => \uut|SysClkGenCounter\(3),
	combout => \uut|RegAndClockGen~7_combout\);

-- Location: LCCOMB_X24_Y15_N2
\uut|Selector100~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector100~0_combout\ = (\uut|Add0~2_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~2_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector100~0_combout\);

-- Location: LCFF_X24_Y15_N3
\uut|SysClkGenCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector100~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(1));

-- Location: LCCOMB_X23_Y16_N16
\uut|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~16_combout\ = (\uut|SysClkGenCounter\(8) & (\uut|Add0~15\ $ (GND))) # (!\uut|SysClkGenCounter\(8) & (!\uut|Add0~15\ & VCC))
-- \uut|Add0~17\ = CARRY((\uut|SysClkGenCounter\(8) & !\uut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(8),
	datad => VCC,
	cin => \uut|Add0~15\,
	combout => \uut|Add0~16_combout\,
	cout => \uut|Add0~17\);

-- Location: LCCOMB_X24_Y16_N28
\uut|Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector93~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	datad => \uut|Add0~16_combout\,
	combout => \uut|Selector93~0_combout\);

-- Location: LCFF_X24_Y16_N29
\uut|SysClkGenCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector93~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(8));

-- Location: LCCOMB_X23_Y16_N20
\uut|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~20_combout\ = (\uut|SysClkGenCounter\(10) & (\uut|Add0~19\ $ (GND))) # (!\uut|SysClkGenCounter\(10) & (!\uut|Add0~19\ & VCC))
-- \uut|Add0~21\ = CARRY((\uut|SysClkGenCounter\(10) & !\uut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(10),
	datad => VCC,
	cin => \uut|Add0~19\,
	combout => \uut|Add0~20_combout\,
	cout => \uut|Add0~21\);

-- Location: LCCOMB_X24_Y16_N24
\uut|Selector91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector91~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~20_combout\,
	combout => \uut|Selector91~0_combout\);

-- Location: LCFF_X24_Y16_N25
\uut|SysClkGenCounter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector91~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(10));

-- Location: LCCOMB_X23_Y16_N24
\uut|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~24_combout\ = (\uut|SysClkGenCounter\(12) & (\uut|Add0~23\ $ (GND))) # (!\uut|SysClkGenCounter\(12) & (!\uut|Add0~23\ & VCC))
-- \uut|Add0~25\ = CARRY((\uut|SysClkGenCounter\(12) & !\uut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(12),
	datad => VCC,
	cin => \uut|Add0~23\,
	combout => \uut|Add0~24_combout\,
	cout => \uut|Add0~25\);

-- Location: LCCOMB_X24_Y15_N12
\uut|Selector89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector89~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~24_combout\,
	combout => \uut|Selector89~0_combout\);

-- Location: LCFF_X24_Y15_N13
\uut|SysClkGenCounter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector89~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(12));

-- Location: LCCOMB_X23_Y16_N26
\uut|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~26_combout\ = (\uut|SysClkGenCounter\(13) & (!\uut|Add0~25\)) # (!\uut|SysClkGenCounter\(13) & ((\uut|Add0~25\) # (GND)))
-- \uut|Add0~27\ = CARRY((!\uut|Add0~25\) # (!\uut|SysClkGenCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(13),
	datad => VCC,
	cin => \uut|Add0~25\,
	combout => \uut|Add0~26_combout\,
	cout => \uut|Add0~27\);

-- Location: LCCOMB_X24_Y16_N20
\uut|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector88~0_combout\ = (\uut|Add0~26_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~26_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector88~0_combout\);

-- Location: LCFF_X24_Y16_N21
\uut|SysClkGenCounter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector88~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(13));

-- Location: LCCOMB_X23_Y16_N28
\uut|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~28_combout\ = (\uut|SysClkGenCounter\(14) & (\uut|Add0~27\ $ (GND))) # (!\uut|SysClkGenCounter\(14) & (!\uut|Add0~27\ & VCC))
-- \uut|Add0~29\ = CARRY((\uut|SysClkGenCounter\(14) & !\uut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(14),
	datad => VCC,
	cin => \uut|Add0~27\,
	combout => \uut|Add0~28_combout\,
	cout => \uut|Add0~29\);

-- Location: LCCOMB_X24_Y16_N26
\uut|Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector87~0_combout\ = (\uut|Add0~28_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~28_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector87~0_combout\);

-- Location: LCFF_X24_Y16_N27
\uut|SysClkGenCounter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector87~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(14));

-- Location: LCCOMB_X23_Y16_N30
\uut|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~30_combout\ = (\uut|SysClkGenCounter\(15) & (!\uut|Add0~29\)) # (!\uut|SysClkGenCounter\(15) & ((\uut|Add0~29\) # (GND)))
-- \uut|Add0~31\ = CARRY((!\uut|Add0~29\) # (!\uut|SysClkGenCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(15),
	datad => VCC,
	cin => \uut|Add0~29\,
	combout => \uut|Add0~30_combout\,
	cout => \uut|Add0~31\);

-- Location: LCCOMB_X24_Y16_N8
\uut|Selector86~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector86~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~30_combout\,
	combout => \uut|Selector86~0_combout\);

-- Location: LCFF_X24_Y16_N9
\uut|SysClkGenCounter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector86~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(15));

-- Location: LCCOMB_X24_Y16_N30
\uut|RegAndClockGen~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~5_combout\ = (!\uut|SysClkGenCounter\(12) & (!\uut|SysClkGenCounter\(14) & (!\uut|SysClkGenCounter\(15) & !\uut|SysClkGenCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(12),
	datab => \uut|SysClkGenCounter\(14),
	datac => \uut|SysClkGenCounter\(15),
	datad => \uut|SysClkGenCounter\(13),
	combout => \uut|RegAndClockGen~5_combout\);

-- Location: LCCOMB_X24_Y16_N22
\uut|RegAndClockGen~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~8_combout\ = (\uut|RegAndClockGen~6_combout\ & (\uut|RegAndClockGen~7_combout\ & (!\uut|SysClkGenCounter\(1) & \uut|RegAndClockGen~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~6_combout\,
	datab => \uut|RegAndClockGen~7_combout\,
	datac => \uut|SysClkGenCounter\(1),
	datad => \uut|RegAndClockGen~5_combout\,
	combout => \uut|RegAndClockGen~8_combout\);

-- Location: LCCOMB_X23_Y15_N0
\uut|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~32_combout\ = (\uut|SysClkGenCounter\(16) & (\uut|Add0~31\ $ (GND))) # (!\uut|SysClkGenCounter\(16) & (!\uut|Add0~31\ & VCC))
-- \uut|Add0~33\ = CARRY((\uut|SysClkGenCounter\(16) & !\uut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(16),
	datad => VCC,
	cin => \uut|Add0~31\,
	combout => \uut|Add0~32_combout\,
	cout => \uut|Add0~33\);

-- Location: LCCOMB_X24_Y15_N8
\uut|Selector85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector85~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datad => \uut|Add0~32_combout\,
	combout => \uut|Selector85~0_combout\);

-- Location: LCFF_X24_Y15_N9
\uut|SysClkGenCounter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector85~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(16));

-- Location: LCCOMB_X23_Y15_N2
\uut|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~34_combout\ = (\uut|SysClkGenCounter\(17) & (!\uut|Add0~33\)) # (!\uut|SysClkGenCounter\(17) & ((\uut|Add0~33\) # (GND)))
-- \uut|Add0~35\ = CARRY((!\uut|Add0~33\) # (!\uut|SysClkGenCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(17),
	datad => VCC,
	cin => \uut|Add0~33\,
	combout => \uut|Add0~34_combout\,
	cout => \uut|Add0~35\);

-- Location: LCCOMB_X24_Y15_N14
\uut|Selector84~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector84~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	datad => \uut|Add0~34_combout\,
	combout => \uut|Selector84~0_combout\);

-- Location: LCFF_X24_Y15_N15
\uut|SysClkGenCounter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector84~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(17));

-- Location: LCCOMB_X23_Y15_N4
\uut|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~36_combout\ = (\uut|SysClkGenCounter\(18) & (\uut|Add0~35\ $ (GND))) # (!\uut|SysClkGenCounter\(18) & (!\uut|Add0~35\ & VCC))
-- \uut|Add0~37\ = CARRY((\uut|SysClkGenCounter\(18) & !\uut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(18),
	datad => VCC,
	cin => \uut|Add0~35\,
	combout => \uut|Add0~36_combout\,
	cout => \uut|Add0~37\);

-- Location: LCCOMB_X24_Y15_N20
\uut|Selector83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector83~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~36_combout\,
	combout => \uut|Selector83~0_combout\);

-- Location: LCFF_X24_Y15_N21
\uut|SysClkGenCounter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector83~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(18));

-- Location: LCCOMB_X23_Y15_N6
\uut|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~38_combout\ = (\uut|SysClkGenCounter\(19) & (!\uut|Add0~37\)) # (!\uut|SysClkGenCounter\(19) & ((\uut|Add0~37\) # (GND)))
-- \uut|Add0~39\ = CARRY((!\uut|Add0~37\) # (!\uut|SysClkGenCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(19),
	datad => VCC,
	cin => \uut|Add0~37\,
	combout => \uut|Add0~38_combout\,
	cout => \uut|Add0~39\);

-- Location: LCCOMB_X24_Y15_N10
\uut|Selector82~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector82~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~38_combout\,
	combout => \uut|Selector82~0_combout\);

-- Location: LCFF_X24_Y15_N11
\uut|SysClkGenCounter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector82~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(19));

-- Location: LCCOMB_X23_Y15_N8
\uut|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~40_combout\ = (\uut|SysClkGenCounter\(20) & (\uut|Add0~39\ $ (GND))) # (!\uut|SysClkGenCounter\(20) & (!\uut|Add0~39\ & VCC))
-- \uut|Add0~41\ = CARRY((\uut|SysClkGenCounter\(20) & !\uut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(20),
	datad => VCC,
	cin => \uut|Add0~39\,
	combout => \uut|Add0~40_combout\,
	cout => \uut|Add0~41\);

-- Location: LCCOMB_X23_Y15_N10
\uut|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~42_combout\ = (\uut|SysClkGenCounter\(21) & (!\uut|Add0~41\)) # (!\uut|SysClkGenCounter\(21) & ((\uut|Add0~41\) # (GND)))
-- \uut|Add0~43\ = CARRY((!\uut|Add0~41\) # (!\uut|SysClkGenCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(21),
	datad => VCC,
	cin => \uut|Add0~41\,
	combout => \uut|Add0~42_combout\,
	cout => \uut|Add0~43\);

-- Location: LCCOMB_X22_Y15_N28
\uut|Selector80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector80~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~42_combout\,
	combout => \uut|Selector80~0_combout\);

-- Location: LCFF_X22_Y15_N29
\uut|SysClkGenCounter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector80~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(21));

-- Location: LCCOMB_X23_Y15_N12
\uut|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~44_combout\ = (\uut|SysClkGenCounter\(22) & (\uut|Add0~43\ $ (GND))) # (!\uut|SysClkGenCounter\(22) & (!\uut|Add0~43\ & VCC))
-- \uut|Add0~45\ = CARRY((\uut|SysClkGenCounter\(22) & !\uut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(22),
	datad => VCC,
	cin => \uut|Add0~43\,
	combout => \uut|Add0~44_combout\,
	cout => \uut|Add0~45\);

-- Location: LCCOMB_X22_Y15_N18
\uut|Selector79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector79~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~44_combout\,
	combout => \uut|Selector79~0_combout\);

-- Location: LCFF_X22_Y15_N19
\uut|SysClkGenCounter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector79~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(22));

-- Location: LCCOMB_X23_Y15_N14
\uut|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~46_combout\ = (\uut|SysClkGenCounter\(23) & (!\uut|Add0~45\)) # (!\uut|SysClkGenCounter\(23) & ((\uut|Add0~45\) # (GND)))
-- \uut|Add0~47\ = CARRY((!\uut|Add0~45\) # (!\uut|SysClkGenCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(23),
	datad => VCC,
	cin => \uut|Add0~45\,
	combout => \uut|Add0~46_combout\,
	cout => \uut|Add0~47\);

-- Location: LCCOMB_X23_Y15_N16
\uut|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~48_combout\ = (\uut|SysClkGenCounter\(24) & (\uut|Add0~47\ $ (GND))) # (!\uut|SysClkGenCounter\(24) & (!\uut|Add0~47\ & VCC))
-- \uut|Add0~49\ = CARRY((\uut|SysClkGenCounter\(24) & !\uut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(24),
	datad => VCC,
	cin => \uut|Add0~47\,
	combout => \uut|Add0~48_combout\,
	cout => \uut|Add0~49\);

-- Location: LCCOMB_X24_Y15_N30
\uut|Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector77~0_combout\ = (\uut|Add0~48_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~48_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector77~0_combout\);

-- Location: LCFF_X24_Y15_N31
\uut|SysClkGenCounter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector77~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(24));

-- Location: LCCOMB_X23_Y15_N18
\uut|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~50_combout\ = (\uut|SysClkGenCounter\(25) & (!\uut|Add0~49\)) # (!\uut|SysClkGenCounter\(25) & ((\uut|Add0~49\) # (GND)))
-- \uut|Add0~51\ = CARRY((!\uut|Add0~49\) # (!\uut|SysClkGenCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(25),
	datad => VCC,
	cin => \uut|Add0~49\,
	combout => \uut|Add0~50_combout\,
	cout => \uut|Add0~51\);

-- Location: LCCOMB_X24_Y15_N28
\uut|Selector76~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector76~0_combout\ = (\uut|Add0~50_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~50_combout\,
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector76~0_combout\);

-- Location: LCFF_X24_Y15_N29
\uut|SysClkGenCounter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector76~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(25));

-- Location: LCCOMB_X23_Y15_N22
\uut|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~54_combout\ = (\uut|SysClkGenCounter\(27) & (!\uut|Add0~53\)) # (!\uut|SysClkGenCounter\(27) & ((\uut|Add0~53\) # (GND)))
-- \uut|Add0~55\ = CARRY((!\uut|Add0~53\) # (!\uut|SysClkGenCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(27),
	datad => VCC,
	cin => \uut|Add0~53\,
	combout => \uut|Add0~54_combout\,
	cout => \uut|Add0~55\);

-- Location: LCCOMB_X24_Y15_N24
\uut|Selector74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector74~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[3]~1_combout\,
	datad => \uut|Add0~54_combout\,
	combout => \uut|Selector74~0_combout\);

-- Location: LCFF_X24_Y15_N25
\uut|SysClkGenCounter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector74~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(27));

-- Location: LCCOMB_X24_Y15_N16
\uut|RegAndClockGen~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~1_combout\ = (!\uut|SysClkGenCounter\(26) & (!\uut|SysClkGenCounter\(25) & (!\uut|SysClkGenCounter\(27) & !\uut|SysClkGenCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(26),
	datab => \uut|SysClkGenCounter\(25),
	datac => \uut|SysClkGenCounter\(27),
	datad => \uut|SysClkGenCounter\(24),
	combout => \uut|RegAndClockGen~1_combout\);

-- Location: LCCOMB_X22_Y15_N14
\uut|Selector81~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector81~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~40_combout\,
	combout => \uut|Selector81~0_combout\);

-- Location: LCFF_X22_Y15_N15
\uut|SysClkGenCounter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector81~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(20));

-- Location: LCCOMB_X22_Y15_N0
\uut|Selector78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector78~0_combout\ = (\uut|SysClkGenCounter[3]~1_combout\ & \uut|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[3]~1_combout\,
	datac => \uut|Add0~46_combout\,
	combout => \uut|Selector78~0_combout\);

-- Location: LCFF_X22_Y15_N1
\uut|SysClkGenCounter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector78~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(23));

-- Location: LCCOMB_X22_Y15_N24
\uut|RegAndClockGen~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~2_combout\ = (!\uut|SysClkGenCounter\(22) & (!\uut|SysClkGenCounter\(21) & (!\uut|SysClkGenCounter\(20) & !\uut|SysClkGenCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(22),
	datab => \uut|SysClkGenCounter\(21),
	datac => \uut|SysClkGenCounter\(20),
	datad => \uut|SysClkGenCounter\(23),
	combout => \uut|RegAndClockGen~2_combout\);

-- Location: LCCOMB_X23_Y15_N24
\uut|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~56_combout\ = (\uut|SysClkGenCounter\(28) & (\uut|Add0~55\ $ (GND))) # (!\uut|SysClkGenCounter\(28) & (!\uut|Add0~55\ & VCC))
-- \uut|Add0~57\ = CARRY((\uut|SysClkGenCounter\(28) & !\uut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(28),
	datad => VCC,
	cin => \uut|Add0~55\,
	combout => \uut|Add0~56_combout\,
	cout => \uut|Add0~57\);

-- Location: LCCOMB_X27_Y15_N28
\uut|Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector73~0_combout\ = (\uut|Add0~56_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add0~56_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector73~0_combout\);

-- Location: LCFF_X27_Y15_N29
\uut|SysClkGenCounter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector73~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(28));

-- Location: LCCOMB_X23_Y15_N26
\uut|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~58_combout\ = (\uut|SysClkGenCounter\(29) & (!\uut|Add0~57\)) # (!\uut|SysClkGenCounter\(29) & ((\uut|Add0~57\) # (GND)))
-- \uut|Add0~59\ = CARRY((!\uut|Add0~57\) # (!\uut|SysClkGenCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(29),
	datad => VCC,
	cin => \uut|Add0~57\,
	combout => \uut|Add0~58_combout\,
	cout => \uut|Add0~59\);

-- Location: LCCOMB_X27_Y15_N26
\uut|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector72~0_combout\ = (\uut|Add0~58_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~58_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector72~0_combout\);

-- Location: LCFF_X27_Y15_N27
\uut|SysClkGenCounter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector72~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(29));

-- Location: LCCOMB_X27_Y15_N8
\uut|Selector71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector71~0_combout\ = (\uut|Add0~60_combout\ & \uut|SysClkGenCounter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~60_combout\,
	datad => \uut|SysClkGenCounter[3]~1_combout\,
	combout => \uut|Selector71~0_combout\);

-- Location: LCFF_X27_Y15_N9
\uut|SysClkGenCounter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector71~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(30));

-- Location: LCCOMB_X27_Y15_N6
\uut|RegAndClockGen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~0_combout\ = (!\uut|SysClkGenCounter\(31) & (!\uut|SysClkGenCounter\(28) & (!\uut|SysClkGenCounter\(30) & !\uut|SysClkGenCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(31),
	datab => \uut|SysClkGenCounter\(28),
	datac => \uut|SysClkGenCounter\(30),
	datad => \uut|SysClkGenCounter\(29),
	combout => \uut|RegAndClockGen~0_combout\);

-- Location: LCCOMB_X27_Y15_N24
\uut|RegAndClockGen~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~4_combout\ = (\uut|RegAndClockGen~3_combout\ & (\uut|RegAndClockGen~1_combout\ & (\uut|RegAndClockGen~2_combout\ & \uut|RegAndClockGen~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~3_combout\,
	datab => \uut|RegAndClockGen~1_combout\,
	datac => \uut|RegAndClockGen~2_combout\,
	datad => \uut|RegAndClockGen~0_combout\,
	combout => \uut|RegAndClockGen~4_combout\);

-- Location: LCCOMB_X27_Y15_N18
\uut|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~3_combout\ = (\uut|Selector1~2_combout\ & (\uut|RegAndClockGen~8_combout\ & \uut|RegAndClockGen~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector1~2_combout\,
	datab => \uut|RegAndClockGen~8_combout\,
	datac => \uut|RegAndClockGen~4_combout\,
	combout => \uut|Selector1~3_combout\);

-- Location: LCCOMB_X26_Y15_N18
\uut|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~4_combout\ = (\uut|Selector1~3_combout\ & (!\uut|Equal1~1_combout\ & ((\uut|State.ReadBurstRegister~regout\) # (\uut|State.SetBurstRegister~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadBurstRegister~regout\,
	datab => \uut|Selector1~3_combout\,
	datac => \uut|State.SetBurstRegister~regout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Selector1~4_combout\);

-- Location: LCCOMB_X30_Y15_N14
\uut|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~6_combout\ = (\uut|Selector1~5_combout\) # ((\uut|Selector1~4_combout\) # (!\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector1~5_combout\,
	datab => \uut|Selector1~4_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector1~6_combout\);

-- Location: LCCOMB_X30_Y15_N24
\uut|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~7_combout\ = (\uut|Selector1~1_combout\) # ((\uut|Selector1~6_combout\ & (!\uut|State.Init~regout\)) # (!\uut|Selector1~6_combout\ & ((\uut|State.SetBurstRegister~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|Selector1~6_combout\,
	datac => \uut|State.SetBurstRegister~regout\,
	datad => \uut|Selector1~1_combout\,
	combout => \uut|Selector1~7_combout\);

-- Location: LCFF_X30_Y15_N25
\uut|State.SetBurstRegister\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector1~7_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.SetBurstRegister~regout\);

-- Location: LCCOMB_X42_Y15_N30
\uut|Selector69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector69~1_combout\ = ((\uut|CntWaitCycles\(0) & ((\uut|State.ReadBurstRegister~regout\) # (\uut|State.SetBurstRegister~regout\)))) # (!\uut|Selector69~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector69~0_combout\,
	datab => \uut|State.ReadBurstRegister~regout\,
	datac => \uut|CntWaitCycles\(0),
	datad => \uut|State.SetBurstRegister~regout\,
	combout => \uut|Selector69~1_combout\);

-- Location: LCFF_X42_Y15_N31
\uut|CntWaitCycles[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector69~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(0));

-- Location: LCCOMB_X42_Y15_N0
\uut|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~0_combout\ = (\uut|CntWaitCycles\(2)) # ((\uut|CntWaitCycles\(5)) # ((\uut|CntWaitCycles\(6)) # (\uut|CntWaitCycles\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(2),
	datab => \uut|CntWaitCycles\(5),
	datac => \uut|CntWaitCycles\(6),
	datad => \uut|CntWaitCycles\(0),
	combout => \uut|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y15_N6
\uut|Selector103~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector103~0_combout\ = (\uut|State.OutputAndWaitForWrite~regout\ & (((\uut|Equal4~0_combout\) # (!\GenerateStrobe|oStrobe~regout\)) # (!\uut|Equal2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~10_combout\,
	datab => \GenerateStrobe|oStrobe~regout\,
	datac => \uut|State.OutputAndWaitForWrite~regout\,
	datad => \uut|Equal4~0_combout\,
	combout => \uut|Selector103~0_combout\);

-- Location: LCCOMB_X27_Y15_N12
\uut|RegAndClockGen~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~9_combout\ = (!\uut|SysClk~regout\ & (!\uut|SysClkGenCounter\(0) & (!\uut|SysClkGenCounter\(6) & !\uut|SysClkGenCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClk~regout\,
	datab => \uut|SysClkGenCounter\(0),
	datac => \uut|SysClkGenCounter\(6),
	datad => \uut|SysClkGenCounter\(5),
	combout => \uut|RegAndClockGen~9_combout\);

-- Location: LCCOMB_X27_Y15_N22
\uut|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~0_combout\ = (\uut|RegAndClockGen~4_combout\ & (\uut|RegAndClockGen~9_combout\ & (\uut|RegAndClockGen~8_combout\ & \uut|State.ReadBurstRegister~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~4_combout\,
	datab => \uut|RegAndClockGen~9_combout\,
	datac => \uut|RegAndClockGen~8_combout\,
	datad => \uut|State.ReadBurstRegister~regout\,
	combout => \uut|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\uut|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector4~0_combout\ = (\uut|Selector103~0_combout\) # ((!\uut|Equal1~1_combout\ & \uut|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal1~1_combout\,
	datac => \uut|Selector103~0_combout\,
	datad => \uut|Selector1~0_combout\,
	combout => \uut|Selector4~0_combout\);

-- Location: LCFF_X26_Y15_N11
\uut|State.OutputAndWaitForWrite\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector4~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.OutputAndWaitForWrite~regout\);

-- Location: LCCOMB_X26_Y13_N6
\uut|Selector37~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector37~4_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & !\uut|State.WaitForRead~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.OutputAndWaitForWrite~regout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector37~4_combout\);

-- Location: LCCOMB_X42_Y15_N22
\uut|CntWaitCycles[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[30]~1_combout\ = (!\uut|State.SetBurstRegister~regout\ & (!\uut|State.ReadBurstRegister~regout\ & ((\uut|Selector37~4_combout\) # (\GenerateStrobe|oStrobe~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetBurstRegister~regout\,
	datab => \uut|Selector37~4_combout\,
	datac => \GenerateStrobe|oStrobe~regout\,
	datad => \uut|State.ReadBurstRegister~regout\,
	combout => \uut|CntWaitCycles[30]~1_combout\);

-- Location: LCFF_X44_Y15_N11
\uut|CntWaitCycles[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector68~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(1));

-- Location: LCCOMB_X43_Y15_N6
\uut|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~6_combout\ = (\uut|CntWaitCycles\(3) & (!\uut|Add2~5\)) # (!\uut|CntWaitCycles\(3) & ((\uut|Add2~5\) # (GND)))
-- \uut|Add2~7\ = CARRY((!\uut|Add2~5\) # (!\uut|CntWaitCycles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(3),
	datad => VCC,
	cin => \uut|Add2~5\,
	combout => \uut|Add2~6_combout\,
	cout => \uut|Add2~7\);

-- Location: LCCOMB_X44_Y15_N8
\uut|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector66~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datac => \uut|Add2~6_combout\,
	combout => \uut|Selector66~0_combout\);

-- Location: LCFF_X44_Y15_N9
\uut|CntWaitCycles[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector66~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(3));

-- Location: LCCOMB_X43_Y15_N8
\uut|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~8_combout\ = (\uut|CntWaitCycles\(4) & (\uut|Add2~7\ $ (GND))) # (!\uut|CntWaitCycles\(4) & (!\uut|Add2~7\ & VCC))
-- \uut|Add2~9\ = CARRY((\uut|CntWaitCycles\(4) & !\uut|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(4),
	datad => VCC,
	cin => \uut|Add2~7\,
	combout => \uut|Add2~8_combout\,
	cout => \uut|Add2~9\);

-- Location: LCCOMB_X42_Y15_N18
\uut|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector64~0_combout\ = (\uut|Add2~10_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add2~10_combout\,
	datad => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector64~0_combout\);

-- Location: LCFF_X42_Y15_N19
\uut|CntWaitCycles[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector64~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(5));

-- Location: LCCOMB_X42_Y15_N28
\uut|Equal2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~8_combout\ = (((!\uut|CntWaitCycles\(0)) # (!\uut|CntWaitCycles\(6))) # (!\uut|CntWaitCycles\(5))) # (!\uut|CntWaitCycles\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(2),
	datab => \uut|CntWaitCycles\(5),
	datac => \uut|CntWaitCycles\(6),
	datad => \uut|CntWaitCycles\(0),
	combout => \uut|Equal2~8_combout\);

-- Location: LCCOMB_X30_Y15_N22
\uut|CntWaitCycles[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[30]~0_combout\ = ((\uut|Equal2~10_combout\ & (\uut|State.WaitForRead~regout\ & !\uut|Equal2~8_combout\))) # (!\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~10_combout\,
	datab => \uut|State.WaitForRead~regout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|Equal2~8_combout\,
	combout => \uut|CntWaitCycles[30]~0_combout\);

-- Location: LCCOMB_X44_Y15_N30
\uut|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector65~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~8_combout\,
	combout => \uut|Selector65~0_combout\);

-- Location: LCFF_X44_Y15_N31
\uut|CntWaitCycles[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector65~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(4));

-- Location: LCCOMB_X44_Y15_N20
\uut|Equal2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~7_combout\ = (!\uut|CntWaitCycles\(7) & (!\uut|CntWaitCycles\(4) & (!\uut|CntWaitCycles\(3) & !\uut|CntWaitCycles\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(7),
	datab => \uut|CntWaitCycles\(4),
	datac => \uut|CntWaitCycles\(3),
	datad => \uut|CntWaitCycles\(1),
	combout => \uut|Equal2~7_combout\);

-- Location: LCCOMB_X43_Y15_N14
\uut|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~14_combout\ = (\uut|CntWaitCycles\(7) & (!\uut|Add2~13\)) # (!\uut|CntWaitCycles\(7) & ((\uut|Add2~13\) # (GND)))
-- \uut|Add2~15\ = CARRY((!\uut|Add2~13\) # (!\uut|CntWaitCycles\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(7),
	datad => VCC,
	cin => \uut|Add2~13\,
	combout => \uut|Add2~14_combout\,
	cout => \uut|Add2~15\);

-- Location: LCCOMB_X44_Y15_N12
\uut|Selector62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector62~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~14_combout\,
	combout => \uut|Selector62~0_combout\);

-- Location: LCFF_X44_Y15_N13
\uut|CntWaitCycles[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector62~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(7));

-- Location: LCCOMB_X43_Y15_N16
\uut|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~16_combout\ = (\uut|CntWaitCycles\(8) & (\uut|Add2~15\ $ (GND))) # (!\uut|CntWaitCycles\(8) & (!\uut|Add2~15\ & VCC))
-- \uut|Add2~17\ = CARRY((\uut|CntWaitCycles\(8) & !\uut|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(8),
	datad => VCC,
	cin => \uut|Add2~15\,
	combout => \uut|Add2~16_combout\,
	cout => \uut|Add2~17\);

-- Location: LCCOMB_X44_Y15_N24
\uut|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector61~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~16_combout\,
	combout => \uut|Selector61~0_combout\);

-- Location: LCFF_X44_Y15_N25
\uut|CntWaitCycles[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector61~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(8));

-- Location: LCCOMB_X43_Y15_N20
\uut|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~20_combout\ = (\uut|CntWaitCycles\(10) & (\uut|Add2~19\ $ (GND))) # (!\uut|CntWaitCycles\(10) & (!\uut|Add2~19\ & VCC))
-- \uut|Add2~21\ = CARRY((\uut|CntWaitCycles\(10) & !\uut|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(10),
	datad => VCC,
	cin => \uut|Add2~19\,
	combout => \uut|Add2~20_combout\,
	cout => \uut|Add2~21\);

-- Location: LCCOMB_X44_Y15_N4
\uut|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector59~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datac => \uut|Add2~20_combout\,
	combout => \uut|Selector59~0_combout\);

-- Location: LCFF_X44_Y15_N5
\uut|CntWaitCycles[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector59~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(10));

-- Location: LCCOMB_X43_Y15_N22
\uut|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~22_combout\ = (\uut|CntWaitCycles\(11) & (!\uut|Add2~21\)) # (!\uut|CntWaitCycles\(11) & ((\uut|Add2~21\) # (GND)))
-- \uut|Add2~23\ = CARRY((!\uut|Add2~21\) # (!\uut|CntWaitCycles\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(11),
	datad => VCC,
	cin => \uut|Add2~21\,
	combout => \uut|Add2~22_combout\,
	cout => \uut|Add2~23\);

-- Location: LCCOMB_X44_Y15_N2
\uut|Selector58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector58~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~22_combout\,
	combout => \uut|Selector58~0_combout\);

-- Location: LCFF_X44_Y15_N3
\uut|CntWaitCycles[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector58~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(11));

-- Location: LCCOMB_X44_Y15_N18
\uut|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~6_combout\ = (!\uut|CntWaitCycles\(9) & (!\uut|CntWaitCycles\(10) & (!\uut|CntWaitCycles\(8) & !\uut|CntWaitCycles\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(9),
	datab => \uut|CntWaitCycles\(10),
	datac => \uut|CntWaitCycles\(8),
	datad => \uut|CntWaitCycles\(11),
	combout => \uut|Equal2~6_combout\);

-- Location: LCCOMB_X30_Y15_N28
\uut|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~1_combout\ = (!\uut|Equal2~6_combout\) # (!\uut|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Equal2~7_combout\,
	datad => \uut|Equal2~6_combout\,
	combout => \uut|Equal4~1_combout\);

-- Location: LCCOMB_X43_Y15_N30
\uut|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~30_combout\ = (\uut|CntWaitCycles\(15) & (!\uut|Add2~29\)) # (!\uut|CntWaitCycles\(15) & ((\uut|Add2~29\) # (GND)))
-- \uut|Add2~31\ = CARRY((!\uut|Add2~29\) # (!\uut|CntWaitCycles\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(15),
	datad => VCC,
	cin => \uut|Add2~29\,
	combout => \uut|Add2~30_combout\,
	cout => \uut|Add2~31\);

-- Location: LCCOMB_X42_Y15_N26
\uut|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector54~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~30_combout\,
	combout => \uut|Selector54~0_combout\);

-- Location: LCFF_X42_Y15_N27
\uut|CntWaitCycles[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector54~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(15));

-- Location: LCCOMB_X43_Y14_N0
\uut|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~32_combout\ = (\uut|CntWaitCycles\(16) & (\uut|Add2~31\ $ (GND))) # (!\uut|CntWaitCycles\(16) & (!\uut|Add2~31\ & VCC))
-- \uut|Add2~33\ = CARRY((\uut|CntWaitCycles\(16) & !\uut|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(16),
	datad => VCC,
	cin => \uut|Add2~31\,
	combout => \uut|Add2~32_combout\,
	cout => \uut|Add2~33\);

-- Location: LCCOMB_X43_Y14_N2
\uut|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~34_combout\ = (\uut|CntWaitCycles\(17) & (!\uut|Add2~33\)) # (!\uut|CntWaitCycles\(17) & ((\uut|Add2~33\) # (GND)))
-- \uut|Add2~35\ = CARRY((!\uut|Add2~33\) # (!\uut|CntWaitCycles\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(17),
	datad => VCC,
	cin => \uut|Add2~33\,
	combout => \uut|Add2~34_combout\,
	cout => \uut|Add2~35\);

-- Location: LCCOMB_X42_Y14_N24
\uut|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector52~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~34_combout\,
	combout => \uut|Selector52~0_combout\);

-- Location: LCFF_X42_Y14_N25
\uut|CntWaitCycles[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector52~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(17));

-- Location: LCCOMB_X43_Y14_N4
\uut|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~36_combout\ = (\uut|CntWaitCycles\(18) & (\uut|Add2~35\ $ (GND))) # (!\uut|CntWaitCycles\(18) & (!\uut|Add2~35\ & VCC))
-- \uut|Add2~37\ = CARRY((\uut|CntWaitCycles\(18) & !\uut|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(18),
	datad => VCC,
	cin => \uut|Add2~35\,
	combout => \uut|Add2~36_combout\,
	cout => \uut|Add2~37\);

-- Location: LCCOMB_X42_Y14_N6
\uut|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector51~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~36_combout\,
	combout => \uut|Selector51~0_combout\);

-- Location: LCFF_X42_Y14_N7
\uut|CntWaitCycles[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector51~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(18));

-- Location: LCCOMB_X43_Y14_N8
\uut|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~40_combout\ = (\uut|CntWaitCycles\(20) & (\uut|Add2~39\ $ (GND))) # (!\uut|CntWaitCycles\(20) & (!\uut|Add2~39\ & VCC))
-- \uut|Add2~41\ = CARRY((\uut|CntWaitCycles\(20) & !\uut|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(20),
	datad => VCC,
	cin => \uut|Add2~39\,
	combout => \uut|Add2~40_combout\,
	cout => \uut|Add2~41\);

-- Location: LCCOMB_X43_Y14_N10
\uut|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~42_combout\ = (\uut|CntWaitCycles\(21) & (!\uut|Add2~41\)) # (!\uut|CntWaitCycles\(21) & ((\uut|Add2~41\) # (GND)))
-- \uut|Add2~43\ = CARRY((!\uut|Add2~41\) # (!\uut|CntWaitCycles\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(21),
	datad => VCC,
	cin => \uut|Add2~41\,
	combout => \uut|Add2~42_combout\,
	cout => \uut|Add2~43\);

-- Location: LCCOMB_X44_Y15_N28
\uut|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector48~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~42_combout\,
	combout => \uut|Selector48~0_combout\);

-- Location: LCFF_X44_Y15_N29
\uut|CntWaitCycles[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector48~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(21));

-- Location: LCCOMB_X43_Y14_N14
\uut|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~46_combout\ = (\uut|CntWaitCycles\(23) & (!\uut|Add2~45\)) # (!\uut|CntWaitCycles\(23) & ((\uut|Add2~45\) # (GND)))
-- \uut|Add2~47\ = CARRY((!\uut|Add2~45\) # (!\uut|CntWaitCycles\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(23),
	datad => VCC,
	cin => \uut|Add2~45\,
	combout => \uut|Add2~46_combout\,
	cout => \uut|Add2~47\);

-- Location: LCCOMB_X44_Y15_N16
\uut|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector46~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~46_combout\,
	combout => \uut|Selector46~0_combout\);

-- Location: LCFF_X44_Y15_N17
\uut|CntWaitCycles[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector46~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(23));

-- Location: LCCOMB_X43_Y14_N20
\uut|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~52_combout\ = (\uut|CntWaitCycles\(26) & (\uut|Add2~51\ $ (GND))) # (!\uut|CntWaitCycles\(26) & (!\uut|Add2~51\ & VCC))
-- \uut|Add2~53\ = CARRY((\uut|CntWaitCycles\(26) & !\uut|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(26),
	datad => VCC,
	cin => \uut|Add2~51\,
	combout => \uut|Add2~52_combout\,
	cout => \uut|Add2~53\);

-- Location: LCCOMB_X42_Y14_N28
\uut|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector43~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~52_combout\,
	combout => \uut|Selector43~0_combout\);

-- Location: LCFF_X42_Y14_N29
\uut|CntWaitCycles[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector43~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(26));

-- Location: LCCOMB_X43_Y14_N22
\uut|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~54_combout\ = (\uut|CntWaitCycles\(27) & (!\uut|Add2~53\)) # (!\uut|CntWaitCycles\(27) & ((\uut|Add2~53\) # (GND)))
-- \uut|Add2~55\ = CARRY((!\uut|Add2~53\) # (!\uut|CntWaitCycles\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(27),
	datad => VCC,
	cin => \uut|Add2~53\,
	combout => \uut|Add2~54_combout\,
	cout => \uut|Add2~55\);

-- Location: LCCOMB_X42_Y14_N26
\uut|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector42~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datac => \uut|Add2~54_combout\,
	combout => \uut|Selector42~0_combout\);

-- Location: LCFF_X42_Y14_N27
\uut|CntWaitCycles[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector42~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(27));

-- Location: LCCOMB_X43_Y14_N24
\uut|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~56_combout\ = (\uut|CntWaitCycles\(28) & (\uut|Add2~55\ $ (GND))) # (!\uut|CntWaitCycles\(28) & (!\uut|Add2~55\ & VCC))
-- \uut|Add2~57\ = CARRY((\uut|CntWaitCycles\(28) & !\uut|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(28),
	datad => VCC,
	cin => \uut|Add2~55\,
	combout => \uut|Add2~56_combout\,
	cout => \uut|Add2~57\);

-- Location: LCCOMB_X43_Y14_N26
\uut|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~58_combout\ = (\uut|CntWaitCycles\(29) & (!\uut|Add2~57\)) # (!\uut|CntWaitCycles\(29) & ((\uut|Add2~57\) # (GND)))
-- \uut|Add2~59\ = CARRY((!\uut|Add2~57\) # (!\uut|CntWaitCycles\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(29),
	datad => VCC,
	cin => \uut|Add2~57\,
	combout => \uut|Add2~58_combout\,
	cout => \uut|Add2~59\);

-- Location: LCCOMB_X42_Y14_N4
\uut|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector40~0_combout\ = (\uut|Add2~58_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add2~58_combout\,
	datad => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector40~0_combout\);

-- Location: LCFF_X42_Y14_N5
\uut|CntWaitCycles[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector40~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(29));

-- Location: LCCOMB_X42_Y14_N18
\uut|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector39~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~60_combout\,
	combout => \uut|Selector39~0_combout\);

-- Location: LCFF_X42_Y14_N19
\uut|CntWaitCycles[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector39~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(30));

-- Location: LCCOMB_X42_Y14_N30
\uut|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector41~0_combout\ = (!\uut|CntWaitCycles[30]~0_combout\ & \uut|Add2~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles[30]~0_combout\,
	datad => \uut|Add2~56_combout\,
	combout => \uut|Selector41~0_combout\);

-- Location: LCFF_X42_Y14_N31
\uut|CntWaitCycles[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector41~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(28));

-- Location: LCCOMB_X42_Y14_N8
\uut|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~0_combout\ = (!\uut|CntWaitCycles\(31) & (!\uut|CntWaitCycles\(30) & (!\uut|CntWaitCycles\(29) & !\uut|CntWaitCycles\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(31),
	datab => \uut|CntWaitCycles\(30),
	datac => \uut|CntWaitCycles\(29),
	datad => \uut|CntWaitCycles\(28),
	combout => \uut|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y14_N2
\uut|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector53~0_combout\ = (\uut|Add2~32_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add2~32_combout\,
	datad => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector53~0_combout\);

-- Location: LCFF_X42_Y14_N3
\uut|CntWaitCycles[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector53~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(16));

-- Location: LCCOMB_X42_Y14_N20
\uut|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~3_combout\ = (!\uut|CntWaitCycles\(19) & (!\uut|CntWaitCycles\(16) & (!\uut|CntWaitCycles\(17) & !\uut|CntWaitCycles\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(19),
	datab => \uut|CntWaitCycles\(16),
	datac => \uut|CntWaitCycles\(17),
	datad => \uut|CntWaitCycles\(18),
	combout => \uut|Equal2~3_combout\);

-- Location: LCCOMB_X44_Y15_N22
\uut|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector49~0_combout\ = (\uut|Add2~40_combout\ & !\uut|CntWaitCycles[30]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add2~40_combout\,
	datac => \uut|CntWaitCycles[30]~0_combout\,
	combout => \uut|Selector49~0_combout\);

-- Location: LCFF_X44_Y15_N23
\uut|CntWaitCycles[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector49~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(20));

-- Location: LCCOMB_X44_Y15_N0
\uut|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~2_combout\ = (!\uut|CntWaitCycles\(22) & (!\uut|CntWaitCycles\(21) & (!\uut|CntWaitCycles\(23) & !\uut|CntWaitCycles\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(22),
	datab => \uut|CntWaitCycles\(21),
	datac => \uut|CntWaitCycles\(23),
	datad => \uut|CntWaitCycles\(20),
	combout => \uut|Equal2~2_combout\);

-- Location: LCCOMB_X42_Y14_N22
\uut|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~4_combout\ = (\uut|Equal2~1_combout\ & (\uut|Equal2~0_combout\ & (\uut|Equal2~3_combout\ & \uut|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~1_combout\,
	datab => \uut|Equal2~0_combout\,
	datac => \uut|Equal2~3_combout\,
	datad => \uut|Equal2~2_combout\,
	combout => \uut|Equal2~4_combout\);

-- Location: LCCOMB_X30_Y15_N30
\uut|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~2_combout\ = ((\uut|Equal4~1_combout\) # ((\uut|Equal4~0_combout\) # (!\uut|Equal2~4_combout\))) # (!\uut|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~5_combout\,
	datab => \uut|Equal4~1_combout\,
	datac => \uut|Equal2~4_combout\,
	datad => \uut|Equal4~0_combout\,
	combout => \uut|Equal4~2_combout\);

-- Location: LCCOMB_X30_Y15_N2
\uut|Equal2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal2~9_combout\ = ((\uut|Equal4~1_combout\) # ((\uut|Equal2~8_combout\) # (!\uut|Equal2~4_combout\))) # (!\uut|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal2~5_combout\,
	datab => \uut|Equal4~1_combout\,
	datac => \uut|Equal2~4_combout\,
	datad => \uut|Equal2~8_combout\,
	combout => \uut|Equal2~9_combout\);

-- Location: LCCOMB_X30_Y15_N0
\uut|SlaveClkCounter[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[0]~4_combout\ = ((\uut|State.OutputAndWaitForWrite~regout\ & (\uut|Equal4~2_combout\)) # (!\uut|State.OutputAndWaitForWrite~regout\ & ((\uut|Equal2~9_combout\)))) # (!\GenerateStrobe|oStrobe~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|Equal4~2_combout\,
	datac => \GenerateStrobe|oStrobe~regout\,
	datad => \uut|Equal2~9_combout\,
	combout => \uut|SlaveClkCounter[0]~4_combout\);

-- Location: LCCOMB_X29_Y15_N4
\uut|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector2~2_combout\ = (\uut|State.Init~regout\ & (\uut|State.WaitForRead~regout\ & \uut|SlaveClkCounter[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|State.WaitForRead~regout\,
	datac => \uut|SlaveClkCounter[0]~4_combout\,
	combout => \uut|Selector2~2_combout\);

-- Location: LCCOMB_X29_Y15_N28
\uut|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector2~3_combout\ = (\uut|Selector2~1_combout\ & ((\uut|Selector2~2_combout\) # ((\uut|State.SetBurstRegister~regout\ & \uut|Sel~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector2~1_combout\,
	datab => \uut|Selector2~2_combout\,
	datac => \uut|State.SetBurstRegister~regout\,
	datad => \uut|Sel~0_combout\,
	combout => \uut|Selector2~3_combout\);

-- Location: LCFF_X29_Y15_N29
\uut|State.WaitForRead\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector2~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.WaitForRead~regout\);

-- Location: LCCOMB_X25_Y15_N22
\uut|Selector35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector35~2_combout\ = (\uut|State.OutputAndWaitForWrite~regout\) # (((\uut|State.WaitForRead~regout\) # (!\uut|State.Init~regout\)) # (!\uut|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|Add1~2_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector35~2_combout\);

-- Location: LCFF_X25_Y15_N23
\uut|SlaveClkCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector35~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(1));

-- Location: LCCOMB_X25_Y14_N4
\uut|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~4_combout\ = (\uut|SlaveClkCounter\(2) & (\uut|Add1~3\ $ (GND))) # (!\uut|SlaveClkCounter\(2) & ((GND) # (!\uut|Add1~3\)))
-- \uut|Add1~5\ = CARRY((!\uut|Add1~3\) # (!\uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(2),
	datad => VCC,
	cin => \uut|Add1~3\,
	combout => \uut|Add1~4_combout\,
	cout => \uut|Add1~5\);

-- Location: LCCOMB_X25_Y15_N12
\uut|Selector34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector34~2_combout\ = (\uut|State.OutputAndWaitForWrite~regout\) # (((\uut|State.WaitForRead~regout\) # (!\uut|Add1~4_combout\)) # (!\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~4_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector34~2_combout\);

-- Location: LCFF_X25_Y15_N13
\uut|SlaveClkCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector34~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(2));

-- Location: LCCOMB_X25_Y14_N6
\uut|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add1~6_combout\ = (\uut|SlaveClkCounter\(3) & (\uut|Add1~5\ & VCC)) # (!\uut|SlaveClkCounter\(3) & (!\uut|Add1~5\))
-- \uut|Add1~7\ = CARRY((!\uut|SlaveClkCounter\(3) & !\uut|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(3),
	datad => VCC,
	cin => \uut|Add1~5\,
	combout => \uut|Add1~6_combout\,
	cout => \uut|Add1~7\);

-- Location: LCCOMB_X25_Y15_N10
\uut|Selector33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector33~2_combout\ = (\uut|State.OutputAndWaitForWrite~regout\) # ((\uut|Add1~6_combout\) # ((\uut|State.WaitForRead~regout\) # (!\uut|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|Add1~6_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector33~2_combout\);

-- Location: LCFF_X25_Y15_N11
\uut|SlaveClkCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector33~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(3));

-- Location: LCCOMB_X25_Y15_N0
\uut|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector32~0_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & ((\uut|State.WaitForRead~regout\) # ((\uut|State.Init~regout\ & \uut|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add1~8_combout\,
	datad => \uut|State.WaitForRead~regout\,
	combout => \uut|Selector32~0_combout\);

-- Location: LCFF_X25_Y15_N1
\uut|SlaveClkCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector32~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[26]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(4));

-- Location: LCCOMB_X25_Y16_N12
\uut|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~2_combout\ = (!\uut|SlaveClkCounter\(4) & \uut|SlaveClkCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(4),
	datad => \uut|SlaveClkCounter\(5),
	combout => \uut|Decoder0~2_combout\);

-- Location: LCCOMB_X25_Y16_N8
\uut|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan1~0_combout\ = ((!\uut|SlaveClkCounter\(5)) # (!\uut|SlaveClkCounter\(3))) # (!\uut|SlaveClkCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(4),
	datac => \uut|SlaveClkCounter\(3),
	datad => \uut|SlaveClkCounter\(5),
	combout => \uut|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y14_N10
\uut|MasterOutput~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~6_combout\ = (!\uut|SlaveClkCounter\(11) & (!\uut|SlaveClkCounter\(14) & (!\uut|SlaveClkCounter\(12) & !\uut|SlaveClkCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(11),
	datab => \uut|SlaveClkCounter\(14),
	datac => \uut|SlaveClkCounter\(12),
	datad => \uut|SlaveClkCounter\(13),
	combout => \uut|MasterOutput~6_combout\);

-- Location: LCCOMB_X26_Y14_N18
\uut|MasterOutput~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~8_combout\ = (\uut|MasterOutput~5_combout\ & (!\uut|SlaveClkCounter\(6) & (\uut|MasterOutput~7_combout\ & \uut|MasterOutput~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MasterOutput~5_combout\,
	datab => \uut|SlaveClkCounter\(6),
	datac => \uut|MasterOutput~7_combout\,
	datad => \uut|MasterOutput~6_combout\,
	combout => \uut|MasterOutput~8_combout\);

-- Location: LCCOMB_X25_Y16_N2
\uut|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~1_combout\ = (\uut|Selector1~0_combout\ & ((\uut|SlaveClkCounter\(31)) # ((\uut|LessThan1~0_combout\ & \uut|MasterOutput~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(31),
	datab => \uut|Selector1~0_combout\,
	datac => \uut|LessThan1~0_combout\,
	datad => \uut|MasterOutput~8_combout\,
	combout => \uut|Decoder0~1_combout\);

-- Location: LCCOMB_X6_Y21_N0
\uut|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~5_combout\ = (\uut|SlaveClkCounter\(3) & (\uut|Decoder0~2_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datab => \uut|Decoder0~2_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~5_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iMISO~I\ : cycloneii_io
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
	padio => ww_iMISO,
	combout => \iMISO~combout\);

-- Location: LCCOMB_X6_Y21_N26
\uut|BurstRegData[46]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[46]~1_combout\ = (\uut|Decoder0~6_combout\ & ((\uut|Decoder0~5_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~5_combout\ & (\uut|BurstRegData\(46))))) # (!\uut|Decoder0~6_combout\ & (((\uut|BurstRegData\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~6_combout\,
	datab => \uut|Decoder0~5_combout\,
	datac => \uut|BurstRegData\(46),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[46]~1_combout\);

-- Location: LCFF_X6_Y21_N27
\uut|BurstRegData[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[46]~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(46));

-- Location: LCFF_X2_Y21_N27
\uut|oDataX[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector114~0_combout\,
	sdata => \uut|BurstRegData\(46),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(6));

-- Location: LCCOMB_X1_Y21_N16
\uut|Selector117~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector117~0_combout\ = (\uut|oDataX\(3) & \uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(3),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector117~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\uut|BurstRegData[43]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[43]~3_combout\ = (\uut|Decoder0~9_combout\ & ((\uut|SlaveClkCounter\(1) & (\uut|BurstRegData\(43))) # (!\uut|SlaveClkCounter\(1) & ((\iMISO~combout\))))) # (!\uut|Decoder0~9_combout\ & (((\uut|BurstRegData\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~9_combout\,
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|BurstRegData\(43),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[43]~3_combout\);

-- Location: LCFF_X1_Y21_N15
\uut|BurstRegData[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[43]~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(43));

-- Location: LCFF_X1_Y21_N17
\uut|oDataX[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector117~0_combout\,
	sdata => \uut|BurstRegData\(43),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(3));

-- Location: LCCOMB_X2_Y21_N28
\uut|Selector116~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector116~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataX\(4),
	combout => \uut|Selector116~0_combout\);

-- Location: LCCOMB_X6_Y21_N8
\uut|BurstRegData[44]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[44]~2_combout\ = (\uut|Decoder0~7_combout\ & ((\uut|Decoder0~5_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~5_combout\ & (\uut|BurstRegData\(44))))) # (!\uut|Decoder0~7_combout\ & (((\uut|BurstRegData\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~7_combout\,
	datab => \uut|Decoder0~5_combout\,
	datac => \uut|BurstRegData\(44),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[44]~2_combout\);

-- Location: LCFF_X6_Y21_N9
\uut|BurstRegData[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[44]~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(44));

-- Location: LCFF_X2_Y21_N29
\uut|oDataX[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector116~0_combout\,
	sdata => \uut|BurstRegData\(44),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(4));

-- Location: LCCOMB_X2_Y21_N30
\CheckValidData~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~0_combout\ = (\uut|oDataX\(0) & (((\uut|oDataX\(3) & \uut|oDataX\(4))) # (!\uut|oDataX\(6)))) # (!\uut|oDataX\(0) & (!\uut|oDataX\(6) & ((\uut|oDataX\(3)) # (\uut|oDataX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(0),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(4),
	combout => \CheckValidData~0_combout\);

-- Location: LCCOMB_X2_Y21_N16
\uut|Selector113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector113~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataX\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataX\(7),
	combout => \uut|Selector113~0_combout\);

-- Location: LCCOMB_X6_Y21_N22
\uut|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~4_combout\ = (\uut|Decoder0~3_combout\ & (\uut|Decoder0~2_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~3_combout\,
	datab => \uut|Decoder0~2_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~4_combout\);

-- Location: LCCOMB_X6_Y21_N30
\uut|BurstRegData[47]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[47]~0_combout\ = (\uut|Decoder0~4_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~4_combout\ & (\uut|BurstRegData\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Decoder0~4_combout\,
	datac => \uut|BurstRegData\(47),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[47]~0_combout\);

-- Location: LCFF_X6_Y21_N31
\uut|BurstRegData[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[47]~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(47));

-- Location: LCFF_X2_Y21_N17
\uut|oDataX[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector113~0_combout\,
	sdata => \uut|BurstRegData\(47),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(7));

-- Location: LCCOMB_X1_Y21_N28
\uut|Selector118~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector118~0_combout\ = (\uut|oDataX\(2) & \uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(2),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector118~0_combout\);

-- Location: LCCOMB_X6_Y21_N20
\uut|BurstRegData[42]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[42]~6_combout\ = (\uut|Decoder0~12_combout\ & ((\uut|Decoder0~5_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~5_combout\ & (\uut|BurstRegData\(42))))) # (!\uut|Decoder0~12_combout\ & (((\uut|BurstRegData\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~12_combout\,
	datab => \uut|Decoder0~5_combout\,
	datac => \uut|BurstRegData\(42),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[42]~6_combout\);

-- Location: LCFF_X6_Y21_N21
\uut|BurstRegData[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[42]~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(42));

-- Location: LCFF_X1_Y21_N29
\uut|oDataX[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector118~0_combout\,
	sdata => \uut|BurstRegData\(42),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(2));

-- Location: LCCOMB_X1_Y21_N30
\uut|Selector119~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector119~0_combout\ = (\uut|oDataX\(1) & \uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(1),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector119~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\uut|BurstRegData[41]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[41]~7_combout\ = (\uut|Decoder0~9_combout\ & ((\uut|SlaveClkCounter\(1) & ((\iMISO~combout\))) # (!\uut|SlaveClkCounter\(1) & (\uut|BurstRegData\(41))))) # (!\uut|Decoder0~9_combout\ & (((\uut|BurstRegData\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~9_combout\,
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|BurstRegData\(41),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[41]~7_combout\);

-- Location: LCFF_X1_Y21_N25
\uut|BurstRegData[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[41]~7_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(41));

-- Location: LCFF_X1_Y21_N31
\uut|oDataX[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector119~0_combout\,
	sdata => \uut|BurstRegData\(41),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(1));

-- Location: LCCOMB_X2_Y21_N0
\CheckValidData~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~1_combout\ = (\uut|oDataX\(5) & (\uut|oDataX\(2) & (\uut|oDataX\(1) & \uut|oDataX\(6)))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(2)) # ((\uut|oDataX\(1)) # (\uut|oDataX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(2),
	datac => \uut|oDataX\(1),
	datad => \uut|oDataX\(6),
	combout => \CheckValidData~1_combout\);

-- Location: LCCOMB_X2_Y21_N2
\CheckValidData~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~2_combout\ = (\uut|oDataX\(5) & (((!\CheckValidData~1_combout\) # (!\uut|oDataX\(7))) # (!\CheckValidData~0_combout\))) # (!\uut|oDataX\(5) & ((\CheckValidData~0_combout\) # ((\uut|oDataX\(7)) # (\CheckValidData~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \CheckValidData~0_combout\,
	datac => \uut|oDataX\(7),
	datad => \CheckValidData~1_combout\,
	combout => \CheckValidData~2_combout\);

-- Location: LCCOMB_X3_Y21_N24
\uut|Selector121~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector121~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(7),
	combout => \uut|Selector121~0_combout\);

-- Location: LCCOMB_X5_Y21_N0
\uut|Decoder0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~13_combout\ = (!\uut|SlaveClkCounter\(3) & (!\uut|SlaveClkCounter\(1) & (!\uut|SlaveClkCounter\(2) & !\uut|SlaveClkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(2),
	datad => \uut|SlaveClkCounter\(0),
	combout => \uut|Decoder0~13_combout\);

-- Location: LCCOMB_X5_Y21_N26
\uut|Decoder0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~14_combout\ = (\uut|Decoder0~2_combout\ & (\uut|Decoder0~13_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~2_combout\,
	datab => \uut|Decoder0~13_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~14_combout\);

-- Location: LCCOMB_X5_Y21_N18
\uut|BurstRegData[39]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[39]~8_combout\ = (\uut|Decoder0~14_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~14_combout\ & (\uut|BurstRegData\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Decoder0~14_combout\,
	datac => \uut|BurstRegData\(39),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[39]~8_combout\);

-- Location: LCFF_X5_Y21_N19
\uut|BurstRegData[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[39]~8_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(39));

-- Location: LCFF_X3_Y21_N25
\uut|oDataY[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector121~0_combout\,
	sdata => \uut|BurstRegData\(39),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(7));

-- Location: LCCOMB_X4_Y21_N24
\uut|Selector125~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector125~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(3),
	combout => \uut|Selector125~0_combout\);

-- Location: LCCOMB_X5_Y21_N4
\uut|Decoder0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~16_combout\ = (!\uut|SlaveClkCounter\(3) & (\uut|SlaveClkCounter\(2) & !\uut|SlaveClkCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datac => \uut|SlaveClkCounter\(2),
	datad => \uut|SlaveClkCounter\(0),
	combout => \uut|Decoder0~16_combout\);

-- Location: LCCOMB_X5_Y21_N14
\uut|Decoder0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~17_combout\ = (\uut|Decoder0~2_combout\ & (\uut|Decoder0~16_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~2_combout\,
	datab => \uut|Decoder0~16_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~17_combout\);

-- Location: LCCOMB_X5_Y21_N12
\uut|BurstRegData[35]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[35]~11_combout\ = (\uut|SlaveClkCounter\(1) & (((\uut|BurstRegData\(35))))) # (!\uut|SlaveClkCounter\(1) & ((\uut|Decoder0~17_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~17_combout\ & (\uut|BurstRegData\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(1),
	datab => \uut|Decoder0~17_combout\,
	datac => \uut|BurstRegData\(35),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[35]~11_combout\);

-- Location: LCFF_X5_Y21_N13
\uut|BurstRegData[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[35]~11_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(35));

-- Location: LCFF_X4_Y21_N25
\uut|oDataY[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector125~0_combout\,
	sdata => \uut|BurstRegData\(35),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(3));

-- Location: LCCOMB_X3_Y21_N18
\uut|Selector122~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector122~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(6),
	combout => \uut|Selector122~0_combout\);

-- Location: LCCOMB_X6_Y21_N2
\uut|Decoder0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~15_combout\ = (!\uut|SlaveClkCounter\(3) & (\uut|Decoder0~2_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datab => \uut|Decoder0~2_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~15_combout\);

-- Location: LCCOMB_X6_Y21_N28
\uut|BurstRegData[38]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[38]~9_combout\ = (\uut|Decoder0~6_combout\ & ((\uut|Decoder0~15_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~15_combout\ & (\uut|BurstRegData\(38))))) # (!\uut|Decoder0~6_combout\ & (((\uut|BurstRegData\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~6_combout\,
	datab => \uut|Decoder0~15_combout\,
	datac => \uut|BurstRegData\(38),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[38]~9_combout\);

-- Location: LCFF_X6_Y21_N29
\uut|BurstRegData[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[38]~9_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(38));

-- Location: LCFF_X3_Y21_N19
\uut|oDataY[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector122~0_combout\,
	sdata => \uut|BurstRegData\(38),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(6));

-- Location: LCCOMB_X6_Y21_N16
\uut|Selector124~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector124~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(4),
	combout => \uut|Selector124~0_combout\);

-- Location: LCCOMB_X6_Y21_N4
\uut|BurstRegData[36]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[36]~10_combout\ = (\uut|Decoder0~7_combout\ & ((\uut|Decoder0~15_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~15_combout\ & (\uut|BurstRegData\(36))))) # (!\uut|Decoder0~7_combout\ & (((\uut|BurstRegData\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~7_combout\,
	datab => \uut|Decoder0~15_combout\,
	datac => \uut|BurstRegData\(36),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[36]~10_combout\);

-- Location: LCFF_X6_Y21_N5
\uut|BurstRegData[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[36]~10_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(36));

-- Location: LCFF_X6_Y21_N17
\uut|oDataY[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector124~0_combout\,
	sdata => \uut|BurstRegData\(36),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(4));

-- Location: LCCOMB_X3_Y21_N20
\CheckValidData~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~3_combout\ = (\uut|oDataY\(0) & (((\uut|oDataY\(3) & \uut|oDataY\(4))) # (!\uut|oDataY\(6)))) # (!\uut|oDataY\(0) & (!\uut|oDataY\(6) & ((\uut|oDataY\(3)) # (\uut|oDataY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(0),
	datab => \uut|oDataY\(3),
	datac => \uut|oDataY\(6),
	datad => \uut|oDataY\(4),
	combout => \CheckValidData~3_combout\);

-- Location: LCCOMB_X3_Y21_N12
\uut|Selector123~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector123~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(5),
	combout => \uut|Selector123~0_combout\);

-- Location: LCCOMB_X5_Y21_N2
\uut|Decoder0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~19_combout\ = (\uut|Decoder0~18_combout\ & (\uut|Decoder0~2_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~18_combout\,
	datab => \uut|Decoder0~2_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~19_combout\);

-- Location: LCCOMB_X5_Y21_N6
\uut|BurstRegData[37]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[37]~13_combout\ = (\uut|Decoder0~19_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~19_combout\ & (\uut|BurstRegData\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Decoder0~19_combout\,
	datac => \uut|BurstRegData\(37),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[37]~13_combout\);

-- Location: LCFF_X5_Y21_N7
\uut|BurstRegData[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[37]~13_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(37));

-- Location: LCFF_X3_Y21_N13
\uut|oDataY[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector123~0_combout\,
	sdata => \uut|BurstRegData\(37),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(5));

-- Location: LCCOMB_X4_Y21_N30
\uut|Selector127~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector127~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(1),
	combout => \uut|Selector127~0_combout\);

-- Location: LCCOMB_X5_Y21_N10
\uut|BurstRegData[33]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[33]~15_combout\ = (\uut|SlaveClkCounter\(1) & ((\uut|Decoder0~17_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~17_combout\ & (\uut|BurstRegData\(33))))) # (!\uut|SlaveClkCounter\(1) & (((\uut|BurstRegData\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(1),
	datab => \uut|Decoder0~17_combout\,
	datac => \uut|BurstRegData\(33),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[33]~15_combout\);

-- Location: LCFF_X5_Y21_N11
\uut|BurstRegData[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[33]~15_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(33));

-- Location: LCFF_X4_Y21_N31
\uut|oDataY[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector127~0_combout\,
	sdata => \uut|BurstRegData\(33),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(1));

-- Location: LCCOMB_X3_Y21_N6
\CheckValidData~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~4_combout\ = (\uut|oDataY\(2) & (((\uut|oDataY\(6) & \uut|oDataY\(1))) # (!\uut|oDataY\(5)))) # (!\uut|oDataY\(2) & (!\uut|oDataY\(5) & ((\uut|oDataY\(6)) # (\uut|oDataY\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(2),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(1),
	combout => \CheckValidData~4_combout\);

-- Location: LCCOMB_X3_Y21_N8
\CheckValidData~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~5_combout\ = (\uut|oDataY\(5) & (((!\CheckValidData~4_combout\) # (!\CheckValidData~3_combout\)) # (!\uut|oDataY\(7)))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(7)) # ((\CheckValidData~3_combout\) # (\CheckValidData~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(7),
	datac => \CheckValidData~3_combout\,
	datad => \CheckValidData~4_combout\,
	combout => \CheckValidData~5_combout\);

-- Location: LCCOMB_X26_Y14_N26
\uut|Selector104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector104~0_combout\ = (\uut|State.OutputAndWaitForWrite~regout\) # ((\uut|DataValid~regout\ & ((\uut|State.WaitForRead~regout\) # (\uut|State.ReadBurstRegister~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForRead~regout\,
	datab => \uut|State.OutputAndWaitForWrite~regout\,
	datac => \uut|DataValid~regout\,
	datad => \uut|State.ReadBurstRegister~regout\,
	combout => \uut|Selector104~0_combout\);

-- Location: LCFF_X26_Y14_N27
\uut|DataValid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector104~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataValid~regout\);

-- Location: LCCOMB_X26_Y14_N8
\CheckValidData~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~6_combout\ = (\uut|DataValid~regout\ & ((\CheckValidData~2_combout\) # (\CheckValidData~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CheckValidData~2_combout\,
	datac => \CheckValidData~5_combout\,
	datad => \uut|DataValid~regout\,
	combout => \CheckValidData~6_combout\);

-- Location: LCFF_X26_Y14_N9
\oDataValid~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \CheckValidData~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oDataValid~reg0_regout\);

-- Location: LCCOMB_X25_Y15_N28
\uut|Selector102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector102~0_combout\ = (\uut|State.SetBurstRegister~regout\ & (!\uut|Add1~0_combout\ & (\uut|Add1~4_combout\))) # (!\uut|State.SetBurstRegister~regout\ & (((\uut|State.Init~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetBurstRegister~regout\,
	datab => \uut|Add1~0_combout\,
	datac => \uut|Add1~4_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector102~0_combout\);

-- Location: LCCOMB_X26_Y15_N0
\uut|MasterOutput~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~10_combout\ = (\uut|MasterOutput~9_combout\ & (!\uut|SysClk~regout\ & (!\uut|Equal0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MasterOutput~9_combout\,
	datab => \uut|SysClk~regout\,
	datac => \uut|Equal0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|MasterOutput~10_combout\);

-- Location: LCCOMB_X26_Y15_N2
\uut|Selector102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector102~1_combout\ = (\uut|State.SetBurstRegister~regout\ & ((\uut|MasterOutput~10_combout\ & (\uut|Selector102~0_combout\)) # (!\uut|MasterOutput~10_combout\ & ((\uut|MasterOutput~regout\))))) # (!\uut|State.SetBurstRegister~regout\ & 
-- (\uut|Selector102~0_combout\ & (\uut|MasterOutput~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetBurstRegister~regout\,
	datab => \uut|Selector102~0_combout\,
	datac => \uut|MasterOutput~regout\,
	datad => \uut|MasterOutput~10_combout\,
	combout => \uut|Selector102~1_combout\);

-- Location: LCFF_X26_Y15_N3
\uut|MasterOutput\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector102~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MasterOutput~regout\);

-- Location: LCCOMB_X4_Y21_N4
\uut|Selector126~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector126~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(2),
	combout => \uut|Selector126~0_combout\);

-- Location: LCCOMB_X5_Y21_N28
\uut|Decoder0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~20_combout\ = (!\uut|SlaveClkCounter\(3) & (!\uut|SlaveClkCounter\(1) & (\uut|SlaveClkCounter\(2) & \uut|SlaveClkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(3),
	datab => \uut|SlaveClkCounter\(1),
	datac => \uut|SlaveClkCounter\(2),
	datad => \uut|SlaveClkCounter\(0),
	combout => \uut|Decoder0~20_combout\);

-- Location: LCCOMB_X5_Y21_N30
\uut|Decoder0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Decoder0~21_combout\ = (\uut|Decoder0~2_combout\ & (\uut|Decoder0~20_combout\ & (\uut|Decoder0~1_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~2_combout\,
	datab => \uut|Decoder0~20_combout\,
	datac => \uut|Decoder0~1_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Decoder0~21_combout\);

-- Location: LCCOMB_X5_Y21_N8
\uut|BurstRegData[34]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[34]~14_combout\ = (\uut|Decoder0~21_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~21_combout\ & (\uut|BurstRegData\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Decoder0~21_combout\,
	datac => \uut|BurstRegData\(34),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[34]~14_combout\);

-- Location: LCFF_X5_Y21_N9
\uut|BurstRegData[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[34]~14_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(34));

-- Location: LCFF_X4_Y21_N5
\uut|oDataY[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector126~0_combout\,
	sdata => \uut|BurstRegData\(34),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(2));

-- Location: LCCOMB_X4_Y21_N2
\uut|Selector128~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector128~0_combout\ = (\uut|State.Init~regout\ & \uut|oDataY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datac => \uut|oDataY\(0),
	combout => \uut|Selector128~0_combout\);

-- Location: LCCOMB_X6_Y21_N24
\uut|BurstRegData[32]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[32]~12_combout\ = (\uut|Decoder0~0_combout\ & ((\uut|Decoder0~15_combout\ & (\iMISO~combout\)) # (!\uut|Decoder0~15_combout\ & ((\uut|BurstRegData\(32)))))) # (!\uut|Decoder0~0_combout\ & (((\uut|BurstRegData\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|Decoder0~0_combout\,
	datac => \uut|BurstRegData\(32),
	datad => \uut|Decoder0~15_combout\,
	combout => \uut|BurstRegData[32]~12_combout\);

-- Location: LCFF_X6_Y21_N25
\uut|BurstRegData[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[32]~12_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(32));

-- Location: LCFF_X4_Y21_N3
\uut|oDataY[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector128~0_combout\,
	sdata => \uut|BurstRegData\(32),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(0));

-- Location: LCCOMB_X4_Y21_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\uut|oDataY\(2) & ((\uut|oDataY\(1)) # (\uut|oDataY\(3) $ (\uut|oDataY\(0))))) # (!\uut|oDataY\(2) & ((\uut|oDataY\(1) $ (\uut|oDataY\(3))) # (!\uut|oDataY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux6~0_combout\);

-- Location: LCFF_X4_Y21_N17
\oHEX1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[0]~reg0_regout\);

-- Location: LCCOMB_X4_Y21_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\uut|oDataY\(1) & ((\uut|oDataY\(0) & ((!\uut|oDataY\(3)))) # (!\uut|oDataY\(0) & (!\uut|oDataY\(2))))) # (!\uut|oDataY\(1) & ((\uut|oDataY\(3) $ (!\uut|oDataY\(0))) # (!\uut|oDataY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X4_Y21_N27
\oHEX1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux5~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[1]~reg0_regout\);

-- Location: LCCOMB_X4_Y21_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\uut|oDataY\(2) & (((!\uut|oDataY\(1) & \uut|oDataY\(0))) # (!\uut|oDataY\(3)))) # (!\uut|oDataY\(2) & (((\uut|oDataY\(3)) # (\uut|oDataY\(0))) # (!\uut|oDataY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux4~0_combout\);

-- Location: LCFF_X4_Y21_N29
\oHEX1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux4~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[2]~reg0_regout\);

-- Location: LCCOMB_X4_Y21_N22
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\uut|oDataY\(1) & ((\uut|oDataY\(2) & ((!\uut|oDataY\(0)))) # (!\uut|oDataY\(2) & ((\uut|oDataY\(0)) # (!\uut|oDataY\(3)))))) # (!\uut|oDataY\(1) & ((\uut|oDataY\(3)) # (\uut|oDataY\(2) $ (!\uut|oDataY\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X4_Y21_N23
\oHEX1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux3~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[3]~reg0_regout\);

-- Location: LCCOMB_X4_Y21_N0
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\uut|oDataY\(1) & (((\uut|oDataY\(3)) # (!\uut|oDataY\(0))))) # (!\uut|oDataY\(1) & ((\uut|oDataY\(2) & (\uut|oDataY\(3))) # (!\uut|oDataY\(2) & ((!\uut|oDataY\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux2~0_combout\);

-- Location: LCFF_X4_Y21_N1
\oHEX1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux2~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[4]~reg0_regout\);

-- Location: LCCOMB_X4_Y21_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\uut|oDataY\(1) & ((\uut|oDataY\(3)) # ((\uut|oDataY\(2) & !\uut|oDataY\(0))))) # (!\uut|oDataY\(1) & ((\uut|oDataY\(2) $ (\uut|oDataY\(3))) # (!\uut|oDataY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X4_Y21_N19
\oHEX1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux1~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[5]~reg0_regout\);

-- Location: LCCOMB_X4_Y21_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\uut|oDataY\(0) & (!\uut|oDataY\(3) & (\uut|oDataY\(1) $ (!\uut|oDataY\(2))))) # (!\uut|oDataY\(0) & (!\uut|oDataY\(1) & (\uut|oDataY\(2) $ (!\uut|oDataY\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(1),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(3),
	datad => \uut|oDataY\(0),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X4_Y21_N21
\oHEX1[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux0~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[6]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N30
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\uut|oDataY\(6) & ((\uut|oDataY\(5)) # (\uut|oDataY\(7) $ (\uut|oDataY\(4))))) # (!\uut|oDataY\(6) & ((\uut|oDataY\(5) $ (\uut|oDataY\(7))) # (!\uut|oDataY\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux13~0_combout\);

-- Location: LCFF_X3_Y21_N31
\oHEX2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux13~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[0]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N16
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\uut|oDataY\(5) & ((\uut|oDataY\(4) & ((!\uut|oDataY\(7)))) # (!\uut|oDataY\(4) & (!\uut|oDataY\(6))))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(7) $ (!\uut|oDataY\(4))) # (!\uut|oDataY\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux12~0_combout\);

-- Location: LCFF_X3_Y21_N17
\oHEX2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux12~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[1]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N10
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\uut|oDataY\(6) & (((!\uut|oDataY\(5) & \uut|oDataY\(4))) # (!\uut|oDataY\(7)))) # (!\uut|oDataY\(6) & (((\uut|oDataY\(7)) # (\uut|oDataY\(4))) # (!\uut|oDataY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux11~0_combout\);

-- Location: LCFF_X3_Y21_N11
\oHEX2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux11~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[2]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N28
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\uut|oDataY\(5) & ((\uut|oDataY\(6) & ((!\uut|oDataY\(4)))) # (!\uut|oDataY\(6) & ((\uut|oDataY\(4)) # (!\uut|oDataY\(7)))))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(7)) # (\uut|oDataY\(6) $ (!\uut|oDataY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux10~0_combout\);

-- Location: LCFF_X3_Y21_N29
\oHEX2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux10~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[3]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N22
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\uut|oDataY\(5) & (((\uut|oDataY\(7)) # (!\uut|oDataY\(4))))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(6) & (\uut|oDataY\(7))) # (!\uut|oDataY\(6) & ((!\uut|oDataY\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux9~0_combout\);

-- Location: LCFF_X3_Y21_N23
\oHEX2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux9~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[4]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N0
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\uut|oDataY\(5) & ((\uut|oDataY\(7)) # ((\uut|oDataY\(6) & !\uut|oDataY\(4))))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(6) $ (\uut|oDataY\(7))) # (!\uut|oDataY\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux8~0_combout\);

-- Location: LCFF_X3_Y21_N1
\oHEX2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux8~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[5]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N2
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\uut|oDataY\(4) & (!\uut|oDataY\(7) & (\uut|oDataY\(5) $ (!\uut|oDataY\(6))))) # (!\uut|oDataY\(4) & (!\uut|oDataY\(5) & (\uut|oDataY\(6) $ (!\uut|oDataY\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(5),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(4),
	combout => \Mux7~0_combout\);

-- Location: LCFF_X3_Y21_N3
\oHEX2[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux7~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[6]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N2
\uut|Selector120~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector120~0_combout\ = (\uut|oDataX\(0) & \uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(0),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector120~0_combout\);

-- Location: LCCOMB_X6_Y21_N14
\uut|BurstRegData[40]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|BurstRegData[40]~4_combout\ = (\uut|Decoder0~5_combout\ & ((\uut|Decoder0~0_combout\ & ((\iMISO~combout\))) # (!\uut|Decoder0~0_combout\ & (\uut|BurstRegData\(40))))) # (!\uut|Decoder0~5_combout\ & (((\uut|BurstRegData\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Decoder0~5_combout\,
	datab => \uut|Decoder0~0_combout\,
	datac => \uut|BurstRegData\(40),
	datad => \iMISO~combout\,
	combout => \uut|BurstRegData[40]~4_combout\);

-- Location: LCFF_X6_Y21_N15
\uut|BurstRegData[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|BurstRegData[40]~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|BurstRegData\(40));

-- Location: LCFF_X1_Y21_N3
\uut|oDataX[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector120~0_combout\,
	sdata => \uut|BurstRegData\(40),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(0));

-- Location: LCCOMB_X1_Y21_N8
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\uut|oDataX\(2) & ((\uut|oDataX\(1)) # (\uut|oDataX\(3) $ (\uut|oDataX\(0))))) # (!\uut|oDataX\(2) & ((\uut|oDataX\(1) $ (\uut|oDataX\(3))) # (!\uut|oDataX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux20~0_combout\);

-- Location: LCFF_X1_Y21_N9
\oHEX3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux20~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N10
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\uut|oDataX\(1) & ((\uut|oDataX\(0) & ((!\uut|oDataX\(3)))) # (!\uut|oDataX\(0) & (!\uut|oDataX\(2))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(3) $ (!\uut|oDataX\(0))) # (!\uut|oDataX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux19~0_combout\);

-- Location: LCFF_X1_Y21_N11
\oHEX3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux19~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N20
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\uut|oDataX\(2) & (((!\uut|oDataX\(1) & \uut|oDataX\(0))) # (!\uut|oDataX\(3)))) # (!\uut|oDataX\(2) & (((\uut|oDataX\(3)) # (\uut|oDataX\(0))) # (!\uut|oDataX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux18~0_combout\);

-- Location: LCFF_X1_Y21_N21
\oHEX3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux18~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N22
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\uut|oDataX\(1) & ((\uut|oDataX\(2) & ((!\uut|oDataX\(0)))) # (!\uut|oDataX\(2) & ((\uut|oDataX\(0)) # (!\uut|oDataX\(3)))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(3)) # (\uut|oDataX\(2) $ (!\uut|oDataX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux17~0_combout\);

-- Location: LCFF_X1_Y21_N23
\oHEX3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux17~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N0
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\uut|oDataX\(1) & (((\uut|oDataX\(3)) # (!\uut|oDataX\(0))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(2) & (\uut|oDataX\(3))) # (!\uut|oDataX\(2) & ((!\uut|oDataX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux16~0_combout\);

-- Location: LCFF_X1_Y21_N1
\oHEX3[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux16~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N26
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\uut|oDataX\(2) & ((\uut|oDataX\(1) $ (!\uut|oDataX\(3))) # (!\uut|oDataX\(0)))) # (!\uut|oDataX\(2) & ((\uut|oDataX\(3)) # ((!\uut|oDataX\(1) & !\uut|oDataX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux15~0_combout\);

-- Location: LCFF_X1_Y21_N27
\oHEX3[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux15~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y21_N4
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\uut|oDataX\(0) & (!\uut|oDataX\(3) & (\uut|oDataX\(2) $ (!\uut|oDataX\(1))))) # (!\uut|oDataX\(0) & (!\uut|oDataX\(1) & (\uut|oDataX\(2) $ (!\uut|oDataX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(2),
	datab => \uut|oDataX\(1),
	datac => \uut|oDataX\(3),
	datad => \uut|oDataX\(0),
	combout => \Mux14~0_combout\);

-- Location: LCFF_X1_Y21_N5
\oHEX3[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux14~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[6]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N24
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\uut|oDataX\(6) & ((\uut|oDataX\(5)) # (\uut|oDataX\(7) $ (\uut|oDataX\(4))))) # (!\uut|oDataX\(6) & ((\uut|oDataX\(5) $ (\uut|oDataX\(7))) # (!\uut|oDataX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux27~0_combout\);

-- Location: LCFF_X2_Y21_N25
\oHEX4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux27~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[0]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N18
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\uut|oDataX\(5) & ((\uut|oDataX\(4) & ((!\uut|oDataX\(7)))) # (!\uut|oDataX\(4) & (!\uut|oDataX\(6))))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(7) $ (!\uut|oDataX\(4))) # (!\uut|oDataX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux26~0_combout\);

-- Location: LCFF_X2_Y21_N19
\oHEX4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux26~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[1]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N12
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\uut|oDataX\(6) & (((!\uut|oDataX\(5) & \uut|oDataX\(4))) # (!\uut|oDataX\(7)))) # (!\uut|oDataX\(6) & (((\uut|oDataX\(7)) # (\uut|oDataX\(4))) # (!\uut|oDataX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux25~0_combout\);

-- Location: LCFF_X2_Y21_N13
\oHEX4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux25~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[2]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N22
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\uut|oDataX\(5) & ((\uut|oDataX\(6) & ((!\uut|oDataX\(4)))) # (!\uut|oDataX\(6) & ((\uut|oDataX\(4)) # (!\uut|oDataX\(7)))))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(7)) # (\uut|oDataX\(6) $ (!\uut|oDataX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux24~0_combout\);

-- Location: LCFF_X2_Y21_N23
\oHEX4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux24~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[3]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N8
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\uut|oDataX\(5) & (((\uut|oDataX\(7)) # (!\uut|oDataX\(4))))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(6) & (\uut|oDataX\(7))) # (!\uut|oDataX\(6) & ((!\uut|oDataX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux23~0_combout\);

-- Location: LCFF_X2_Y21_N9
\oHEX4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux23~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[4]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N10
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\uut|oDataX\(5) & ((\uut|oDataX\(7)) # ((\uut|oDataX\(6) & !\uut|oDataX\(4))))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(6) $ (\uut|oDataX\(7))) # (!\uut|oDataX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux22~0_combout\);

-- Location: LCFF_X2_Y21_N11
\oHEX4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux22~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[5]~reg0_regout\);

-- Location: LCCOMB_X2_Y21_N20
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\uut|oDataX\(4) & (!\uut|oDataX\(7) & (\uut|oDataX\(5) $ (!\uut|oDataX\(6))))) # (!\uut|oDataX\(4) & (!\uut|oDataX\(5) & (\uut|oDataX\(6) $ (!\uut|oDataX\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(5),
	datab => \uut|oDataX\(6),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(4),
	combout => \Mux21~0_combout\);

-- Location: LCFF_X2_Y21_N21
\oHEX4[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux21~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[6]~reg0_regout\);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oDataValid~I\ : cycloneii_io
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
	datain => \oDataValid~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oDataValid);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSelect~I\ : cycloneii_io
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
	datain => \uut|ALT_INV_Sel~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSelect);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSysClk~I\ : cycloneii_io
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
	datain => \uut|ALT_INV_SysClk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSysClk);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oMOSI~I\ : cycloneii_io
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
	datain => \uut|MasterOutput~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oMOSI);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX1[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX1[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX1[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX1[6]~I\ : cycloneii_io
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
	datain => \oHEX1[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX1(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX2[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX2[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX2[6]~I\ : cycloneii_io
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
	datain => \oHEX2[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX2(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX3[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX3[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX3[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX3[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX3[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX3[6]~I\ : cycloneii_io
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
	datain => \oHEX3[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX3(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX4[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[1]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX4[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[2]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX4[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[3]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX4[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[4]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX4[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[5]~I\ : cycloneii_io
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
	datain => \ALT_INV_oHEX4[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX4[6]~I\ : cycloneii_io
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
	datain => \oHEX4[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX4(6));
END structure;


