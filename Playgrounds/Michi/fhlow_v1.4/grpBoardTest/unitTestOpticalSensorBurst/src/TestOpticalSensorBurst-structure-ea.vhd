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

-- DATE "03/22/2017 10:29:13"

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

ENTITY 	TestOpticalSensorBurst IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	oDataValid : OUT std_logic;
	iMISO : IN std_logic;
	oSelect : OUT std_logic;
	oSysClk : OUT std_logic;
	oMOSI : OUT std_logic;
	oResetSensor : OUT std_logic;
	oHEX1 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	oHEX2 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	oHEX3 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0);
	oHEX4 : OUT IEEE.STD_LOGIC_1164.std_ulogic_vector(6 DOWNTO 0)
	);
END TestOpticalSensorBurst;

-- Design Ports Information
-- oDataValid	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSelect	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSysClk	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oMOSI	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oResetSensor	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[5]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX1[6]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[2]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX2[6]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[3]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[4]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[5]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX3[6]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[4]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX4[6]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iClk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iMISO	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TestOpticalSensorBurst IS
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
SIGNAL ww_oResetSensor : std_logic;
SIGNAL ww_oHEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oHEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \iClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inResetAsync~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uut|Add0~2_combout\ : std_logic;
SIGNAL \uut|Add0~8_combout\ : std_logic;
SIGNAL \uut|Add0~10_combout\ : std_logic;
SIGNAL \uut|Add0~48_combout\ : std_logic;
SIGNAL \uut|Add0~50_combout\ : std_logic;
SIGNAL \uut|Add0~52_combout\ : std_logic;
SIGNAL \uut|Add2~8_combout\ : std_logic;
SIGNAL \uut|Add2~10_combout\ : std_logic;
SIGNAL \uut|Add2~12_combout\ : std_logic;
SIGNAL \uut|Add2~14_combout\ : std_logic;
SIGNAL \uut|Add2~18_combout\ : std_logic;
SIGNAL \uut|Add2~22_combout\ : std_logic;
SIGNAL \uut|Add2~28_combout\ : std_logic;
SIGNAL \uut|Add2~40_combout\ : std_logic;
SIGNAL \uut|Add2~42_combout\ : std_logic;
SIGNAL \uut|Add2~44_combout\ : std_logic;
SIGNAL \uut|Add2~46_combout\ : std_logic;
SIGNAL \uut|Add2~52_combout\ : std_logic;
SIGNAL \uut|Add2~61\ : std_logic;
SIGNAL \uut|Add2~62_combout\ : std_logic;
SIGNAL \uut|Add3~0_combout\ : std_logic;
SIGNAL \uut|Add3~2_combout\ : std_logic;
SIGNAL \uut|Add3~4_combout\ : std_logic;
SIGNAL \uut|Add3~6_combout\ : std_logic;
SIGNAL \uut|Add3~8_combout\ : std_logic;
SIGNAL \uut|Add3~10_combout\ : std_logic;
SIGNAL \uut|Add3~12_combout\ : std_logic;
SIGNAL \uut|Add3~22_combout\ : std_logic;
SIGNAL \uut|Add3~26_combout\ : std_logic;
SIGNAL \uut|Add3~28_combout\ : std_logic;
SIGNAL \uut|Add3~30_combout\ : std_logic;
SIGNAL \uut|Add3~32_combout\ : std_logic;
SIGNAL \uut|Add3~34_combout\ : std_logic;
SIGNAL \uut|Add3~36_combout\ : std_logic;
SIGNAL \uut|Add3~38_combout\ : std_logic;
SIGNAL \uut|Add3~40_combout\ : std_logic;
SIGNAL \uut|Add3~42_combout\ : std_logic;
SIGNAL \uut|Add3~44_combout\ : std_logic;
SIGNAL \uut|Add3~46_combout\ : std_logic;
SIGNAL \uut|Add3~55\ : std_logic;
SIGNAL \uut|Add3~56_combout\ : std_logic;
SIGNAL \uut|Add3~57\ : std_logic;
SIGNAL \uut|Add3~58_combout\ : std_logic;
SIGNAL \uut|Add3~59\ : std_logic;
SIGNAL \uut|Add3~60_combout\ : std_logic;
SIGNAL \uut|Add3~61\ : std_logic;
SIGNAL \uut|Add3~62_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \uut|ResetCnt[3]~40_combout\ : std_logic;
SIGNAL \uut|ResetCnt[5]~44_combout\ : std_logic;
SIGNAL \uut|ResetCnt[8]~50_combout\ : std_logic;
SIGNAL \uut|ResetCnt[12]~58_combout\ : std_logic;
SIGNAL \uut|ResetCnt[19]~72_combout\ : std_logic;
SIGNAL \uut|ResetCnt[21]~76_combout\ : std_logic;
SIGNAL \uut|ResetCnt[22]~78_combout\ : std_logic;
SIGNAL \uut|ResetCnt[28]~90_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~6_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~1_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~6_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~7_combout\ : std_logic;
SIGNAL \uut|LessThan0~1_combout\ : std_logic;
SIGNAL \uut|LessThan0~6_combout\ : std_logic;
SIGNAL \uut|Equal4~0_combout\ : std_logic;
SIGNAL \uut|Equal4~5_combout\ : std_logic;
SIGNAL \uut|Equal4~9_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[4]~0_combout\ : std_logic;
SIGNAL \uut|Selector47~0_combout\ : std_logic;
SIGNAL \uut|Selector47~1_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \uut|Selector112~1_combout\ : std_logic;
SIGNAL \uut|Equal1~0_combout\ : std_logic;
SIGNAL \uut|Equal1~1_combout\ : std_logic;
SIGNAL \uut|Equal1~2_combout\ : std_logic;
SIGNAL \uut|Equal1~3_combout\ : std_logic;
SIGNAL \uut|Equal1~4_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~13_combout\ : std_logic;
SIGNAL \uut|Selector126~0_combout\ : std_logic;
SIGNAL \uut|Selector85~0_combout\ : std_logic;
SIGNAL \uut|Selector86~0_combout\ : std_logic;
SIGNAL \uut|Selector87~0_combout\ : std_logic;
SIGNAL \uut|Selector106~0_combout\ : std_logic;
SIGNAL \uut|Selector107~0_combout\ : std_logic;
SIGNAL \uut|Selector111~2_combout\ : std_logic;
SIGNAL \uut|Selector111~3_combout\ : std_logic;
SIGNAL \uut|Selector110~0_combout\ : std_logic;
SIGNAL \uut|Selector113~1_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[15]~2_combout\ : std_logic;
SIGNAL \uut|Selector1~0_combout\ : std_logic;
SIGNAL \uut|Selector20~0_combout\ : std_logic;
SIGNAL \uut|Selector23~0_combout\ : std_logic;
SIGNAL \uut|Selector37~0_combout\ : std_logic;
SIGNAL \uut|Selector50~0_combout\ : std_logic;
SIGNAL \uut|Selector51~0_combout\ : std_logic;
SIGNAL \uut|Selector60~0_combout\ : std_logic;
SIGNAL \uut|Selector64~0_combout\ : std_logic;
SIGNAL \uut|Selector65~0_combout\ : std_logic;
SIGNAL \uut|Selector66~0_combout\ : std_logic;
SIGNAL \uut|Selector68~0_combout\ : std_logic;
SIGNAL \uut|Selector75~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[6]~6_combout\ : std_logic;
SIGNAL \uut|MotionReg[0]~17_combout\ : std_logic;
SIGNAL \uut|DataXReg[4]~5_combout\ : std_logic;
SIGNAL \uut|MotionReg[5]~18_combout\ : std_logic;
SIGNAL \GenerateStrobe|ClkCounter~1_combout\ : std_logic;
SIGNAL \uut|DataYReg[7]~15_combout\ : std_logic;
SIGNAL \uut|Selector48~2_combout\ : std_logic;
SIGNAL \uut|Selector49~2_combout\ : std_logic;
SIGNAL \iClk~combout\ : std_logic;
SIGNAL \iClk~clkctrl_outclk\ : std_logic;
SIGNAL \uut|ResetCnt[0]~34_combout\ : std_logic;
SIGNAL \inResetAsync~combout\ : std_logic;
SIGNAL \inResetAsync~clkctrl_outclk\ : std_logic;
SIGNAL \uut|ResetCnt[10]~54_combout\ : std_logic;
SIGNAL \uut|Selector73~0_combout\ : std_logic;
SIGNAL \uut|Selector46~0_combout\ : std_logic;
SIGNAL \uut|WideOr1~0_combout\ : std_logic;
SIGNAL \uut|Sel~3_combout\ : std_logic;
SIGNAL \uut|Selector8~0_combout\ : std_logic;
SIGNAL \uut|State.SetXReg~regout\ : std_logic;
SIGNAL \uut|Selector10~0_combout\ : std_logic;
SIGNAL \uut|State.ReadXReg~regout\ : std_logic;
SIGNAL \uut|Selector11~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForWriteDataY~regout\ : std_logic;
SIGNAL \uut|Selector12~0_combout\ : std_logic;
SIGNAL \uut|State.SetYReg~regout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[4]~1_combout\ : std_logic;
SIGNAL \uut|Selector13~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadDataY~regout\ : std_logic;
SIGNAL \uut|Selector14~0_combout\ : std_logic;
SIGNAL \uut|State.ReadYReg~regout\ : std_logic;
SIGNAL \uut|Selector4~0_combout\ : std_logic;
SIGNAL \uut|State.ReadMotionReg~regout\ : std_logic;
SIGNAL \uut|Selector113~0_combout\ : std_logic;
SIGNAL \uut|Selector47~2_combout\ : std_logic;
SIGNAL \uut|Sel~regout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[4]~3_combout\ : std_logic;
SIGNAL \uut|WideOr1~combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[4]~4_combout\ : std_logic;
SIGNAL \uut|Selector111~1_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~9_combout\ : std_logic;
SIGNAL \uut|Add0~24_combout\ : std_logic;
SIGNAL \uut|Selector99~0_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[4]~5_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~5_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~10_combout\ : std_logic;
SIGNAL \uut|Add0~0_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter~6_combout\ : std_logic;
SIGNAL \uut|Selector111~4_combout\ : std_logic;
SIGNAL \uut|Selector111~5_combout\ : std_logic;
SIGNAL \uut|Sel~0_combout\ : std_logic;
SIGNAL \uut|Selector6~0_combout\ : std_logic;
SIGNAL \uut|Selector6~1_combout\ : std_logic;
SIGNAL \uut|State.OutputAndWaitForWrite~regout\ : std_logic;
SIGNAL \uut|Selector111~0_combout\ : std_logic;
SIGNAL \uut|Selector111~6_combout\ : std_logic;
SIGNAL \uut|Add0~1\ : std_logic;
SIGNAL \uut|Add0~3\ : std_logic;
SIGNAL \uut|Add0~4_combout\ : std_logic;
SIGNAL \uut|Selector109~0_combout\ : std_logic;
SIGNAL \uut|Add0~5\ : std_logic;
SIGNAL \uut|Add0~6_combout\ : std_logic;
SIGNAL \uut|Selector108~0_combout\ : std_logic;
SIGNAL \uut|Add0~7\ : std_logic;
SIGNAL \uut|Add0~9\ : std_logic;
SIGNAL \uut|Add0~11\ : std_logic;
SIGNAL \uut|Add0~12_combout\ : std_logic;
SIGNAL \uut|Selector105~0_combout\ : std_logic;
SIGNAL \uut|Add0~13\ : std_logic;
SIGNAL \uut|Add0~14_combout\ : std_logic;
SIGNAL \uut|Selector104~0_combout\ : std_logic;
SIGNAL \uut|Add0~15\ : std_logic;
SIGNAL \uut|Add0~16_combout\ : std_logic;
SIGNAL \uut|Selector103~0_combout\ : std_logic;
SIGNAL \uut|Add0~17\ : std_logic;
SIGNAL \uut|Add0~18_combout\ : std_logic;
SIGNAL \uut|Selector102~0_combout\ : std_logic;
SIGNAL \uut|Add0~19\ : std_logic;
SIGNAL \uut|Add0~20_combout\ : std_logic;
SIGNAL \uut|Selector101~0_combout\ : std_logic;
SIGNAL \uut|Add0~21\ : std_logic;
SIGNAL \uut|Add0~22_combout\ : std_logic;
SIGNAL \uut|Selector100~0_combout\ : std_logic;
SIGNAL \uut|Add0~23\ : std_logic;
SIGNAL \uut|Add0~25\ : std_logic;
SIGNAL \uut|Add0~26_combout\ : std_logic;
SIGNAL \uut|Selector98~0_combout\ : std_logic;
SIGNAL \uut|Add0~27\ : std_logic;
SIGNAL \uut|Add0~28_combout\ : std_logic;
SIGNAL \uut|Selector97~0_combout\ : std_logic;
SIGNAL \uut|Add0~29\ : std_logic;
SIGNAL \uut|Add0~30_combout\ : std_logic;
SIGNAL \uut|Selector96~0_combout\ : std_logic;
SIGNAL \uut|Add0~31\ : std_logic;
SIGNAL \uut|Add0~33\ : std_logic;
SIGNAL \uut|Add0~34_combout\ : std_logic;
SIGNAL \uut|Selector94~0_combout\ : std_logic;
SIGNAL \uut|Add0~35\ : std_logic;
SIGNAL \uut|Add0~36_combout\ : std_logic;
SIGNAL \uut|Selector93~0_combout\ : std_logic;
SIGNAL \uut|Add0~37\ : std_logic;
SIGNAL \uut|Add0~39\ : std_logic;
SIGNAL \uut|Add0~40_combout\ : std_logic;
SIGNAL \uut|Selector91~0_combout\ : std_logic;
SIGNAL \uut|Add0~41\ : std_logic;
SIGNAL \uut|Add0~42_combout\ : std_logic;
SIGNAL \uut|Selector90~0_combout\ : std_logic;
SIGNAL \uut|Add0~43\ : std_logic;
SIGNAL \uut|Add0~44_combout\ : std_logic;
SIGNAL \uut|Selector89~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~2_combout\ : std_logic;
SIGNAL \uut|Add0~38_combout\ : std_logic;
SIGNAL \uut|Selector92~0_combout\ : std_logic;
SIGNAL \uut|Add0~32_combout\ : std_logic;
SIGNAL \uut|Selector95~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~3_combout\ : std_logic;
SIGNAL \uut|Add0~45\ : std_logic;
SIGNAL \uut|Add0~46_combout\ : std_logic;
SIGNAL \uut|Selector88~0_combout\ : std_logic;
SIGNAL \uut|Add0~47\ : std_logic;
SIGNAL \uut|Add0~49\ : std_logic;
SIGNAL \uut|Add0~51\ : std_logic;
SIGNAL \uut|Add0~53\ : std_logic;
SIGNAL \uut|Add0~54_combout\ : std_logic;
SIGNAL \uut|Selector84~0_combout\ : std_logic;
SIGNAL \uut|Add0~55\ : std_logic;
SIGNAL \uut|Add0~56_combout\ : std_logic;
SIGNAL \uut|Selector83~0_combout\ : std_logic;
SIGNAL \uut|Add0~57\ : std_logic;
SIGNAL \uut|Add0~58_combout\ : std_logic;
SIGNAL \uut|Selector82~0_combout\ : std_logic;
SIGNAL \uut|Add0~59\ : std_logic;
SIGNAL \uut|Add0~60_combout\ : std_logic;
SIGNAL \uut|Selector81~0_combout\ : std_logic;
SIGNAL \uut|Add0~61\ : std_logic;
SIGNAL \uut|Add0~62_combout\ : std_logic;
SIGNAL \uut|Selector80~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~0_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~4_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~8_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~16_combout\ : std_logic;
SIGNAL \uut|Equal6~0_combout\ : std_logic;
SIGNAL \uut|Selector113~2_combout\ : std_logic;
SIGNAL \uut|SysClk~regout\ : std_logic;
SIGNAL \uut|RegAndClockGen~11_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~12_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[4]~2_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[15]~1_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[15]~3_combout\ : std_logic;
SIGNAL \uut|Selector45~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[0]~2_combout\ : std_logic;
SIGNAL \uut|Selector24~0_combout\ : std_logic;
SIGNAL \uut|Selector26~0_combout\ : std_logic;
SIGNAL \uut|Selector35~0_combout\ : std_logic;
SIGNAL \uut|Selector39~0_combout\ : std_logic;
SIGNAL \uut|Selector40~0_combout\ : std_logic;
SIGNAL \uut|Selector41~0_combout\ : std_logic;
SIGNAL \uut|Selector42~0_combout\ : std_logic;
SIGNAL \uut|Add2~1\ : std_logic;
SIGNAL \uut|Add2~3\ : std_logic;
SIGNAL \uut|Add2~5\ : std_logic;
SIGNAL \uut|Add2~6_combout\ : std_logic;
SIGNAL \uut|Selector43~0_combout\ : std_logic;
SIGNAL \uut|Add2~7\ : std_logic;
SIGNAL \uut|Add2~9\ : std_logic;
SIGNAL \uut|Add2~11\ : std_logic;
SIGNAL \uut|Add2~13\ : std_logic;
SIGNAL \uut|Add2~15\ : std_logic;
SIGNAL \uut|Add2~16_combout\ : std_logic;
SIGNAL \uut|Selector38~0_combout\ : std_logic;
SIGNAL \uut|Add2~17\ : std_logic;
SIGNAL \uut|Add2~19\ : std_logic;
SIGNAL \uut|Add2~20_combout\ : std_logic;
SIGNAL \uut|Selector36~0_combout\ : std_logic;
SIGNAL \uut|Add2~21\ : std_logic;
SIGNAL \uut|Add2~23\ : std_logic;
SIGNAL \uut|Add2~24_combout\ : std_logic;
SIGNAL \uut|Selector34~0_combout\ : std_logic;
SIGNAL \uut|Add2~25\ : std_logic;
SIGNAL \uut|Add2~26_combout\ : std_logic;
SIGNAL \uut|Selector33~0_combout\ : std_logic;
SIGNAL \uut|Add2~27\ : std_logic;
SIGNAL \uut|Add2~29\ : std_logic;
SIGNAL \uut|Add2~30_combout\ : std_logic;
SIGNAL \uut|Selector31~0_combout\ : std_logic;
SIGNAL \uut|Add2~31\ : std_logic;
SIGNAL \uut|Add2~32_combout\ : std_logic;
SIGNAL \uut|Selector30~0_combout\ : std_logic;
SIGNAL \uut|Add2~33\ : std_logic;
SIGNAL \uut|Add2~34_combout\ : std_logic;
SIGNAL \uut|Selector29~0_combout\ : std_logic;
SIGNAL \uut|Add2~35\ : std_logic;
SIGNAL \uut|Add2~36_combout\ : std_logic;
SIGNAL \uut|Selector28~0_combout\ : std_logic;
SIGNAL \uut|Add2~37\ : std_logic;
SIGNAL \uut|Add2~38_combout\ : std_logic;
SIGNAL \uut|Selector27~0_combout\ : std_logic;
SIGNAL \uut|LessThan0~2_combout\ : std_logic;
SIGNAL \uut|LessThan0~3_combout\ : std_logic;
SIGNAL \uut|Selector25~0_combout\ : std_logic;
SIGNAL \uut|Add2~39\ : std_logic;
SIGNAL \uut|Add2~41\ : std_logic;
SIGNAL \uut|Add2~43\ : std_logic;
SIGNAL \uut|Add2~45\ : std_logic;
SIGNAL \uut|Add2~47\ : std_logic;
SIGNAL \uut|Add2~48_combout\ : std_logic;
SIGNAL \uut|Selector22~0_combout\ : std_logic;
SIGNAL \uut|Add2~49\ : std_logic;
SIGNAL \uut|Add2~50_combout\ : std_logic;
SIGNAL \uut|Selector21~0_combout\ : std_logic;
SIGNAL \uut|Add2~51\ : std_logic;
SIGNAL \uut|Add2~53\ : std_logic;
SIGNAL \uut|Add2~55\ : std_logic;
SIGNAL \uut|Add2~56_combout\ : std_logic;
SIGNAL \uut|Selector18~0_combout\ : std_logic;
SIGNAL \uut|Add2~57\ : std_logic;
SIGNAL \uut|Add2~58_combout\ : std_logic;
SIGNAL \uut|Selector17~0_combout\ : std_logic;
SIGNAL \uut|Add2~59\ : std_logic;
SIGNAL \uut|Add2~60_combout\ : std_logic;
SIGNAL \uut|Selector16~0_combout\ : std_logic;
SIGNAL \uut|Add2~54_combout\ : std_logic;
SIGNAL \uut|Selector19~0_combout\ : std_logic;
SIGNAL \uut|LessThan0~0_combout\ : std_logic;
SIGNAL \uut|LessThan0~4_combout\ : std_logic;
SIGNAL \uut|LessThan0~7_combout\ : std_logic;
SIGNAL \uut|Selector15~0_combout\ : std_logic;
SIGNAL \uut|Equal3~0_combout\ : std_logic;
SIGNAL \uut|Equal3~1_combout\ : std_logic;
SIGNAL \uut|Selector5~0_combout\ : std_logic;
SIGNAL \uut|State.CheckMotionReg~regout\ : std_logic;
SIGNAL \uut|Selector7~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForWriteDataX~regout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[15]~0_combout\ : std_logic;
SIGNAL \uut|CntWaitCycles[8]~1_combout\ : std_logic;
SIGNAL \uut|Selector74~0_combout\ : std_logic;
SIGNAL \uut|Selector76~0_combout\ : std_logic;
SIGNAL \uut|Selector77~0_combout\ : std_logic;
SIGNAL \uut|Selector78~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~1\ : std_logic;
SIGNAL \GenerateStrobe|Add0~2_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~3\ : std_logic;
SIGNAL \GenerateStrobe|Add0~4_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~5\ : std_logic;
SIGNAL \GenerateStrobe|Add0~7\ : std_logic;
SIGNAL \GenerateStrobe|Add0~8_combout\ : std_logic;
SIGNAL \GenerateStrobe|ClkCounter~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Add0~9\ : std_logic;
SIGNAL \GenerateStrobe|Add0~10_combout\ : std_logic;
SIGNAL \GenerateStrobe|Equal0~0_combout\ : std_logic;
SIGNAL \GenerateStrobe|Equal0~1_combout\ : std_logic;
SIGNAL \GenerateStrobe|oStrobe~regout\ : std_logic;
SIGNAL \uut|Selector79~2_combout\ : std_logic;
SIGNAL \uut|Selector79~0_combout\ : std_logic;
SIGNAL \uut|Selector79~3_combout\ : std_logic;
SIGNAL \uut|Selector79~1_combout\ : std_logic;
SIGNAL \uut|Add3~1\ : std_logic;
SIGNAL \uut|Add3~3\ : std_logic;
SIGNAL \uut|Add3~5\ : std_logic;
SIGNAL \uut|Add3~7\ : std_logic;
SIGNAL \uut|Add3~9\ : std_logic;
SIGNAL \uut|Add3~11\ : std_logic;
SIGNAL \uut|Add3~13\ : std_logic;
SIGNAL \uut|Add3~15\ : std_logic;
SIGNAL \uut|Add3~17\ : std_logic;
SIGNAL \uut|Add3~18_combout\ : std_logic;
SIGNAL \uut|Selector70~0_combout\ : std_logic;
SIGNAL \uut|Add3~19\ : std_logic;
SIGNAL \uut|Add3~20_combout\ : std_logic;
SIGNAL \uut|Selector69~0_combout\ : std_logic;
SIGNAL \uut|Add3~16_combout\ : std_logic;
SIGNAL \uut|Selector71~0_combout\ : std_logic;
SIGNAL \uut|Equal4~6_combout\ : std_logic;
SIGNAL \uut|Add3~14_combout\ : std_logic;
SIGNAL \uut|Selector72~0_combout\ : std_logic;
SIGNAL \uut|Equal4~7_combout\ : std_logic;
SIGNAL \uut|Equal4~8_combout\ : std_logic;
SIGNAL \uut|Equal5~0_combout\ : std_logic;
SIGNAL \uut|Sel~2_combout\ : std_logic;
SIGNAL \uut|Selector2~0_combout\ : std_logic;
SIGNAL \uut|Selector2~1_combout\ : std_logic;
SIGNAL \uut|State.SetMotionReg~regout\ : std_logic;
SIGNAL \uut|Selector3~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadMotion~regout\ : std_logic;
SIGNAL \uut|WideOr1~1_combout\ : std_logic;
SIGNAL \uut|CntWaitCycles[8]~0_combout\ : std_logic;
SIGNAL \uut|Selector59~0_combout\ : std_logic;
SIGNAL \uut|Selector56~0_combout\ : std_logic;
SIGNAL \uut|Selector57~0_combout\ : std_logic;
SIGNAL \uut|Equal4~2_combout\ : std_logic;
SIGNAL \uut|Selector62~0_combout\ : std_logic;
SIGNAL \uut|Selector63~0_combout\ : std_logic;
SIGNAL \uut|Selector61~0_combout\ : std_logic;
SIGNAL \uut|Equal4~3_combout\ : std_logic;
SIGNAL \uut|Selector58~0_combout\ : std_logic;
SIGNAL \uut|Add3~21\ : std_logic;
SIGNAL \uut|Add3~23\ : std_logic;
SIGNAL \uut|Add3~24_combout\ : std_logic;
SIGNAL \uut|Selector67~0_combout\ : std_logic;
SIGNAL \uut|Add3~25\ : std_logic;
SIGNAL \uut|Add3~27\ : std_logic;
SIGNAL \uut|Add3~29\ : std_logic;
SIGNAL \uut|Add3~31\ : std_logic;
SIGNAL \uut|Add3~33\ : std_logic;
SIGNAL \uut|Add3~35\ : std_logic;
SIGNAL \uut|Add3~37\ : std_logic;
SIGNAL \uut|Add3~39\ : std_logic;
SIGNAL \uut|Add3~41\ : std_logic;
SIGNAL \uut|Add3~43\ : std_logic;
SIGNAL \uut|Add3~45\ : std_logic;
SIGNAL \uut|Add3~47\ : std_logic;
SIGNAL \uut|Add3~48_combout\ : std_logic;
SIGNAL \uut|Selector55~0_combout\ : std_logic;
SIGNAL \uut|Add3~49\ : std_logic;
SIGNAL \uut|Add3~51\ : std_logic;
SIGNAL \uut|Add3~52_combout\ : std_logic;
SIGNAL \uut|Selector53~0_combout\ : std_logic;
SIGNAL \uut|Add3~53\ : std_logic;
SIGNAL \uut|Add3~54_combout\ : std_logic;
SIGNAL \uut|Selector52~0_combout\ : std_logic;
SIGNAL \uut|Add3~50_combout\ : std_logic;
SIGNAL \uut|Selector54~0_combout\ : std_logic;
SIGNAL \uut|Equal4~1_combout\ : std_logic;
SIGNAL \uut|Equal4~4_combout\ : std_logic;
SIGNAL \uut|Sel~1_combout\ : std_logic;
SIGNAL \uut|Selector9~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadDataX~regout\ : std_logic;
SIGNAL \uut|WideOr0~4_combout\ : std_logic;
SIGNAL \uut|Selector1~1_combout\ : std_logic;
SIGNAL \uut|ResetCnt[6]~46_combout\ : std_logic;
SIGNAL \uut|Equal1~8_combout\ : std_logic;
SIGNAL \uut|Equal1~10_combout\ : std_logic;
SIGNAL \uut|State.Reset~0_combout\ : std_logic;
SIGNAL \uut|State.Reset~regout\ : std_logic;
SIGNAL \uut|Equal1~9_combout\ : std_logic;
SIGNAL \uut|ResetCnt[24]~98_combout\ : std_logic;
SIGNAL \uut|ResetCnt[0]~35\ : std_logic;
SIGNAL \uut|ResetCnt[1]~36_combout\ : std_logic;
SIGNAL \uut|ResetCnt[1]~37\ : std_logic;
SIGNAL \uut|ResetCnt[2]~38_combout\ : std_logic;
SIGNAL \uut|ResetCnt[2]~39\ : std_logic;
SIGNAL \uut|ResetCnt[3]~41\ : std_logic;
SIGNAL \uut|ResetCnt[4]~42_combout\ : std_logic;
SIGNAL \uut|ResetCnt[4]~43\ : std_logic;
SIGNAL \uut|ResetCnt[5]~45\ : std_logic;
SIGNAL \uut|ResetCnt[6]~47\ : std_logic;
SIGNAL \uut|ResetCnt[7]~48_combout\ : std_logic;
SIGNAL \uut|ResetCnt[7]~49\ : std_logic;
SIGNAL \uut|ResetCnt[8]~51\ : std_logic;
SIGNAL \uut|ResetCnt[9]~52_combout\ : std_logic;
SIGNAL \uut|ResetCnt[9]~53\ : std_logic;
SIGNAL \uut|ResetCnt[10]~55\ : std_logic;
SIGNAL \uut|ResetCnt[11]~56_combout\ : std_logic;
SIGNAL \uut|ResetCnt[11]~57\ : std_logic;
SIGNAL \uut|ResetCnt[12]~59\ : std_logic;
SIGNAL \uut|ResetCnt[13]~60_combout\ : std_logic;
SIGNAL \uut|ResetCnt[13]~61\ : std_logic;
SIGNAL \uut|ResetCnt[14]~62_combout\ : std_logic;
SIGNAL \uut|ResetCnt[14]~63\ : std_logic;
SIGNAL \uut|ResetCnt[15]~64_combout\ : std_logic;
SIGNAL \uut|ResetCnt[15]~65\ : std_logic;
SIGNAL \uut|ResetCnt[16]~66_combout\ : std_logic;
SIGNAL \uut|ResetCnt[16]~67\ : std_logic;
SIGNAL \uut|ResetCnt[17]~68_combout\ : std_logic;
SIGNAL \uut|ResetCnt[17]~69\ : std_logic;
SIGNAL \uut|ResetCnt[18]~70_combout\ : std_logic;
SIGNAL \uut|ResetCnt[18]~71\ : std_logic;
SIGNAL \uut|ResetCnt[19]~73\ : std_logic;
SIGNAL \uut|ResetCnt[20]~74_combout\ : std_logic;
SIGNAL \uut|ResetCnt[20]~75\ : std_logic;
SIGNAL \uut|ResetCnt[21]~77\ : std_logic;
SIGNAL \uut|ResetCnt[22]~79\ : std_logic;
SIGNAL \uut|ResetCnt[23]~80_combout\ : std_logic;
SIGNAL \uut|ResetCnt[23]~81\ : std_logic;
SIGNAL \uut|ResetCnt[24]~83\ : std_logic;
SIGNAL \uut|ResetCnt[25]~84_combout\ : std_logic;
SIGNAL \uut|ResetCnt[25]~85\ : std_logic;
SIGNAL \uut|ResetCnt[26]~87\ : std_logic;
SIGNAL \uut|ResetCnt[27]~88_combout\ : std_logic;
SIGNAL \uut|ResetCnt[24]~82_combout\ : std_logic;
SIGNAL \uut|ResetCnt[26]~86_combout\ : std_logic;
SIGNAL \uut|Equal1~5_combout\ : std_logic;
SIGNAL \uut|ResetCnt[27]~89\ : std_logic;
SIGNAL \uut|ResetCnt[28]~91\ : std_logic;
SIGNAL \uut|ResetCnt[29]~92_combout\ : std_logic;
SIGNAL \uut|ResetCnt[29]~93\ : std_logic;
SIGNAL \uut|ResetCnt[30]~94_combout\ : std_logic;
SIGNAL \uut|ResetCnt[30]~95\ : std_logic;
SIGNAL \uut|ResetCnt[31]~96_combout\ : std_logic;
SIGNAL \uut|Equal1~6_combout\ : std_logic;
SIGNAL \uut|Equal1~7_combout\ : std_logic;
SIGNAL \uut|Selector1~2_combout\ : std_logic;
SIGNAL \uut|State.Init~regout\ : std_logic;
SIGNAL \uut|Selector138~0_combout\ : std_logic;
SIGNAL \uut|Selector32~0_combout\ : std_logic;
SIGNAL \uut|LessThan0~5_combout\ : std_logic;
SIGNAL \uut|LessThan0~8_combout\ : std_logic;
SIGNAL \uut|LessThan0~9_combout\ : std_logic;
SIGNAL \uut|DataYReg[7]~2_combout\ : std_logic;
SIGNAL \uut|DataYReg[0]~3_combout\ : std_logic;
SIGNAL \uut|Selector136~0_combout\ : std_logic;
SIGNAL \uut|Selector44~0_combout\ : std_logic;
SIGNAL \uut|DataYReg[3]~8_combout\ : std_logic;
SIGNAL \uut|DataYReg[2]~13_combout\ : std_logic;
SIGNAL \uut|DataYReg[2]~14_combout\ : std_logic;
SIGNAL \uut|Selector131~0_combout\ : std_logic;
SIGNAL \iMISO~combout\ : std_logic;
SIGNAL \uut|MotionReg[7]~3_combout\ : std_logic;
SIGNAL \uut|DataYReg[7]~4_combout\ : std_logic;
SIGNAL \uut|Selector132~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[6]~5_combout\ : std_logic;
SIGNAL \uut|DataYReg[6]~10_combout\ : std_logic;
SIGNAL \CheckValidData~4_combout\ : std_logic;
SIGNAL \uut|Selector133~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[5]~7_combout\ : std_logic;
SIGNAL \uut|DataYReg[5]~5_combout\ : std_logic;
SIGNAL \uut|Selector137~0_combout\ : std_logic;
SIGNAL \uut|DataYReg[3]~7_combout\ : std_logic;
SIGNAL \uut|DataYReg[1]~9_combout\ : std_logic;
SIGNAL \uut|Selector134~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[4]~9_combout\ : std_logic;
SIGNAL \uut|DataYReg[4]~6_combout\ : std_logic;
SIGNAL \CheckValidData~3_combout\ : std_logic;
SIGNAL \CheckValidData~5_combout\ : std_logic;
SIGNAL \uut|MotionReg[7]~19_combout\ : std_logic;
SIGNAL \uut|MotionReg[4]~10_combout\ : std_logic;
SIGNAL \uut|MotionReg[5]~8_combout\ : std_logic;
SIGNAL \uut|MotionReg[7]~4_combout\ : std_logic;
SIGNAL \uut|Equal7~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[3]~11_combout\ : std_logic;
SIGNAL \uut|MotionReg[2]~13_combout\ : std_logic;
SIGNAL \uut|MotionReg[1]~14_combout\ : std_logic;
SIGNAL \uut|MotionReg[1]~15_combout\ : std_logic;
SIGNAL \uut|MotionReg[3]~12_combout\ : std_logic;
SIGNAL \uut|Equal7~1_combout\ : std_logic;
SIGNAL \uut|Equal7~2_combout\ : std_logic;
SIGNAL \uut|Selector114~1_combout\ : std_logic;
SIGNAL \uut|DataValid~regout\ : std_logic;
SIGNAL \uut|Selector125~0_combout\ : std_logic;
SIGNAL \uut|DataXReg[7]~13_combout\ : std_logic;
SIGNAL \uut|DataXReg[5]~9_combout\ : std_logic;
SIGNAL \uut|Selector129~0_combout\ : std_logic;
SIGNAL \uut|DataXReg[1]~12_combout\ : std_logic;
SIGNAL \uut|Selector128~0_combout\ : std_logic;
SIGNAL \uut|DataXReg[2]~10_combout\ : std_logic;
SIGNAL \uut|DataXReg[2]~11_combout\ : std_logic;
SIGNAL \CheckValidData~1_combout\ : std_logic;
SIGNAL \uut|Selector127~0_combout\ : std_logic;
SIGNAL \uut|DataXReg[3]~6_combout\ : std_logic;
SIGNAL \uut|DataXReg[3]~7_combout\ : std_logic;
SIGNAL \uut|Selector130~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[0]~16_combout\ : std_logic;
SIGNAL \uut|DataXReg[0]~8_combout\ : std_logic;
SIGNAL \uut|Selector124~0_combout\ : std_logic;
SIGNAL \uut|DataXReg[6]~4_combout\ : std_logic;
SIGNAL \CheckValidData~0_combout\ : std_logic;
SIGNAL \CheckValidData~2_combout\ : std_logic;
SIGNAL \CheckValidData~6_combout\ : std_logic;
SIGNAL \oDataValid~reg0_regout\ : std_logic;
SIGNAL \SysClkCnt~1_combout\ : std_logic;
SIGNAL \SysClkCnt~2_combout\ : std_logic;
SIGNAL \SysClkCnt~3_combout\ : std_logic;
SIGNAL \SysClkCnt[0]~4_combout\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \SysClkCnt~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~10_combout\ : std_logic;
SIGNAL \SysClkGen~0_combout\ : std_logic;
SIGNAL \SysClkGen~regout\ : std_logic;
SIGNAL \uut|Selector112~4_combout\ : std_logic;
SIGNAL \uut|Selector114~0_combout\ : std_logic;
SIGNAL \uut|Selector112~5_combout\ : std_logic;
SIGNAL \uut|Add2~2_combout\ : std_logic;
SIGNAL \uut|Add2~0_combout\ : std_logic;
SIGNAL \uut|Selector112~0_combout\ : std_logic;
SIGNAL \uut|Selector112~2_combout\ : std_logic;
SIGNAL \uut|Add2~4_combout\ : std_logic;
SIGNAL \uut|Selector112~3_combout\ : std_logic;
SIGNAL \uut|Selector112~6_combout\ : std_logic;
SIGNAL \uut|Selector112~7_combout\ : std_logic;
SIGNAL \uut|MasterOutput~regout\ : std_logic;
SIGNAL \uut|RegAndClockGen~14_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~15_combout\ : std_logic;
SIGNAL \uut|ResetSensor~0_combout\ : std_logic;
SIGNAL \uut|ResetSensor~regout\ : std_logic;
SIGNAL \uut|Selector135~0_combout\ : std_logic;
SIGNAL \uut|DataYReg[3]~11_combout\ : std_logic;
SIGNAL \uut|DataYReg[3]~12_combout\ : std_logic;
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
SIGNAL \uut|Selector123~0_combout\ : std_logic;
SIGNAL \uut|DataXReg[7]~2_combout\ : std_logic;
SIGNAL \uut|DataXReg[7]~3_combout\ : std_logic;
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
SIGNAL SysClkCnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|oDataY\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|oDataX\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|SysClkGenCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|SlaveClkCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|ResetCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|MotionReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|DataYReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|DataXReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|CntWaitCycles\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \GenerateStrobe|ClkCounter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_inResetAsync~clkctrl_outclk\ : std_logic;
SIGNAL \uut|ALT_INV_State.Reset~regout\ : std_logic;
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
SIGNAL \uut|ALT_INV_ResetSensor~regout\ : std_logic;
SIGNAL \uut|ALT_INV_Sel~regout\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
oDataValid <= ww_oDataValid;
ww_iMISO <= iMISO;
oSelect <= ww_oSelect;
oSysClk <= ww_oSysClk;
oMOSI <= ww_oMOSI;
oResetSensor <= ww_oResetSensor;
oHEX1 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oHEX1);
oHEX2 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oHEX2);
oHEX3 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oHEX3);
oHEX4 <= IEEE.STD_LOGIC_1164.TO_STDULOGICVECTOR(ww_oHEX4);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iClk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \iClk~combout\);

\inResetAsync~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inResetAsync~combout\);
\ALT_INV_inResetAsync~clkctrl_outclk\ <= NOT \inResetAsync~clkctrl_outclk\;
\uut|ALT_INV_State.Reset~regout\ <= NOT \uut|State.Reset~regout\;
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
\uut|ALT_INV_ResetSensor~regout\ <= NOT \uut|ResetSensor~regout\;
\uut|ALT_INV_Sel~regout\ <= NOT \uut|Sel~regout\;

-- Location: LCFF_X29_Y17_N11
\uut|oDataX[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector126~0_combout\,
	sdata => \uut|DataXReg\(4),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(4));

-- Location: LCFF_X30_Y17_N7
\uut|ResetCnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[3]~40_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(3));

-- Location: LCFF_X30_Y17_N11
\uut|ResetCnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[5]~44_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(5));

-- Location: LCFF_X30_Y17_N25
\uut|ResetCnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[12]~58_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(12));

-- Location: LCFF_X30_Y16_N7
\uut|ResetCnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[19]~72_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(19));

-- Location: LCFF_X30_Y16_N11
\uut|ResetCnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[21]~76_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(21));

-- Location: LCFF_X30_Y16_N13
\uut|ResetCnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[22]~78_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(22));

-- Location: LCFF_X30_Y16_N25
\uut|ResetCnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[28]~90_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(28));

-- Location: LCFF_X30_Y17_N17
\uut|ResetCnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[8]~50_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(8));

-- Location: LCCOMB_X30_Y21_N2
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

-- Location: LCCOMB_X30_Y21_N8
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

-- Location: LCCOMB_X30_Y21_N10
\uut|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~10_combout\ = (\uut|SysClkGenCounter\(5) & (!\uut|Add0~9\)) # (!\uut|SysClkGenCounter\(5) & ((\uut|Add0~9\) # (GND)))
-- \uut|Add0~11\ = CARRY((!\uut|Add0~9\) # (!\uut|SysClkGenCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(5),
	datad => VCC,
	cin => \uut|Add0~9\,
	combout => \uut|Add0~10_combout\,
	cout => \uut|Add0~11\);

-- Location: LCCOMB_X30_Y20_N16
\uut|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~48_combout\ = (\uut|SysClkGenCounter\(24) & (\uut|Add0~47\ $ (GND))) # (!\uut|SysClkGenCounter\(24) & (!\uut|Add0~47\ & VCC))
-- \uut|Add0~49\ = CARRY((\uut|SysClkGenCounter\(24) & !\uut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(24),
	datad => VCC,
	cin => \uut|Add0~47\,
	combout => \uut|Add0~48_combout\,
	cout => \uut|Add0~49\);

-- Location: LCCOMB_X30_Y20_N18
\uut|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~50_combout\ = (\uut|SysClkGenCounter\(25) & (!\uut|Add0~49\)) # (!\uut|SysClkGenCounter\(25) & ((\uut|Add0~49\) # (GND)))
-- \uut|Add0~51\ = CARRY((!\uut|Add0~49\) # (!\uut|SysClkGenCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(25),
	datad => VCC,
	cin => \uut|Add0~49\,
	combout => \uut|Add0~50_combout\,
	cout => \uut|Add0~51\);

-- Location: LCCOMB_X30_Y20_N20
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

-- Location: LCCOMB_X15_Y21_N8
\uut|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~8_combout\ = (\uut|SlaveClkCounter\(4) & ((GND) # (!\uut|Add2~7\))) # (!\uut|SlaveClkCounter\(4) & (\uut|Add2~7\ $ (GND)))
-- \uut|Add2~9\ = CARRY((\uut|SlaveClkCounter\(4)) # (!\uut|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(4),
	datad => VCC,
	cin => \uut|Add2~7\,
	combout => \uut|Add2~8_combout\,
	cout => \uut|Add2~9\);

-- Location: LCCOMB_X15_Y21_N10
\uut|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~10_combout\ = (\uut|SlaveClkCounter\(5) & (\uut|Add2~9\ & VCC)) # (!\uut|SlaveClkCounter\(5) & (!\uut|Add2~9\))
-- \uut|Add2~11\ = CARRY((!\uut|SlaveClkCounter\(5) & !\uut|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(5),
	datad => VCC,
	cin => \uut|Add2~9\,
	combout => \uut|Add2~10_combout\,
	cout => \uut|Add2~11\);

-- Location: LCCOMB_X15_Y21_N12
\uut|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~12_combout\ = (\uut|SlaveClkCounter\(6) & ((GND) # (!\uut|Add2~11\))) # (!\uut|SlaveClkCounter\(6) & (\uut|Add2~11\ $ (GND)))
-- \uut|Add2~13\ = CARRY((\uut|SlaveClkCounter\(6)) # (!\uut|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(6),
	datad => VCC,
	cin => \uut|Add2~11\,
	combout => \uut|Add2~12_combout\,
	cout => \uut|Add2~13\);

-- Location: LCCOMB_X15_Y21_N14
\uut|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~14_combout\ = (\uut|SlaveClkCounter\(7) & (\uut|Add2~13\ & VCC)) # (!\uut|SlaveClkCounter\(7) & (!\uut|Add2~13\))
-- \uut|Add2~15\ = CARRY((!\uut|SlaveClkCounter\(7) & !\uut|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(7),
	datad => VCC,
	cin => \uut|Add2~13\,
	combout => \uut|Add2~14_combout\,
	cout => \uut|Add2~15\);

-- Location: LCCOMB_X15_Y21_N18
\uut|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~18_combout\ = (\uut|SlaveClkCounter\(9) & (\uut|Add2~17\ & VCC)) # (!\uut|SlaveClkCounter\(9) & (!\uut|Add2~17\))
-- \uut|Add2~19\ = CARRY((!\uut|SlaveClkCounter\(9) & !\uut|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(9),
	datad => VCC,
	cin => \uut|Add2~17\,
	combout => \uut|Add2~18_combout\,
	cout => \uut|Add2~19\);

-- Location: LCCOMB_X15_Y21_N22
\uut|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~22_combout\ = (\uut|SlaveClkCounter\(11) & (\uut|Add2~21\ & VCC)) # (!\uut|SlaveClkCounter\(11) & (!\uut|Add2~21\))
-- \uut|Add2~23\ = CARRY((!\uut|SlaveClkCounter\(11) & !\uut|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(11),
	datad => VCC,
	cin => \uut|Add2~21\,
	combout => \uut|Add2~22_combout\,
	cout => \uut|Add2~23\);

-- Location: LCCOMB_X15_Y21_N28
\uut|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~28_combout\ = (\uut|SlaveClkCounter\(14) & ((GND) # (!\uut|Add2~27\))) # (!\uut|SlaveClkCounter\(14) & (\uut|Add2~27\ $ (GND)))
-- \uut|Add2~29\ = CARRY((\uut|SlaveClkCounter\(14)) # (!\uut|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(14),
	datad => VCC,
	cin => \uut|Add2~27\,
	combout => \uut|Add2~28_combout\,
	cout => \uut|Add2~29\);

-- Location: LCCOMB_X15_Y20_N8
\uut|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~40_combout\ = (\uut|SlaveClkCounter\(20) & ((GND) # (!\uut|Add2~39\))) # (!\uut|SlaveClkCounter\(20) & (\uut|Add2~39\ $ (GND)))
-- \uut|Add2~41\ = CARRY((\uut|SlaveClkCounter\(20)) # (!\uut|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(20),
	datad => VCC,
	cin => \uut|Add2~39\,
	combout => \uut|Add2~40_combout\,
	cout => \uut|Add2~41\);

-- Location: LCCOMB_X15_Y20_N10
\uut|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~42_combout\ = (\uut|SlaveClkCounter\(21) & (\uut|Add2~41\ & VCC)) # (!\uut|SlaveClkCounter\(21) & (!\uut|Add2~41\))
-- \uut|Add2~43\ = CARRY((!\uut|SlaveClkCounter\(21) & !\uut|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(21),
	datad => VCC,
	cin => \uut|Add2~41\,
	combout => \uut|Add2~42_combout\,
	cout => \uut|Add2~43\);

-- Location: LCCOMB_X15_Y20_N12
\uut|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~44_combout\ = (\uut|SlaveClkCounter\(22) & ((GND) # (!\uut|Add2~43\))) # (!\uut|SlaveClkCounter\(22) & (\uut|Add2~43\ $ (GND)))
-- \uut|Add2~45\ = CARRY((\uut|SlaveClkCounter\(22)) # (!\uut|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(22),
	datad => VCC,
	cin => \uut|Add2~43\,
	combout => \uut|Add2~44_combout\,
	cout => \uut|Add2~45\);

-- Location: LCCOMB_X15_Y20_N14
\uut|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~46_combout\ = (\uut|SlaveClkCounter\(23) & (\uut|Add2~45\ & VCC)) # (!\uut|SlaveClkCounter\(23) & (!\uut|Add2~45\))
-- \uut|Add2~47\ = CARRY((!\uut|SlaveClkCounter\(23) & !\uut|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(23),
	datad => VCC,
	cin => \uut|Add2~45\,
	combout => \uut|Add2~46_combout\,
	cout => \uut|Add2~47\);

-- Location: LCCOMB_X15_Y20_N20
\uut|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~52_combout\ = (\uut|SlaveClkCounter\(26) & ((GND) # (!\uut|Add2~51\))) # (!\uut|SlaveClkCounter\(26) & (\uut|Add2~51\ $ (GND)))
-- \uut|Add2~53\ = CARRY((\uut|SlaveClkCounter\(26)) # (!\uut|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(26),
	datad => VCC,
	cin => \uut|Add2~51\,
	combout => \uut|Add2~52_combout\,
	cout => \uut|Add2~53\);

-- Location: LCCOMB_X15_Y20_N28
\uut|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~60_combout\ = (\uut|SlaveClkCounter\(30) & ((GND) # (!\uut|Add2~59\))) # (!\uut|SlaveClkCounter\(30) & (\uut|Add2~59\ $ (GND)))
-- \uut|Add2~61\ = CARRY((\uut|SlaveClkCounter\(30)) # (!\uut|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(30),
	datad => VCC,
	cin => \uut|Add2~59\,
	combout => \uut|Add2~60_combout\,
	cout => \uut|Add2~61\);

-- Location: LCCOMB_X15_Y20_N30
\uut|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~62_combout\ = \uut|SlaveClkCounter\(31) $ (!\uut|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(31),
	cin => \uut|Add2~61\,
	combout => \uut|Add2~62_combout\);

-- Location: LCCOMB_X24_Y16_N0
\uut|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~0_combout\ = \uut|CntWaitCycles\(0) $ (GND)
-- \uut|Add3~1\ = CARRY(!\uut|CntWaitCycles\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(0),
	datad => VCC,
	combout => \uut|Add3~0_combout\,
	cout => \uut|Add3~1\);

-- Location: LCCOMB_X24_Y16_N2
\uut|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~2_combout\ = (\uut|CntWaitCycles\(1) & (!\uut|Add3~1\)) # (!\uut|CntWaitCycles\(1) & ((\uut|Add3~1\) # (GND)))
-- \uut|Add3~3\ = CARRY((!\uut|Add3~1\) # (!\uut|CntWaitCycles\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(1),
	datad => VCC,
	cin => \uut|Add3~1\,
	combout => \uut|Add3~2_combout\,
	cout => \uut|Add3~3\);

-- Location: LCCOMB_X24_Y16_N4
\uut|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~4_combout\ = (\uut|CntWaitCycles\(2) & (\uut|Add3~3\ $ (GND))) # (!\uut|CntWaitCycles\(2) & (!\uut|Add3~3\ & VCC))
-- \uut|Add3~5\ = CARRY((\uut|CntWaitCycles\(2) & !\uut|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(2),
	datad => VCC,
	cin => \uut|Add3~3\,
	combout => \uut|Add3~4_combout\,
	cout => \uut|Add3~5\);

-- Location: LCCOMB_X24_Y16_N6
\uut|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~6_combout\ = (\uut|CntWaitCycles\(3) & (!\uut|Add3~5\)) # (!\uut|CntWaitCycles\(3) & ((\uut|Add3~5\) # (GND)))
-- \uut|Add3~7\ = CARRY((!\uut|Add3~5\) # (!\uut|CntWaitCycles\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(3),
	datad => VCC,
	cin => \uut|Add3~5\,
	combout => \uut|Add3~6_combout\,
	cout => \uut|Add3~7\);

-- Location: LCCOMB_X24_Y16_N8
\uut|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~8_combout\ = (\uut|CntWaitCycles\(4) & (\uut|Add3~7\ $ (GND))) # (!\uut|CntWaitCycles\(4) & (!\uut|Add3~7\ & VCC))
-- \uut|Add3~9\ = CARRY((\uut|CntWaitCycles\(4) & !\uut|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(4),
	datad => VCC,
	cin => \uut|Add3~7\,
	combout => \uut|Add3~8_combout\,
	cout => \uut|Add3~9\);

-- Location: LCCOMB_X24_Y16_N10
\uut|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~10_combout\ = (\uut|CntWaitCycles\(5) & (!\uut|Add3~9\)) # (!\uut|CntWaitCycles\(5) & ((\uut|Add3~9\) # (GND)))
-- \uut|Add3~11\ = CARRY((!\uut|Add3~9\) # (!\uut|CntWaitCycles\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(5),
	datad => VCC,
	cin => \uut|Add3~9\,
	combout => \uut|Add3~10_combout\,
	cout => \uut|Add3~11\);

-- Location: LCCOMB_X24_Y16_N12
\uut|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~12_combout\ = (\uut|CntWaitCycles\(6) & (\uut|Add3~11\ $ (GND))) # (!\uut|CntWaitCycles\(6) & (!\uut|Add3~11\ & VCC))
-- \uut|Add3~13\ = CARRY((\uut|CntWaitCycles\(6) & !\uut|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(6),
	datad => VCC,
	cin => \uut|Add3~11\,
	combout => \uut|Add3~12_combout\,
	cout => \uut|Add3~13\);

-- Location: LCCOMB_X24_Y16_N22
\uut|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~22_combout\ = (\uut|CntWaitCycles\(11) & (!\uut|Add3~21\)) # (!\uut|CntWaitCycles\(11) & ((\uut|Add3~21\) # (GND)))
-- \uut|Add3~23\ = CARRY((!\uut|Add3~21\) # (!\uut|CntWaitCycles\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(11),
	datad => VCC,
	cin => \uut|Add3~21\,
	combout => \uut|Add3~22_combout\,
	cout => \uut|Add3~23\);

-- Location: LCCOMB_X24_Y16_N26
\uut|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~26_combout\ = (\uut|CntWaitCycles\(13) & (!\uut|Add3~25\)) # (!\uut|CntWaitCycles\(13) & ((\uut|Add3~25\) # (GND)))
-- \uut|Add3~27\ = CARRY((!\uut|Add3~25\) # (!\uut|CntWaitCycles\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(13),
	datad => VCC,
	cin => \uut|Add3~25\,
	combout => \uut|Add3~26_combout\,
	cout => \uut|Add3~27\);

-- Location: LCCOMB_X24_Y16_N28
\uut|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~28_combout\ = (\uut|CntWaitCycles\(14) & (\uut|Add3~27\ $ (GND))) # (!\uut|CntWaitCycles\(14) & (!\uut|Add3~27\ & VCC))
-- \uut|Add3~29\ = CARRY((\uut|CntWaitCycles\(14) & !\uut|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(14),
	datad => VCC,
	cin => \uut|Add3~27\,
	combout => \uut|Add3~28_combout\,
	cout => \uut|Add3~29\);

-- Location: LCCOMB_X24_Y16_N30
\uut|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~30_combout\ = (\uut|CntWaitCycles\(15) & (!\uut|Add3~29\)) # (!\uut|CntWaitCycles\(15) & ((\uut|Add3~29\) # (GND)))
-- \uut|Add3~31\ = CARRY((!\uut|Add3~29\) # (!\uut|CntWaitCycles\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(15),
	datad => VCC,
	cin => \uut|Add3~29\,
	combout => \uut|Add3~30_combout\,
	cout => \uut|Add3~31\);

-- Location: LCCOMB_X24_Y15_N0
\uut|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~32_combout\ = (\uut|CntWaitCycles\(16) & (\uut|Add3~31\ $ (GND))) # (!\uut|CntWaitCycles\(16) & (!\uut|Add3~31\ & VCC))
-- \uut|Add3~33\ = CARRY((\uut|CntWaitCycles\(16) & !\uut|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(16),
	datad => VCC,
	cin => \uut|Add3~31\,
	combout => \uut|Add3~32_combout\,
	cout => \uut|Add3~33\);

-- Location: LCCOMB_X24_Y15_N2
\uut|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~34_combout\ = (\uut|CntWaitCycles\(17) & (!\uut|Add3~33\)) # (!\uut|CntWaitCycles\(17) & ((\uut|Add3~33\) # (GND)))
-- \uut|Add3~35\ = CARRY((!\uut|Add3~33\) # (!\uut|CntWaitCycles\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(17),
	datad => VCC,
	cin => \uut|Add3~33\,
	combout => \uut|Add3~34_combout\,
	cout => \uut|Add3~35\);

-- Location: LCCOMB_X24_Y15_N4
\uut|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~36_combout\ = (\uut|CntWaitCycles\(18) & (\uut|Add3~35\ $ (GND))) # (!\uut|CntWaitCycles\(18) & (!\uut|Add3~35\ & VCC))
-- \uut|Add3~37\ = CARRY((\uut|CntWaitCycles\(18) & !\uut|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(18),
	datad => VCC,
	cin => \uut|Add3~35\,
	combout => \uut|Add3~36_combout\,
	cout => \uut|Add3~37\);

-- Location: LCCOMB_X24_Y15_N6
\uut|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~38_combout\ = (\uut|CntWaitCycles\(19) & (!\uut|Add3~37\)) # (!\uut|CntWaitCycles\(19) & ((\uut|Add3~37\) # (GND)))
-- \uut|Add3~39\ = CARRY((!\uut|Add3~37\) # (!\uut|CntWaitCycles\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(19),
	datad => VCC,
	cin => \uut|Add3~37\,
	combout => \uut|Add3~38_combout\,
	cout => \uut|Add3~39\);

-- Location: LCCOMB_X24_Y15_N8
\uut|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~40_combout\ = (\uut|CntWaitCycles\(20) & (\uut|Add3~39\ $ (GND))) # (!\uut|CntWaitCycles\(20) & (!\uut|Add3~39\ & VCC))
-- \uut|Add3~41\ = CARRY((\uut|CntWaitCycles\(20) & !\uut|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(20),
	datad => VCC,
	cin => \uut|Add3~39\,
	combout => \uut|Add3~40_combout\,
	cout => \uut|Add3~41\);

-- Location: LCCOMB_X24_Y15_N10
\uut|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~42_combout\ = (\uut|CntWaitCycles\(21) & (!\uut|Add3~41\)) # (!\uut|CntWaitCycles\(21) & ((\uut|Add3~41\) # (GND)))
-- \uut|Add3~43\ = CARRY((!\uut|Add3~41\) # (!\uut|CntWaitCycles\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(21),
	datad => VCC,
	cin => \uut|Add3~41\,
	combout => \uut|Add3~42_combout\,
	cout => \uut|Add3~43\);

-- Location: LCCOMB_X24_Y15_N12
\uut|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~44_combout\ = (\uut|CntWaitCycles\(22) & (\uut|Add3~43\ $ (GND))) # (!\uut|CntWaitCycles\(22) & (!\uut|Add3~43\ & VCC))
-- \uut|Add3~45\ = CARRY((\uut|CntWaitCycles\(22) & !\uut|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(22),
	datad => VCC,
	cin => \uut|Add3~43\,
	combout => \uut|Add3~44_combout\,
	cout => \uut|Add3~45\);

-- Location: LCCOMB_X24_Y15_N14
\uut|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~46_combout\ = (\uut|CntWaitCycles\(23) & (!\uut|Add3~45\)) # (!\uut|CntWaitCycles\(23) & ((\uut|Add3~45\) # (GND)))
-- \uut|Add3~47\ = CARRY((!\uut|Add3~45\) # (!\uut|CntWaitCycles\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(23),
	datad => VCC,
	cin => \uut|Add3~45\,
	combout => \uut|Add3~46_combout\,
	cout => \uut|Add3~47\);

-- Location: LCCOMB_X24_Y15_N22
\uut|Add3~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~54_combout\ = (\uut|CntWaitCycles\(27) & (!\uut|Add3~53\)) # (!\uut|CntWaitCycles\(27) & ((\uut|Add3~53\) # (GND)))
-- \uut|Add3~55\ = CARRY((!\uut|Add3~53\) # (!\uut|CntWaitCycles\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(27),
	datad => VCC,
	cin => \uut|Add3~53\,
	combout => \uut|Add3~54_combout\,
	cout => \uut|Add3~55\);

-- Location: LCCOMB_X24_Y15_N24
\uut|Add3~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~56_combout\ = (\uut|CntWaitCycles\(28) & (\uut|Add3~55\ $ (GND))) # (!\uut|CntWaitCycles\(28) & (!\uut|Add3~55\ & VCC))
-- \uut|Add3~57\ = CARRY((\uut|CntWaitCycles\(28) & !\uut|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(28),
	datad => VCC,
	cin => \uut|Add3~55\,
	combout => \uut|Add3~56_combout\,
	cout => \uut|Add3~57\);

-- Location: LCCOMB_X24_Y15_N26
\uut|Add3~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~58_combout\ = (\uut|CntWaitCycles\(29) & (!\uut|Add3~57\)) # (!\uut|CntWaitCycles\(29) & ((\uut|Add3~57\) # (GND)))
-- \uut|Add3~59\ = CARRY((!\uut|Add3~57\) # (!\uut|CntWaitCycles\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(29),
	datad => VCC,
	cin => \uut|Add3~57\,
	combout => \uut|Add3~58_combout\,
	cout => \uut|Add3~59\);

-- Location: LCCOMB_X24_Y15_N28
\uut|Add3~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~60_combout\ = (\uut|CntWaitCycles\(30) & (\uut|Add3~59\ $ (GND))) # (!\uut|CntWaitCycles\(30) & (!\uut|Add3~59\ & VCC))
-- \uut|Add3~61\ = CARRY((\uut|CntWaitCycles\(30) & !\uut|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(30),
	datad => VCC,
	cin => \uut|Add3~59\,
	combout => \uut|Add3~60_combout\,
	cout => \uut|Add3~61\);

-- Location: LCCOMB_X24_Y15_N30
\uut|Add3~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~62_combout\ = \uut|Add3~61\ $ (\uut|CntWaitCycles\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|CntWaitCycles\(31),
	cin => \uut|Add3~61\,
	combout => \uut|Add3~62_combout\);

-- Location: LCCOMB_X43_Y25_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (SysClkCnt(4) & (\Add0~7\ $ (GND))) # (!SysClkCnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((SysClkCnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X43_Y25_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (SysClkCnt(5) & (!\Add0~9\)) # (!SysClkCnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!SysClkCnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X43_Y25_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (SysClkCnt(6) & (\Add0~11\ $ (GND))) # (!SysClkCnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((SysClkCnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X43_Y25_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (SysClkCnt(7) & (!\Add0~13\)) # (!SysClkCnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!SysClkCnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X43_Y25_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (SysClkCnt(12) & (\Add0~23\ $ (GND))) # (!SysClkCnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((SysClkCnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X43_Y24_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (SysClkCnt(19) & (!\Add0~37\)) # (!SysClkCnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!SysClkCnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X43_Y24_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (SysClkCnt(21) & (!\Add0~41\)) # (!SysClkCnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!SysClkCnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X30_Y17_N6
\uut|ResetCnt[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[3]~40_combout\ = (\uut|ResetCnt\(3) & (!\uut|ResetCnt[2]~39\)) # (!\uut|ResetCnt\(3) & ((\uut|ResetCnt[2]~39\) # (GND)))
-- \uut|ResetCnt[3]~41\ = CARRY((!\uut|ResetCnt[2]~39\) # (!\uut|ResetCnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(3),
	datad => VCC,
	cin => \uut|ResetCnt[2]~39\,
	combout => \uut|ResetCnt[3]~40_combout\,
	cout => \uut|ResetCnt[3]~41\);

-- Location: LCCOMB_X30_Y17_N10
\uut|ResetCnt[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[5]~44_combout\ = (\uut|ResetCnt\(5) & (!\uut|ResetCnt[4]~43\)) # (!\uut|ResetCnt\(5) & ((\uut|ResetCnt[4]~43\) # (GND)))
-- \uut|ResetCnt[5]~45\ = CARRY((!\uut|ResetCnt[4]~43\) # (!\uut|ResetCnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(5),
	datad => VCC,
	cin => \uut|ResetCnt[4]~43\,
	combout => \uut|ResetCnt[5]~44_combout\,
	cout => \uut|ResetCnt[5]~45\);

-- Location: LCCOMB_X30_Y17_N16
\uut|ResetCnt[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[8]~50_combout\ = (\uut|ResetCnt\(8) & (\uut|ResetCnt[7]~49\ $ (GND))) # (!\uut|ResetCnt\(8) & (!\uut|ResetCnt[7]~49\ & VCC))
-- \uut|ResetCnt[8]~51\ = CARRY((\uut|ResetCnt\(8) & !\uut|ResetCnt[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(8),
	datad => VCC,
	cin => \uut|ResetCnt[7]~49\,
	combout => \uut|ResetCnt[8]~50_combout\,
	cout => \uut|ResetCnt[8]~51\);

-- Location: LCCOMB_X30_Y17_N24
\uut|ResetCnt[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[12]~58_combout\ = (\uut|ResetCnt\(12) & (\uut|ResetCnt[11]~57\ $ (GND))) # (!\uut|ResetCnt\(12) & (!\uut|ResetCnt[11]~57\ & VCC))
-- \uut|ResetCnt[12]~59\ = CARRY((\uut|ResetCnt\(12) & !\uut|ResetCnt[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(12),
	datad => VCC,
	cin => \uut|ResetCnt[11]~57\,
	combout => \uut|ResetCnt[12]~58_combout\,
	cout => \uut|ResetCnt[12]~59\);

-- Location: LCCOMB_X30_Y16_N6
\uut|ResetCnt[19]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[19]~72_combout\ = (\uut|ResetCnt\(19) & (!\uut|ResetCnt[18]~71\)) # (!\uut|ResetCnt\(19) & ((\uut|ResetCnt[18]~71\) # (GND)))
-- \uut|ResetCnt[19]~73\ = CARRY((!\uut|ResetCnt[18]~71\) # (!\uut|ResetCnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(19),
	datad => VCC,
	cin => \uut|ResetCnt[18]~71\,
	combout => \uut|ResetCnt[19]~72_combout\,
	cout => \uut|ResetCnt[19]~73\);

-- Location: LCCOMB_X30_Y16_N10
\uut|ResetCnt[21]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[21]~76_combout\ = (\uut|ResetCnt\(21) & (!\uut|ResetCnt[20]~75\)) # (!\uut|ResetCnt\(21) & ((\uut|ResetCnt[20]~75\) # (GND)))
-- \uut|ResetCnt[21]~77\ = CARRY((!\uut|ResetCnt[20]~75\) # (!\uut|ResetCnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(21),
	datad => VCC,
	cin => \uut|ResetCnt[20]~75\,
	combout => \uut|ResetCnt[21]~76_combout\,
	cout => \uut|ResetCnt[21]~77\);

-- Location: LCCOMB_X30_Y16_N12
\uut|ResetCnt[22]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[22]~78_combout\ = (\uut|ResetCnt\(22) & (\uut|ResetCnt[21]~77\ $ (GND))) # (!\uut|ResetCnt\(22) & (!\uut|ResetCnt[21]~77\ & VCC))
-- \uut|ResetCnt[22]~79\ = CARRY((\uut|ResetCnt\(22) & !\uut|ResetCnt[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(22),
	datad => VCC,
	cin => \uut|ResetCnt[21]~77\,
	combout => \uut|ResetCnt[22]~78_combout\,
	cout => \uut|ResetCnt[22]~79\);

-- Location: LCCOMB_X30_Y16_N24
\uut|ResetCnt[28]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[28]~90_combout\ = (\uut|ResetCnt\(28) & (\uut|ResetCnt[27]~89\ $ (GND))) # (!\uut|ResetCnt\(28) & (!\uut|ResetCnt[27]~89\ & VCC))
-- \uut|ResetCnt[28]~91\ = CARRY((\uut|ResetCnt\(28) & !\uut|ResetCnt[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(28),
	datad => VCC,
	cin => \uut|ResetCnt[27]~89\,
	combout => \uut|ResetCnt[28]~90_combout\,
	cout => \uut|ResetCnt[28]~91\);

-- Location: LCCOMB_X26_Y17_N24
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

-- Location: LCFF_X31_Y21_N3
\uut|SysClkGenCounter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector85~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(26));

-- Location: LCFF_X29_Y20_N1
\uut|SysClkGenCounter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector86~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(25));

-- Location: LCFF_X29_Y20_N3
\uut|SysClkGenCounter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector87~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(24));

-- Location: LCCOMB_X29_Y20_N20
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

-- Location: LCFF_X31_Y20_N21
\uut|SysClkGenCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector106~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(5));

-- Location: LCFF_X31_Y20_N7
\uut|SysClkGenCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector107~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(4));

-- Location: LCCOMB_X31_Y20_N2
\uut|RegAndClockGen~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~6_combout\ = (\uut|SysClkGenCounter\(4) & (\uut|SysClkGenCounter\(6) & (\uut|SysClkGenCounter\(5) & !\uut|SysClkGenCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(4),
	datab => \uut|SysClkGenCounter\(6),
	datac => \uut|SysClkGenCounter\(5),
	datad => \uut|SysClkGenCounter\(2),
	combout => \uut|RegAndClockGen~6_combout\);

-- Location: LCFF_X29_Y21_N1
\uut|SysClkGenCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector110~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(1));

-- Location: LCCOMB_X29_Y21_N10
\uut|RegAndClockGen~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~7_combout\ = (!\uut|SysClkGenCounter\(1) & (\uut|SysClkGenCounter\(0) & \uut|RegAndClockGen~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(1),
	datac => \uut|SysClkGenCounter\(0),
	datad => \uut|RegAndClockGen~6_combout\,
	combout => \uut|RegAndClockGen~7_combout\);

-- Location: LCFF_X16_Y20_N9
\uut|SlaveClkCounter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector20~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(26));

-- Location: LCFF_X16_Y20_N7
\uut|SlaveClkCounter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector23~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(23));

-- Location: LCCOMB_X16_Y20_N16
\uut|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~1_combout\ = (!\uut|SlaveClkCounter\(23) & (!\uut|SlaveClkCounter\(25) & (!\uut|SlaveClkCounter\(26) & !\uut|SlaveClkCounter\(24))))

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
	combout => \uut|LessThan0~1_combout\);

-- Location: LCFF_X16_Y21_N27
\uut|SlaveClkCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector37~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(9));

-- Location: LCCOMB_X16_Y21_N24
\uut|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~6_combout\ = (!\uut|SlaveClkCounter\(9) & (!\uut|SlaveClkCounter\(8) & (!\uut|SlaveClkCounter\(7) & !\uut|SlaveClkCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(9),
	datab => \uut|SlaveClkCounter\(8),
	datac => \uut|SlaveClkCounter\(7),
	datad => \uut|SlaveClkCounter\(10),
	combout => \uut|LessThan0~6_combout\);

-- Location: LCFF_X25_Y15_N9
\uut|CntWaitCycles[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector48~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(31));

-- Location: LCFF_X25_Y15_N3
\uut|CntWaitCycles[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector49~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(30));

-- Location: LCFF_X25_Y15_N29
\uut|CntWaitCycles[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector50~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(29));

-- Location: LCFF_X25_Y15_N7
\uut|CntWaitCycles[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector51~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(28));

-- Location: LCCOMB_X25_Y15_N16
\uut|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~0_combout\ = (!\uut|CntWaitCycles\(28) & (!\uut|CntWaitCycles\(30) & (!\uut|CntWaitCycles\(31) & !\uut|CntWaitCycles\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(28),
	datab => \uut|CntWaitCycles\(30),
	datac => \uut|CntWaitCycles\(31),
	datad => \uut|CntWaitCycles\(29),
	combout => \uut|Equal4~0_combout\);

-- Location: LCFF_X25_Y16_N27
\uut|CntWaitCycles[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector60~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(19));

-- Location: LCFF_X23_Y16_N17
\uut|CntWaitCycles[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector64~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(15));

-- Location: LCFF_X23_Y16_N3
\uut|CntWaitCycles[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector65~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(14));

-- Location: LCFF_X23_Y16_N13
\uut|CntWaitCycles[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector66~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(13));

-- Location: LCCOMB_X23_Y16_N24
\uut|Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~5_combout\ = (!\uut|CntWaitCycles\(13) & (!\uut|CntWaitCycles\(12) & (!\uut|CntWaitCycles\(15) & !\uut|CntWaitCycles\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(13),
	datab => \uut|CntWaitCycles\(12),
	datac => \uut|CntWaitCycles\(15),
	datad => \uut|CntWaitCycles\(14),
	combout => \uut|Equal4~5_combout\);

-- Location: LCFF_X23_Y16_N11
\uut|CntWaitCycles[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector68~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(11));

-- Location: LCFF_X23_Y16_N9
\uut|CntWaitCycles[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector75~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(4));

-- Location: LCCOMB_X26_Y16_N24
\uut|Equal4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~9_combout\ = (\uut|CntWaitCycles\(6) & (\uut|CntWaitCycles\(5) & \uut|CntWaitCycles\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(6),
	datab => \uut|CntWaitCycles\(5),
	datad => \uut|CntWaitCycles\(0),
	combout => \uut|Equal4~9_combout\);

-- Location: LCCOMB_X26_Y20_N16
\uut|SysClkGenCounter[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[4]~0_combout\ = (!\uut|Sel~2_combout\ & ((\uut|State.OutputAndWaitForWrite~regout\) # ((\uut|State.WaitForWriteDataY~regout\) # (\uut|State.WaitForWriteDataX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~2_combout\,
	datab => \uut|State.OutputAndWaitForWrite~regout\,
	datac => \uut|State.WaitForWriteDataY~regout\,
	datad => \uut|State.WaitForWriteDataX~regout\,
	combout => \uut|SysClkGenCounter[4]~0_combout\);

-- Location: LCCOMB_X26_Y20_N10
\uut|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector47~0_combout\ = (!\uut|SysClkGenCounter[4]~0_combout\ & (\uut|WideOr1~0_combout\ & ((\uut|Sel~1_combout\) # (\uut|WideOr1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~0_combout\,
	datab => \uut|Sel~1_combout\,
	datac => \uut|WideOr1~1_combout\,
	datad => \uut|WideOr1~0_combout\,
	combout => \uut|Selector47~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\uut|Selector47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector47~1_combout\ = (\uut|Selector113~0_combout\ & (!\uut|Selector47~0_combout\ & ((!\uut|Sel~regout\)))) # (!\uut|Selector113~0_combout\ & (((\uut|Sel~0_combout\) # (!\uut|Sel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector47~0_combout\,
	datab => \uut|Selector113~0_combout\,
	datac => \uut|Sel~0_combout\,
	datad => \uut|Sel~regout\,
	combout => \uut|Selector47~1_combout\);

-- Location: LCFF_X43_Y24_N11
\SysClkCnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~42_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(21));

-- Location: LCFF_X43_Y24_N7
\SysClkCnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~38_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(19));

-- Location: LCCOMB_X44_Y25_N20
\Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (!SysClkCnt(18) & (!SysClkCnt(19) & (!SysClkCnt(20) & !SysClkCnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(18),
	datab => SysClkCnt(19),
	datac => SysClkCnt(20),
	datad => SysClkCnt(17),
	combout => \Equal4~4_combout\);

-- Location: LCFF_X43_Y25_N25
\SysClkCnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~24_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(12));

-- Location: LCCOMB_X44_Y25_N16
\Equal4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (SysClkCnt(10) & (!SysClkCnt(12) & (!SysClkCnt(11) & !SysClkCnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(10),
	datab => SysClkCnt(12),
	datac => SysClkCnt(11),
	datad => SysClkCnt(9),
	combout => \Equal4~6_combout\);

-- Location: LCFF_X43_Y25_N13
\SysClkCnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(6));

-- Location: LCCOMB_X27_Y21_N6
\uut|Selector112~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~1_combout\ = (\uut|Add2~2_combout\ & (!\uut|Add2~0_combout\ & (\uut|State.SetYReg~regout\))) # (!\uut|Add2~2_combout\ & (((\uut|State.SetXReg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~2_combout\,
	datab => \uut|Add2~0_combout\,
	datac => \uut|State.SetYReg~regout\,
	datad => \uut|State.SetXReg~regout\,
	combout => \uut|Selector112~1_combout\);

-- Location: LCCOMB_X29_Y16_N0
\uut|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~0_combout\ = (\uut|ResetCnt\(9) & (\uut|ResetCnt\(3) & (\uut|ResetCnt\(2) & !\uut|ResetCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(9),
	datab => \uut|ResetCnt\(3),
	datac => \uut|ResetCnt\(2),
	datad => \uut|ResetCnt\(5),
	combout => \uut|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y16_N26
\uut|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~1_combout\ = (!\uut|ResetCnt\(12) & (!\uut|ResetCnt\(14) & (!\uut|ResetCnt\(15) & !\uut|ResetCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(12),
	datab => \uut|ResetCnt\(14),
	datac => \uut|ResetCnt\(15),
	datad => \uut|ResetCnt\(11),
	combout => \uut|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y16_N12
\uut|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~2_combout\ = (!\uut|ResetCnt\(19) & (!\uut|ResetCnt\(18) & (!\uut|ResetCnt\(16) & !\uut|ResetCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(19),
	datab => \uut|ResetCnt\(18),
	datac => \uut|ResetCnt\(16),
	datad => \uut|ResetCnt\(17),
	combout => \uut|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y16_N14
\uut|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~3_combout\ = (!\uut|ResetCnt\(22) & (!\uut|ResetCnt\(20) & (!\uut|ResetCnt\(21) & !\uut|ResetCnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(22),
	datab => \uut|ResetCnt\(20),
	datac => \uut|ResetCnt\(21),
	datad => \uut|ResetCnt\(23),
	combout => \uut|Equal1~3_combout\);

-- Location: LCCOMB_X29_Y16_N16
\uut|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~4_combout\ = (\uut|Equal1~2_combout\ & (\uut|Equal1~0_combout\ & (\uut|Equal1~3_combout\ & \uut|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal1~2_combout\,
	datab => \uut|Equal1~0_combout\,
	datac => \uut|Equal1~3_combout\,
	datad => \uut|Equal1~1_combout\,
	combout => \uut|Equal1~4_combout\);

-- Location: LCCOMB_X25_Y16_N20
\uut|RegAndClockGen~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~13_combout\ = (\uut|ResetCnt\(1) & (!\uut|ResetSensor~regout\ & (!\uut|ResetCnt\(4) & \uut|ResetCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(1),
	datab => \uut|ResetSensor~regout\,
	datac => \uut|ResetCnt\(4),
	datad => \uut|ResetCnt\(0),
	combout => \uut|RegAndClockGen~13_combout\);

-- Location: LCFF_X31_Y17_N7
\uut|MotionReg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[6]~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(6));

-- Location: LCFF_X32_Y17_N23
\uut|MotionReg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[0]~17_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(0));

-- Location: LCCOMB_X29_Y17_N10
\uut|Selector126~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector126~0_combout\ = (\uut|oDataX\(4) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(4),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector126~0_combout\);

-- Location: LCFF_X29_Y17_N5
\uut|DataXReg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[4]~5_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(4));

-- Location: LCCOMB_X31_Y21_N2
\uut|Selector85~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector85~0_combout\ = (\uut|Add0~52_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add0~52_combout\,
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector85~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\uut|Selector86~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector86~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~50_combout\,
	combout => \uut|Selector86~0_combout\);

-- Location: LCCOMB_X29_Y20_N2
\uut|Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector87~0_combout\ = (\uut|Add0~48_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~48_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector87~0_combout\);

-- Location: LCCOMB_X31_Y20_N20
\uut|Selector106~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector106~0_combout\ = (\uut|Add0~10_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~10_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector106~0_combout\);

-- Location: LCCOMB_X31_Y20_N6
\uut|Selector107~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector107~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~8_combout\,
	combout => \uut|Selector107~0_combout\);

-- Location: LCCOMB_X26_Y20_N26
\uut|Selector111~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~2_combout\ = (\uut|SysClkGenCounter~6_combout\) # ((!\uut|WideOr1~combout\ & ((\uut|Sel~2_combout\) # (!\uut|State.WaitForWriteDataX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter~6_combout\,
	datab => \uut|Sel~2_combout\,
	datac => \uut|WideOr1~combout\,
	datad => \uut|State.WaitForWriteDataX~regout\,
	combout => \uut|Selector111~2_combout\);

-- Location: LCCOMB_X26_Y20_N20
\uut|Selector111~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~3_combout\ = (\uut|Selector111~2_combout\ & ((\uut|Sel~0_combout\) # ((\uut|SysClkGenCounter~6_combout\) # (!\uut|State.SetMotionReg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|Selector111~2_combout\,
	datac => \uut|SysClkGenCounter~6_combout\,
	datad => \uut|State.SetMotionReg~regout\,
	combout => \uut|Selector111~3_combout\);

-- Location: LCCOMB_X29_Y21_N0
\uut|Selector110~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector110~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~2_combout\,
	combout => \uut|Selector110~0_combout\);

-- Location: LCCOMB_X26_Y20_N6
\uut|Selector113~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector113~1_combout\ = (\uut|Selector47~0_combout\ & (\uut|Selector113~0_combout\ & ((\uut|Sel~3_combout\) # (\uut|SysClkGenCounter[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector47~0_combout\,
	datab => \uut|Sel~3_combout\,
	datac => \uut|Selector113~0_combout\,
	datad => \uut|SysClkGenCounter[4]~1_combout\,
	combout => \uut|Selector113~1_combout\);

-- Location: LCCOMB_X26_Y16_N18
\uut|SlaveClkCounter[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[15]~2_combout\ = (!\uut|Equal5~0_combout\ & (\uut|Equal4~4_combout\ & (\uut|Equal4~8_combout\ & !\uut|SlaveClkCounter[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal5~0_combout\,
	datab => \uut|Equal4~4_combout\,
	datac => \uut|Equal4~8_combout\,
	datad => \uut|SlaveClkCounter[15]~0_combout\,
	combout => \uut|SlaveClkCounter[15]~2_combout\);

-- Location: LCCOMB_X26_Y16_N6
\uut|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~0_combout\ = (\GenerateStrobe|oStrobe~regout\ & ((\uut|SlaveClkCounter[15]~2_combout\) # (\uut|CntWaitCycles[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter[15]~2_combout\,
	datac => \GenerateStrobe|oStrobe~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector1~0_combout\);

-- Location: LCCOMB_X16_Y20_N8
\uut|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector20~0_combout\ = (!\uut|State.Init~regout\ & (\uut|WideOr0~4_combout\ & \uut|Add2~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~52_combout\,
	combout => \uut|Selector20~0_combout\);

-- Location: LCCOMB_X16_Y20_N6
\uut|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector23~0_combout\ = (\uut|Add2~46_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~46_combout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector23~0_combout\);

-- Location: LCCOMB_X16_Y21_N26
\uut|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector37~0_combout\ = (!\uut|State.Init~regout\ & (\uut|SlaveClkCounter[15]~0_combout\ & (\uut|WideOr1~1_combout\ & \uut|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|SlaveClkCounter[15]~0_combout\,
	datac => \uut|WideOr1~1_combout\,
	datad => \uut|Add2~18_combout\,
	combout => \uut|Selector37~0_combout\);

-- Location: LCFF_X26_Y17_N13
\GenerateStrobe|ClkCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|ClkCounter~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(3));

-- Location: LCCOMB_X25_Y15_N28
\uut|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector50~0_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (\uut|Add3~58_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|Add3~58_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector50~0_combout\);

-- Location: LCCOMB_X25_Y15_N6
\uut|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector51~0_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (\uut|Add3~56_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|Add3~56_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector51~0_combout\);

-- Location: LCCOMB_X25_Y16_N26
\uut|Selector60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector60~0_combout\ = (\uut|Add3~38_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~38_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector60~0_combout\);

-- Location: LCCOMB_X23_Y16_N16
\uut|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector64~0_combout\ = (\uut|Add3~30_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add3~30_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector64~0_combout\);

-- Location: LCCOMB_X23_Y16_N2
\uut|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector65~0_combout\ = (\uut|Add3~28_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add3~28_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector65~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\uut|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector66~0_combout\ = (!\uut|State.Init~regout\ & (!\uut|CntWaitCycles[8]~0_combout\ & \uut|Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|CntWaitCycles[8]~0_combout\,
	datac => \uut|Add3~26_combout\,
	combout => \uut|Selector66~0_combout\);

-- Location: LCCOMB_X23_Y16_N10
\uut|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector68~0_combout\ = (\uut|Add3~22_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add3~22_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector68~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\uut|Selector75~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector75~0_combout\ = (!\uut|State.Init~regout\ & (!\uut|CntWaitCycles[8]~0_combout\ & \uut|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|CntWaitCycles[8]~0_combout\,
	datac => \uut|Add3~8_combout\,
	combout => \uut|Selector75~0_combout\);

-- Location: LCCOMB_X31_Y17_N6
\uut|MotionReg[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[6]~6_combout\ = (\uut|MotionReg[7]~19_combout\ & ((\uut|MotionReg[6]~5_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[6]~5_combout\ & ((\uut|MotionReg\(6)))))) # (!\uut|MotionReg[7]~19_combout\ & (((\uut|MotionReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[7]~19_combout\,
	datac => \uut|MotionReg\(6),
	datad => \uut|MotionReg[6]~5_combout\,
	combout => \uut|MotionReg[6]~6_combout\);

-- Location: LCCOMB_X32_Y17_N22
\uut|MotionReg[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[0]~17_combout\ = (\uut|MotionReg[0]~16_combout\ & ((\uut|MotionReg[7]~19_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[7]~19_combout\ & ((\uut|MotionReg\(0)))))) # (!\uut|MotionReg[0]~16_combout\ & (((\uut|MotionReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[0]~16_combout\,
	datac => \uut|MotionReg\(0),
	datad => \uut|MotionReg[7]~19_combout\,
	combout => \uut|MotionReg[0]~17_combout\);

-- Location: LCCOMB_X29_Y17_N4
\uut|DataXReg[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[4]~5_combout\ = (\uut|MotionReg[4]~9_combout\ & ((\uut|DataXReg[7]~13_combout\ & (\iMISO~combout\)) # (!\uut|DataXReg[7]~13_combout\ & ((\uut|DataXReg\(4)))))) # (!\uut|MotionReg[4]~9_combout\ & (((\uut|DataXReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[4]~9_combout\,
	datac => \uut|DataXReg\(4),
	datad => \uut|DataXReg[7]~13_combout\,
	combout => \uut|DataXReg[4]~5_combout\);

-- Location: LCCOMB_X27_Y17_N10
\uut|MotionReg[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[5]~18_combout\ = (!\uut|SlaveClkCounter\(0) & \uut|SlaveClkCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|MotionReg[5]~18_combout\);

-- Location: LCCOMB_X26_Y17_N12
\GenerateStrobe|ClkCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|ClkCounter~1_combout\ = (\GenerateStrobe|Add0~6_combout\ & (((!\GenerateStrobe|Equal0~0_combout\) # (!\GenerateStrobe|ClkCounter\(0))) # (!\GenerateStrobe|ClkCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(1),
	datab => \GenerateStrobe|ClkCounter\(0),
	datac => \GenerateStrobe|Add0~6_combout\,
	datad => \GenerateStrobe|Equal0~0_combout\,
	combout => \GenerateStrobe|ClkCounter~1_combout\);

-- Location: LCCOMB_X27_Y21_N10
\uut|DataYReg[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[7]~15_combout\ = (\uut|RegAndClockGen~10_combout\ & ((\uut|SlaveClkCounter\(31)) # ((\uut|LessThan0~8_combout\) # (!\uut|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(31),
	datab => \uut|LessThan0~8_combout\,
	datac => \uut|Equal3~1_combout\,
	datad => \uut|RegAndClockGen~10_combout\,
	combout => \uut|DataYReg[7]~15_combout\);

-- Location: LCCOMB_X25_Y15_N8
\uut|Selector48~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector48~2_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (!\uut|State.Init~regout\ & \uut|Add3~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add3~62_combout\,
	combout => \uut|Selector48~2_combout\);

-- Location: LCCOMB_X25_Y15_N2
\uut|Selector49~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector49~2_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (\uut|Add3~60_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|Add3~60_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector49~2_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X30_Y17_N0
\uut|ResetCnt[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[0]~34_combout\ = \uut|ResetCnt\(0) $ (VCC)
-- \uut|ResetCnt[0]~35\ = CARRY(\uut|ResetCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(0),
	datad => VCC,
	combout => \uut|ResetCnt[0]~34_combout\,
	cout => \uut|ResetCnt[0]~35\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X30_Y17_N20
\uut|ResetCnt[10]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[10]~54_combout\ = (\uut|ResetCnt\(10) & (\uut|ResetCnt[9]~53\ $ (GND))) # (!\uut|ResetCnt\(10) & (!\uut|ResetCnt[9]~53\ & VCC))
-- \uut|ResetCnt[10]~55\ = CARRY((\uut|ResetCnt\(10) & !\uut|ResetCnt[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(10),
	datad => VCC,
	cin => \uut|ResetCnt[9]~53\,
	combout => \uut|ResetCnt[10]~54_combout\,
	cout => \uut|ResetCnt[10]~55\);

-- Location: LCCOMB_X25_Y16_N14
\uut|Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector73~0_combout\ = (\uut|Add3~12_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~12_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector73~0_combout\);

-- Location: LCCOMB_X16_Y21_N4
\uut|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector46~0_combout\ = (((\uut|State.Init~regout\) # (!\uut|SlaveClkCounter[15]~0_combout\)) # (!\uut|WideOr1~1_combout\)) # (!\uut|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~0_combout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector46~0_combout\);

-- Location: LCCOMB_X19_Y20_N16
\uut|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|WideOr1~0_combout\ = (\uut|State.Reset~regout\ & !\uut|State.CheckMotionReg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Reset~regout\,
	datad => \uut|State.CheckMotionReg~regout\,
	combout => \uut|WideOr1~0_combout\);

-- Location: LCCOMB_X26_Y20_N30
\uut|Sel~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Sel~3_combout\ = (\uut|RegAndClockGen~12_combout\ & !\uut|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~12_combout\,
	datac => \uut|Equal3~1_combout\,
	combout => \uut|Sel~3_combout\);

-- Location: LCCOMB_X26_Y20_N24
\uut|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector8~0_combout\ = (\uut|Sel~2_combout\ & ((\uut|State.WaitForWriteDataX~regout\) # ((!\uut|Sel~3_combout\ & \uut|State.SetXReg~regout\)))) # (!\uut|Sel~2_combout\ & (!\uut|Sel~3_combout\ & (\uut|State.SetXReg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~2_combout\,
	datab => \uut|Sel~3_combout\,
	datac => \uut|State.SetXReg~regout\,
	datad => \uut|State.WaitForWriteDataX~regout\,
	combout => \uut|Selector8~0_combout\);

-- Location: LCFF_X26_Y20_N25
\uut|State.SetXReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector8~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.SetXReg~regout\);

-- Location: LCCOMB_X27_Y20_N6
\uut|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector10~0_combout\ = (\uut|Sel~0_combout\ & (\uut|State.WaitForReadDataX~regout\ & ((\uut|Sel~1_combout\)))) # (!\uut|Sel~0_combout\ & ((\uut|State.ReadXReg~regout\) # ((\uut|State.WaitForReadDataX~regout\ & \uut|Sel~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|State.WaitForReadDataX~regout\,
	datac => \uut|State.ReadXReg~regout\,
	datad => \uut|Sel~1_combout\,
	combout => \uut|Selector10~0_combout\);

-- Location: LCFF_X27_Y20_N7
\uut|State.ReadXReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector10~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.ReadXReg~regout\);

-- Location: LCCOMB_X27_Y20_N8
\uut|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector11~0_combout\ = (\uut|Sel~0_combout\ & ((\uut|State.ReadXReg~regout\) # ((!\uut|Sel~2_combout\ & \uut|State.WaitForWriteDataY~regout\)))) # (!\uut|Sel~0_combout\ & (!\uut|Sel~2_combout\ & (\uut|State.WaitForWriteDataY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|Sel~2_combout\,
	datac => \uut|State.WaitForWriteDataY~regout\,
	datad => \uut|State.ReadXReg~regout\,
	combout => \uut|Selector11~0_combout\);

-- Location: LCFF_X27_Y20_N9
\uut|State.WaitForWriteDataY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector11~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.WaitForWriteDataY~regout\);

-- Location: LCCOMB_X26_Y20_N2
\uut|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector12~0_combout\ = (\uut|Sel~2_combout\ & ((\uut|State.WaitForWriteDataY~regout\) # ((\uut|State.SetYReg~regout\ & !\uut|Sel~3_combout\)))) # (!\uut|Sel~2_combout\ & (((\uut|State.SetYReg~regout\ & !\uut|Sel~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~2_combout\,
	datab => \uut|State.WaitForWriteDataY~regout\,
	datac => \uut|State.SetYReg~regout\,
	datad => \uut|Sel~3_combout\,
	combout => \uut|Selector12~0_combout\);

-- Location: LCFF_X26_Y20_N3
\uut|State.SetYReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector12~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.SetYReg~regout\);

-- Location: LCCOMB_X26_Y20_N28
\uut|SysClkGenCounter[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[4]~1_combout\ = (!\uut|State.SetXReg~regout\ & !\uut|State.SetYReg~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|State.SetXReg~regout\,
	datad => \uut|State.SetYReg~regout\,
	combout => \uut|SysClkGenCounter[4]~1_combout\);

-- Location: LCCOMB_X26_Y20_N14
\uut|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector13~0_combout\ = (\uut|Sel~3_combout\ & ((\uut|State.SetYReg~regout\) # ((!\uut|Sel~1_combout\ & \uut|State.WaitForReadDataY~regout\)))) # (!\uut|Sel~3_combout\ & (!\uut|Sel~1_combout\ & (\uut|State.WaitForReadDataY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~3_combout\,
	datab => \uut|Sel~1_combout\,
	datac => \uut|State.WaitForReadDataY~regout\,
	datad => \uut|State.SetYReg~regout\,
	combout => \uut|Selector13~0_combout\);

-- Location: LCFF_X26_Y20_N15
\uut|State.WaitForReadDataY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector13~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.WaitForReadDataY~regout\);

-- Location: LCCOMB_X27_Y20_N0
\uut|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector14~0_combout\ = (\uut|Sel~0_combout\ & (\uut|Sel~1_combout\ & ((\uut|State.WaitForReadDataY~regout\)))) # (!\uut|Sel~0_combout\ & ((\uut|State.ReadYReg~regout\) # ((\uut|Sel~1_combout\ & \uut|State.WaitForReadDataY~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|Sel~1_combout\,
	datac => \uut|State.ReadYReg~regout\,
	datad => \uut|State.WaitForReadDataY~regout\,
	combout => \uut|Selector14~0_combout\);

-- Location: LCFF_X27_Y20_N1
\uut|State.ReadYReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector14~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.ReadYReg~regout\);

-- Location: LCCOMB_X27_Y20_N4
\uut|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector4~0_combout\ = (\uut|Sel~0_combout\ & (\uut|State.WaitForReadMotion~regout\ & ((\uut|Sel~1_combout\)))) # (!\uut|Sel~0_combout\ & ((\uut|State.ReadMotionReg~regout\) # ((\uut|State.WaitForReadMotion~regout\ & \uut|Sel~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|State.WaitForReadMotion~regout\,
	datac => \uut|State.ReadMotionReg~regout\,
	datad => \uut|Sel~1_combout\,
	combout => \uut|Selector4~0_combout\);

-- Location: LCFF_X27_Y20_N5
\uut|State.ReadMotionReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector4~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.ReadMotionReg~regout\);

-- Location: LCCOMB_X27_Y20_N10
\uut|Selector113~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector113~0_combout\ = (!\uut|State.ReadXReg~regout\ & (!\uut|State.ReadYReg~regout\ & (!\uut|State.ReadMotionReg~regout\ & !\uut|State.SetMotionReg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadXReg~regout\,
	datab => \uut|State.ReadYReg~regout\,
	datac => \uut|State.ReadMotionReg~regout\,
	datad => \uut|State.SetMotionReg~regout\,
	combout => \uut|Selector113~0_combout\);

-- Location: LCCOMB_X26_Y20_N0
\uut|Selector47~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector47~2_combout\ = (!\uut|Selector47~1_combout\ & ((\uut|SysClkGenCounter[4]~1_combout\) # ((!\uut|Sel~3_combout\ & \uut|Sel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector47~1_combout\,
	datab => \uut|Sel~3_combout\,
	datac => \uut|Sel~regout\,
	datad => \uut|SysClkGenCounter[4]~1_combout\,
	combout => \uut|Selector47~2_combout\);

-- Location: LCFF_X26_Y20_N1
\uut|Sel\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector47~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|Sel~regout\);

-- Location: LCCOMB_X29_Y21_N16
\uut|SysClkGenCounter[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[4]~3_combout\ = (\uut|Equal3~1_combout\ & (((!\uut|Selector113~0_combout\)) # (!\uut|SysClkGenCounter[4]~1_combout\))) # (!\uut|Equal3~1_combout\ & (!\uut|SysClkGenCounter[4]~2_combout\ & ((!\uut|Selector113~0_combout\) # 
-- (!\uut|SysClkGenCounter[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal3~1_combout\,
	datab => \uut|SysClkGenCounter[4]~1_combout\,
	datac => \uut|Selector113~0_combout\,
	datad => \uut|SysClkGenCounter[4]~2_combout\,
	combout => \uut|SysClkGenCounter[4]~3_combout\);

-- Location: LCCOMB_X19_Y20_N26
\uut|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|WideOr1~combout\ = (\uut|State.WaitForReadDataY~regout\) # ((\uut|State.WaitForReadDataX~regout\) # ((\uut|State.WaitForReadMotion~regout\) # (!\uut|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForReadDataY~regout\,
	datab => \uut|State.WaitForReadDataX~regout\,
	datac => \uut|WideOr1~0_combout\,
	datad => \uut|State.WaitForReadMotion~regout\,
	combout => \uut|WideOr1~combout\);

-- Location: LCCOMB_X29_Y20_N12
\uut|SysClkGenCounter[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[4]~4_combout\ = (\uut|Equal6~0_combout\ & ((\uut|SysClkGenCounter[4]~0_combout\) # ((\uut|SysClkGenCounter[4]~3_combout\) # (\uut|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~0_combout\,
	datab => \uut|Equal6~0_combout\,
	datac => \uut|SysClkGenCounter[4]~3_combout\,
	datad => \uut|WideOr1~combout\,
	combout => \uut|SysClkGenCounter[4]~4_combout\);

-- Location: LCCOMB_X26_Y20_N8
\uut|Selector111~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~1_combout\ = (\uut|SysClkGenCounter~6_combout\) # ((\uut|Sel~3_combout\) # ((!\uut|State.SetXReg~regout\ & !\uut|State.SetYReg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter~6_combout\,
	datab => \uut|Sel~3_combout\,
	datac => \uut|State.SetXReg~regout\,
	datad => \uut|State.SetYReg~regout\,
	combout => \uut|Selector111~1_combout\);

-- Location: LCCOMB_X29_Y21_N26
\uut|RegAndClockGen~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~9_combout\ = (\uut|RegAndClockGen~8_combout\ & (!\uut|SysClk~regout\ & (!\uut|SysClkGenCounter\(7) & \uut|SysClkGenCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~8_combout\,
	datab => \uut|SysClk~regout\,
	datac => \uut|SysClkGenCounter\(7),
	datad => \uut|SysClkGenCounter\(3),
	combout => \uut|RegAndClockGen~9_combout\);

-- Location: LCCOMB_X30_Y21_N24
\uut|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~24_combout\ = (\uut|SysClkGenCounter\(12) & (\uut|Add0~23\ $ (GND))) # (!\uut|SysClkGenCounter\(12) & (!\uut|Add0~23\ & VCC))
-- \uut|Add0~25\ = CARRY((\uut|SysClkGenCounter\(12) & !\uut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(12),
	datad => VCC,
	cin => \uut|Add0~23\,
	combout => \uut|Add0~24_combout\,
	cout => \uut|Add0~25\);

-- Location: LCCOMB_X31_Y21_N26
\uut|Selector99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector99~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~24_combout\,
	combout => \uut|Selector99~0_combout\);

-- Location: LCCOMB_X29_Y20_N22
\uut|SysClkGenCounter[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[4]~5_combout\ = (\uut|Sel~regout\) # ((!\uut|SysClkGenCounter[4]~0_combout\ & (!\uut|SysClkGenCounter[4]~3_combout\ & !\uut|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~0_combout\,
	datab => \uut|Sel~regout\,
	datac => \uut|SysClkGenCounter[4]~3_combout\,
	datad => \uut|WideOr1~combout\,
	combout => \uut|SysClkGenCounter[4]~5_combout\);

-- Location: LCFF_X31_Y21_N27
\uut|SysClkGenCounter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector99~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(12));

-- Location: LCCOMB_X31_Y21_N20
\uut|RegAndClockGen~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~5_combout\ = (!\uut|SysClkGenCounter\(15) & (!\uut|SysClkGenCounter\(14) & (!\uut|SysClkGenCounter\(13) & !\uut|SysClkGenCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(15),
	datab => \uut|SysClkGenCounter\(14),
	datac => \uut|SysClkGenCounter\(13),
	datad => \uut|SysClkGenCounter\(12),
	combout => \uut|RegAndClockGen~5_combout\);

-- Location: LCCOMB_X29_Y21_N20
\uut|RegAndClockGen~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~10_combout\ = (\uut|RegAndClockGen~7_combout\ & (\uut|RegAndClockGen~9_combout\ & (\uut|RegAndClockGen~4_combout\ & \uut|RegAndClockGen~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~7_combout\,
	datab => \uut|RegAndClockGen~9_combout\,
	datac => \uut|RegAndClockGen~4_combout\,
	datad => \uut|RegAndClockGen~5_combout\,
	combout => \uut|RegAndClockGen~10_combout\);

-- Location: LCCOMB_X30_Y21_N0
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

-- Location: LCCOMB_X29_Y21_N18
\uut|SysClkGenCounter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter~6_combout\ = (\uut|Sel~regout\ & ((\uut|Add0~0_combout\))) # (!\uut|Sel~regout\ & (!\uut|SysClkGenCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(0),
	datac => \uut|Add0~0_combout\,
	datad => \uut|Sel~regout\,
	combout => \uut|SysClkGenCounter~6_combout\);

-- Location: LCCOMB_X27_Y20_N20
\uut|Selector111~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~4_combout\ = ((\uut|RegAndClockGen~10_combout\ & !\uut|Equal3~1_combout\)) # (!\uut|SysClkGenCounter~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|RegAndClockGen~10_combout\,
	datac => \uut|Equal3~1_combout\,
	datad => \uut|SysClkGenCounter~6_combout\,
	combout => \uut|Selector111~4_combout\);

-- Location: LCCOMB_X27_Y20_N14
\uut|Selector111~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~5_combout\ = (\uut|Selector111~4_combout\ & ((\uut|State.ReadXReg~regout\) # ((\uut|State.ReadYReg~regout\) # (\uut|State.ReadMotionReg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadXReg~regout\,
	datab => \uut|State.ReadYReg~regout\,
	datac => \uut|State.ReadMotionReg~regout\,
	datad => \uut|Selector111~4_combout\,
	combout => \uut|Selector111~5_combout\);

-- Location: LCCOMB_X27_Y20_N16
\uut|Sel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Sel~0_combout\ = (\uut|RegAndClockGen~10_combout\ & !\uut|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|RegAndClockGen~10_combout\,
	datac => \uut|Equal3~1_combout\,
	combout => \uut|Sel~0_combout\);

-- Location: LCCOMB_X27_Y20_N26
\uut|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector6~0_combout\ = (\uut|Equal7~2_combout\ & (((\uut|Sel~0_combout\ & \uut|State.ReadYReg~regout\)))) # (!\uut|Equal7~2_combout\ & ((\uut|State.CheckMotionReg~regout\) # ((\uut|Sel~0_combout\ & \uut|State.ReadYReg~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal7~2_combout\,
	datab => \uut|State.CheckMotionReg~regout\,
	datac => \uut|Sel~0_combout\,
	datad => \uut|State.ReadYReg~regout\,
	combout => \uut|Selector6~0_combout\);

-- Location: LCCOMB_X27_Y17_N18
\uut|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector6~1_combout\ = (\uut|Selector6~0_combout\) # ((!\uut|Sel~2_combout\ & \uut|State.OutputAndWaitForWrite~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Sel~2_combout\,
	datac => \uut|State.OutputAndWaitForWrite~regout\,
	datad => \uut|Selector6~0_combout\,
	combout => \uut|Selector6~1_combout\);

-- Location: LCFF_X27_Y17_N19
\uut|State.OutputAndWaitForWrite\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector6~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.OutputAndWaitForWrite~regout\);

-- Location: LCCOMB_X26_Y20_N22
\uut|Selector111~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~0_combout\ = (\uut|SysClkGenCounter~6_combout\) # ((\uut|Sel~2_combout\) # ((!\uut|State.OutputAndWaitForWrite~regout\ & !\uut|State.WaitForWriteDataY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter~6_combout\,
	datab => \uut|State.OutputAndWaitForWrite~regout\,
	datac => \uut|State.WaitForWriteDataY~regout\,
	datad => \uut|Sel~2_combout\,
	combout => \uut|Selector111~0_combout\);

-- Location: LCCOMB_X26_Y20_N18
\uut|Selector111~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector111~6_combout\ = (((\uut|Selector111~5_combout\) # (!\uut|Selector111~0_combout\)) # (!\uut|Selector111~1_combout\)) # (!\uut|Selector111~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector111~3_combout\,
	datab => \uut|Selector111~1_combout\,
	datac => \uut|Selector111~5_combout\,
	datad => \uut|Selector111~0_combout\,
	combout => \uut|Selector111~6_combout\);

-- Location: LCFF_X26_Y20_N19
\uut|SysClkGenCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector111~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(0));

-- Location: LCCOMB_X30_Y21_N4
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

-- Location: LCCOMB_X31_Y20_N0
\uut|Selector109~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector109~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~4_combout\,
	combout => \uut|Selector109~0_combout\);

-- Location: LCFF_X31_Y20_N1
\uut|SysClkGenCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector109~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(2));

-- Location: LCCOMB_X30_Y21_N6
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

-- Location: LCCOMB_X29_Y21_N28
\uut|Selector108~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector108~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~6_combout\,
	combout => \uut|Selector108~0_combout\);

-- Location: LCFF_X29_Y21_N29
\uut|SysClkGenCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector108~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(3));

-- Location: LCCOMB_X30_Y21_N12
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

-- Location: LCCOMB_X31_Y20_N26
\uut|Selector105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector105~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datac => \uut|Add0~12_combout\,
	combout => \uut|Selector105~0_combout\);

-- Location: LCFF_X31_Y20_N27
\uut|SysClkGenCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector105~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(6));

-- Location: LCCOMB_X30_Y21_N14
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

-- Location: LCCOMB_X29_Y21_N24
\uut|Selector104~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector104~0_combout\ = (\uut|Add0~14_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~14_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector104~0_combout\);

-- Location: LCFF_X29_Y21_N25
\uut|SysClkGenCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector104~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(7));

-- Location: LCCOMB_X30_Y21_N16
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

-- Location: LCCOMB_X31_Y21_N12
\uut|Selector103~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector103~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~16_combout\,
	combout => \uut|Selector103~0_combout\);

-- Location: LCFF_X31_Y21_N13
\uut|SysClkGenCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector103~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(8));

-- Location: LCCOMB_X30_Y21_N18
\uut|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~18_combout\ = (\uut|SysClkGenCounter\(9) & (!\uut|Add0~17\)) # (!\uut|SysClkGenCounter\(9) & ((\uut|Add0~17\) # (GND)))
-- \uut|Add0~19\ = CARRY((!\uut|Add0~17\) # (!\uut|SysClkGenCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(9),
	datad => VCC,
	cin => \uut|Add0~17\,
	combout => \uut|Add0~18_combout\,
	cout => \uut|Add0~19\);

-- Location: LCCOMB_X31_Y21_N10
\uut|Selector102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector102~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~18_combout\,
	combout => \uut|Selector102~0_combout\);

-- Location: LCFF_X31_Y21_N11
\uut|SysClkGenCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector102~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(9));

-- Location: LCCOMB_X30_Y21_N20
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

-- Location: LCCOMB_X31_Y21_N0
\uut|Selector101~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector101~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[4]~4_combout\,
	datac => \uut|Add0~20_combout\,
	combout => \uut|Selector101~0_combout\);

-- Location: LCFF_X31_Y21_N1
\uut|SysClkGenCounter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector101~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(10));

-- Location: LCCOMB_X30_Y21_N22
\uut|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~22_combout\ = (\uut|SysClkGenCounter\(11) & (!\uut|Add0~21\)) # (!\uut|SysClkGenCounter\(11) & ((\uut|Add0~21\) # (GND)))
-- \uut|Add0~23\ = CARRY((!\uut|Add0~21\) # (!\uut|SysClkGenCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(11),
	datad => VCC,
	cin => \uut|Add0~21\,
	combout => \uut|Add0~22_combout\,
	cout => \uut|Add0~23\);

-- Location: LCCOMB_X31_Y21_N14
\uut|Selector100~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector100~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~22_combout\,
	combout => \uut|Selector100~0_combout\);

-- Location: LCFF_X31_Y21_N15
\uut|SysClkGenCounter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector100~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(11));

-- Location: LCCOMB_X30_Y21_N26
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

-- Location: LCCOMB_X31_Y21_N24
\uut|Selector98~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector98~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~26_combout\,
	combout => \uut|Selector98~0_combout\);

-- Location: LCFF_X31_Y21_N25
\uut|SysClkGenCounter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector98~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(13));

-- Location: LCCOMB_X30_Y21_N28
\uut|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~28_combout\ = (\uut|SysClkGenCounter\(14) & (\uut|Add0~27\ $ (GND))) # (!\uut|SysClkGenCounter\(14) & (!\uut|Add0~27\ & VCC))
-- \uut|Add0~29\ = CARRY((\uut|SysClkGenCounter\(14) & !\uut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(14),
	datad => VCC,
	cin => \uut|Add0~27\,
	combout => \uut|Add0~28_combout\,
	cout => \uut|Add0~29\);

-- Location: LCCOMB_X31_Y21_N30
\uut|Selector97~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector97~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~28_combout\,
	combout => \uut|Selector97~0_combout\);

-- Location: LCFF_X31_Y21_N31
\uut|SysClkGenCounter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector97~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(14));

-- Location: LCCOMB_X30_Y21_N30
\uut|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~30_combout\ = (\uut|SysClkGenCounter\(15) & (!\uut|Add0~29\)) # (!\uut|SysClkGenCounter\(15) & ((\uut|Add0~29\) # (GND)))
-- \uut|Add0~31\ = CARRY((!\uut|Add0~29\) # (!\uut|SysClkGenCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(15),
	datad => VCC,
	cin => \uut|Add0~29\,
	combout => \uut|Add0~30_combout\,
	cout => \uut|Add0~31\);

-- Location: LCCOMB_X31_Y21_N28
\uut|Selector96~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector96~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter[4]~4_combout\,
	datac => \uut|Add0~30_combout\,
	combout => \uut|Selector96~0_combout\);

-- Location: LCFF_X31_Y21_N29
\uut|SysClkGenCounter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector96~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(15));

-- Location: LCCOMB_X30_Y20_N0
\uut|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~32_combout\ = (\uut|SysClkGenCounter\(16) & (\uut|Add0~31\ $ (GND))) # (!\uut|SysClkGenCounter\(16) & (!\uut|Add0~31\ & VCC))
-- \uut|Add0~33\ = CARRY((\uut|SysClkGenCounter\(16) & !\uut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(16),
	datad => VCC,
	cin => \uut|Add0~31\,
	combout => \uut|Add0~32_combout\,
	cout => \uut|Add0~33\);

-- Location: LCCOMB_X30_Y20_N2
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

-- Location: LCCOMB_X29_Y20_N28
\uut|Selector94~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector94~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~34_combout\,
	combout => \uut|Selector94~0_combout\);

-- Location: LCFF_X29_Y20_N29
\uut|SysClkGenCounter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector94~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(17));

-- Location: LCCOMB_X30_Y20_N4
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

-- Location: LCCOMB_X29_Y20_N18
\uut|Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector93~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~36_combout\,
	combout => \uut|Selector93~0_combout\);

-- Location: LCFF_X29_Y20_N19
\uut|SysClkGenCounter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector93~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(18));

-- Location: LCCOMB_X30_Y20_N6
\uut|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~38_combout\ = (\uut|SysClkGenCounter\(19) & (!\uut|Add0~37\)) # (!\uut|SysClkGenCounter\(19) & ((\uut|Add0~37\) # (GND)))
-- \uut|Add0~39\ = CARRY((!\uut|Add0~37\) # (!\uut|SysClkGenCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(19),
	datad => VCC,
	cin => \uut|Add0~37\,
	combout => \uut|Add0~38_combout\,
	cout => \uut|Add0~39\);

-- Location: LCCOMB_X30_Y20_N8
\uut|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~40_combout\ = (\uut|SysClkGenCounter\(20) & (\uut|Add0~39\ $ (GND))) # (!\uut|SysClkGenCounter\(20) & (!\uut|Add0~39\ & VCC))
-- \uut|Add0~41\ = CARRY((\uut|SysClkGenCounter\(20) & !\uut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(20),
	datad => VCC,
	cin => \uut|Add0~39\,
	combout => \uut|Add0~40_combout\,
	cout => \uut|Add0~41\);

-- Location: LCCOMB_X29_Y20_N4
\uut|Selector91~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector91~0_combout\ = (\uut|Add0~40_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~40_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector91~0_combout\);

-- Location: LCFF_X29_Y20_N5
\uut|SysClkGenCounter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector91~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(20));

-- Location: LCCOMB_X30_Y20_N10
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

-- Location: LCCOMB_X29_Y20_N26
\uut|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector90~0_combout\ = (\uut|Add0~42_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~42_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector90~0_combout\);

-- Location: LCFF_X29_Y20_N27
\uut|SysClkGenCounter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector90~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(21));

-- Location: LCCOMB_X30_Y20_N12
\uut|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~44_combout\ = (\uut|SysClkGenCounter\(22) & (\uut|Add0~43\ $ (GND))) # (!\uut|SysClkGenCounter\(22) & (!\uut|Add0~43\ & VCC))
-- \uut|Add0~45\ = CARRY((\uut|SysClkGenCounter\(22) & !\uut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(22),
	datad => VCC,
	cin => \uut|Add0~43\,
	combout => \uut|Add0~44_combout\,
	cout => \uut|Add0~45\);

-- Location: LCCOMB_X29_Y20_N8
\uut|Selector89~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector89~0_combout\ = (\uut|Add0~44_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~44_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector89~0_combout\);

-- Location: LCFF_X29_Y20_N9
\uut|SysClkGenCounter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector89~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(22));

-- Location: LCCOMB_X29_Y20_N14
\uut|RegAndClockGen~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~2_combout\ = (!\uut|SysClkGenCounter\(23) & (!\uut|SysClkGenCounter\(22) & (!\uut|SysClkGenCounter\(20) & !\uut|SysClkGenCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(23),
	datab => \uut|SysClkGenCounter\(22),
	datac => \uut|SysClkGenCounter\(20),
	datad => \uut|SysClkGenCounter\(21),
	combout => \uut|RegAndClockGen~2_combout\);

-- Location: LCCOMB_X29_Y20_N16
\uut|Selector92~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector92~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~38_combout\,
	combout => \uut|Selector92~0_combout\);

-- Location: LCFF_X29_Y20_N17
\uut|SysClkGenCounter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector92~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(19));

-- Location: LCCOMB_X29_Y20_N30
\uut|Selector95~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector95~0_combout\ = (\uut|Add0~32_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~32_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector95~0_combout\);

-- Location: LCFF_X29_Y20_N31
\uut|SysClkGenCounter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector95~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(16));

-- Location: LCCOMB_X29_Y20_N24
\uut|RegAndClockGen~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~3_combout\ = (!\uut|SysClkGenCounter\(17) & (!\uut|SysClkGenCounter\(18) & (!\uut|SysClkGenCounter\(19) & !\uut|SysClkGenCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(17),
	datab => \uut|SysClkGenCounter\(18),
	datac => \uut|SysClkGenCounter\(19),
	datad => \uut|SysClkGenCounter\(16),
	combout => \uut|RegAndClockGen~3_combout\);

-- Location: LCCOMB_X30_Y20_N14
\uut|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~46_combout\ = (\uut|SysClkGenCounter\(23) & (!\uut|Add0~45\)) # (!\uut|SysClkGenCounter\(23) & ((\uut|Add0~45\) # (GND)))
-- \uut|Add0~47\ = CARRY((!\uut|Add0~45\) # (!\uut|SysClkGenCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(23),
	datad => VCC,
	cin => \uut|Add0~45\,
	combout => \uut|Add0~46_combout\,
	cout => \uut|Add0~47\);

-- Location: LCCOMB_X29_Y20_N6
\uut|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector88~0_combout\ = (\uut|Add0~46_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~46_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector88~0_combout\);

-- Location: LCFF_X29_Y20_N7
\uut|SysClkGenCounter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector88~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(23));

-- Location: LCCOMB_X30_Y20_N22
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

-- Location: LCCOMB_X31_Y21_N16
\uut|Selector84~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector84~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~54_combout\,
	combout => \uut|Selector84~0_combout\);

-- Location: LCFF_X31_Y21_N17
\uut|SysClkGenCounter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector84~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(27));

-- Location: LCCOMB_X30_Y20_N24
\uut|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~56_combout\ = (\uut|SysClkGenCounter\(28) & (\uut|Add0~55\ $ (GND))) # (!\uut|SysClkGenCounter\(28) & (!\uut|Add0~55\ & VCC))
-- \uut|Add0~57\ = CARRY((\uut|SysClkGenCounter\(28) & !\uut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(28),
	datad => VCC,
	cin => \uut|Add0~55\,
	combout => \uut|Add0~56_combout\,
	cout => \uut|Add0~57\);

-- Location: LCCOMB_X31_Y20_N30
\uut|Selector83~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector83~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~56_combout\,
	combout => \uut|Selector83~0_combout\);

-- Location: LCFF_X31_Y20_N31
\uut|SysClkGenCounter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector83~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(28));

-- Location: LCCOMB_X30_Y20_N26
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

-- Location: LCCOMB_X31_Y20_N28
\uut|Selector82~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector82~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~58_combout\,
	combout => \uut|Selector82~0_combout\);

-- Location: LCFF_X31_Y20_N29
\uut|SysClkGenCounter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector82~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(29));

-- Location: LCCOMB_X30_Y20_N28
\uut|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add0~60_combout\ = (\uut|SysClkGenCounter\(30) & (\uut|Add0~59\ $ (GND))) # (!\uut|SysClkGenCounter\(30) & (!\uut|Add0~59\ & VCC))
-- \uut|Add0~61\ = CARRY((\uut|SysClkGenCounter\(30) & !\uut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SysClkGenCounter\(30),
	datad => VCC,
	cin => \uut|Add0~59\,
	combout => \uut|Add0~60_combout\,
	cout => \uut|Add0~61\);

-- Location: LCCOMB_X31_Y20_N10
\uut|Selector81~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector81~0_combout\ = (\uut|SysClkGenCounter[4]~4_combout\ & \uut|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~4_combout\,
	datad => \uut|Add0~60_combout\,
	combout => \uut|Selector81~0_combout\);

-- Location: LCFF_X31_Y20_N11
\uut|SysClkGenCounter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector81~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(30));

-- Location: LCCOMB_X30_Y20_N30
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

-- Location: LCCOMB_X31_Y20_N24
\uut|Selector80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector80~0_combout\ = (\uut|Add0~62_combout\ & \uut|SysClkGenCounter[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|Add0~62_combout\,
	datad => \uut|SysClkGenCounter[4]~4_combout\,
	combout => \uut|Selector80~0_combout\);

-- Location: LCFF_X31_Y20_N25
\uut|SysClkGenCounter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector80~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SysClkGenCounter[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClkGenCounter\(31));

-- Location: LCCOMB_X31_Y20_N16
\uut|RegAndClockGen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~0_combout\ = (!\uut|SysClkGenCounter\(30) & (!\uut|SysClkGenCounter\(29) & (!\uut|SysClkGenCounter\(31) & !\uut|SysClkGenCounter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(30),
	datab => \uut|SysClkGenCounter\(29),
	datac => \uut|SysClkGenCounter\(31),
	datad => \uut|SysClkGenCounter\(28),
	combout => \uut|RegAndClockGen~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\uut|RegAndClockGen~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~4_combout\ = (\uut|RegAndClockGen~1_combout\ & (\uut|RegAndClockGen~2_combout\ & (\uut|RegAndClockGen~3_combout\ & \uut|RegAndClockGen~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~1_combout\,
	datab => \uut|RegAndClockGen~2_combout\,
	datac => \uut|RegAndClockGen~3_combout\,
	datad => \uut|RegAndClockGen~0_combout\,
	combout => \uut|RegAndClockGen~4_combout\);

-- Location: LCCOMB_X31_Y21_N22
\uut|RegAndClockGen~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~8_combout\ = (!\uut|SysClkGenCounter\(9) & (!\uut|SysClkGenCounter\(10) & (!\uut|SysClkGenCounter\(11) & !\uut|SysClkGenCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter\(9),
	datab => \uut|SysClkGenCounter\(10),
	datac => \uut|SysClkGenCounter\(11),
	datad => \uut|SysClkGenCounter\(8),
	combout => \uut|RegAndClockGen~8_combout\);

-- Location: LCCOMB_X29_Y21_N2
\uut|RegAndClockGen~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~16_combout\ = (\uut|RegAndClockGen~7_combout\ & (\uut|RegAndClockGen~4_combout\ & (\uut|RegAndClockGen~8_combout\ & \uut|RegAndClockGen~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~7_combout\,
	datab => \uut|RegAndClockGen~4_combout\,
	datac => \uut|RegAndClockGen~8_combout\,
	datad => \uut|RegAndClockGen~5_combout\,
	combout => \uut|RegAndClockGen~16_combout\);

-- Location: LCCOMB_X29_Y21_N12
\uut|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal6~0_combout\ = ((\uut|SysClkGenCounter\(3)) # (!\uut|SysClkGenCounter\(7))) # (!\uut|RegAndClockGen~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|RegAndClockGen~16_combout\,
	datac => \uut|SysClkGenCounter\(7),
	datad => \uut|SysClkGenCounter\(3),
	combout => \uut|Equal6~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\uut|Selector113~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector113~2_combout\ = (!\uut|Selector113~1_combout\ & (\uut|SysClk~regout\ $ (((\uut|Sel~regout\ & !\uut|Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector113~1_combout\,
	datab => \uut|Sel~regout\,
	datac => \uut|SysClk~regout\,
	datad => \uut|Equal6~0_combout\,
	combout => \uut|Selector113~2_combout\);

-- Location: LCFF_X29_Y21_N31
\uut|SysClk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector113~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SysClk~regout\);

-- Location: LCCOMB_X29_Y21_N22
\uut|RegAndClockGen~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~11_combout\ = (\uut|RegAndClockGen~8_combout\ & (!\uut|SysClk~regout\ & (\uut|SysClkGenCounter\(7) & !\uut|SysClkGenCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~8_combout\,
	datab => \uut|SysClk~regout\,
	datac => \uut|SysClkGenCounter\(7),
	datad => \uut|SysClkGenCounter\(3),
	combout => \uut|RegAndClockGen~11_combout\);

-- Location: LCCOMB_X29_Y21_N8
\uut|RegAndClockGen~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~12_combout\ = (\uut|RegAndClockGen~7_combout\ & (\uut|RegAndClockGen~11_combout\ & (\uut|RegAndClockGen~4_combout\ & \uut|RegAndClockGen~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~7_combout\,
	datab => \uut|RegAndClockGen~11_combout\,
	datac => \uut|RegAndClockGen~4_combout\,
	datad => \uut|RegAndClockGen~5_combout\,
	combout => \uut|RegAndClockGen~12_combout\);

-- Location: LCCOMB_X29_Y21_N6
\uut|SysClkGenCounter[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[4]~2_combout\ = (\uut|RegAndClockGen~10_combout\ & (((\uut|RegAndClockGen~12_combout\ & !\uut|SysClkGenCounter[4]~1_combout\)) # (!\uut|Selector113~0_combout\))) # (!\uut|RegAndClockGen~10_combout\ & 
-- (((\uut|RegAndClockGen~12_combout\ & !\uut|SysClkGenCounter[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~10_combout\,
	datab => \uut|Selector113~0_combout\,
	datac => \uut|RegAndClockGen~12_combout\,
	datad => \uut|SysClkGenCounter[4]~1_combout\,
	combout => \uut|SysClkGenCounter[4]~2_combout\);

-- Location: LCCOMB_X29_Y21_N4
\uut|SlaveClkCounter[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[15]~1_combout\ = (\uut|Equal3~1_combout\ & (!\uut|SysClkGenCounter[4]~2_combout\ & ((!\uut|Selector113~0_combout\) # (!\uut|SysClkGenCounter[4]~1_combout\)))) # (!\uut|Equal3~1_combout\ & (((!\uut|Selector113~0_combout\)) # 
-- (!\uut|SysClkGenCounter[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal3~1_combout\,
	datab => \uut|SysClkGenCounter[4]~1_combout\,
	datac => \uut|Selector113~0_combout\,
	datad => \uut|SysClkGenCounter[4]~2_combout\,
	combout => \uut|SlaveClkCounter[15]~1_combout\);

-- Location: LCCOMB_X19_Y20_N4
\uut|SlaveClkCounter[15]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[15]~3_combout\ = (\uut|WideOr1~0_combout\ & (!\uut|SlaveClkCounter[15]~1_combout\ & ((\uut|Selector1~0_combout\) # (\uut|WideOr0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector1~0_combout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|WideOr1~0_combout\,
	datad => \uut|SlaveClkCounter[15]~1_combout\,
	combout => \uut|SlaveClkCounter[15]~3_combout\);

-- Location: LCFF_X16_Y21_N5
\uut|SlaveClkCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector46~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(0));

-- Location: LCCOMB_X16_Y21_N18
\uut|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector45~0_combout\ = (((\uut|State.Init~regout\) # (!\uut|SlaveClkCounter[15]~0_combout\)) # (!\uut|WideOr1~1_combout\)) # (!\uut|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~2_combout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector45~0_combout\);

-- Location: LCFF_X16_Y21_N19
\uut|SlaveClkCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector45~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(1));

-- Location: LCCOMB_X16_Y21_N22
\uut|MotionReg[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[0]~2_combout\ = (\uut|SlaveClkCounter\(2) & (\uut|SlaveClkCounter\(0) & \uut|SlaveClkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(2),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|MotionReg[0]~2_combout\);

-- Location: LCCOMB_X16_Y20_N2
\uut|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector24~0_combout\ = (\uut|Add2~44_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~44_combout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector24~0_combout\);

-- Location: LCFF_X16_Y20_N3
\uut|SlaveClkCounter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector24~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(22));

-- Location: LCCOMB_X16_Y20_N14
\uut|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector26~0_combout\ = (\uut|Add2~40_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~40_combout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector26~0_combout\);

-- Location: LCFF_X16_Y20_N15
\uut|SlaveClkCounter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector26~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(20));

-- Location: LCCOMB_X19_Y20_N0
\uut|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector35~0_combout\ = (\uut|Add2~22_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~22_combout\,
	datab => \uut|WideOr0~4_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector35~0_combout\);

-- Location: LCFF_X19_Y20_N1
\uut|SlaveClkCounter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector35~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(11));

-- Location: LCCOMB_X16_Y21_N14
\uut|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector39~0_combout\ = (\uut|Add2~14_combout\ & (\uut|WideOr1~1_combout\ & (\uut|SlaveClkCounter[15]~0_combout\ & !\uut|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~14_combout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector39~0_combout\);

-- Location: LCFF_X16_Y21_N15
\uut|SlaveClkCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector39~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(7));

-- Location: LCCOMB_X16_Y21_N10
\uut|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector40~0_combout\ = (\uut|Add2~12_combout\ & (\uut|WideOr1~1_combout\ & (\uut|SlaveClkCounter[15]~0_combout\ & !\uut|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~12_combout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector40~0_combout\);

-- Location: LCFF_X16_Y21_N11
\uut|SlaveClkCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector40~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(6));

-- Location: LCCOMB_X16_Y21_N20
\uut|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector41~0_combout\ = (\uut|Add2~10_combout\ & (\uut|WideOr1~1_combout\ & (\uut|SlaveClkCounter[15]~0_combout\ & !\uut|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~10_combout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector41~0_combout\);

-- Location: LCFF_X16_Y21_N21
\uut|SlaveClkCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector41~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(5));

-- Location: LCCOMB_X16_Y21_N30
\uut|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector42~0_combout\ = (\uut|Add2~8_combout\ & (\uut|WideOr1~1_combout\ & (\uut|SlaveClkCounter[15]~0_combout\ & !\uut|State.Init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~8_combout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector42~0_combout\);

-- Location: LCFF_X16_Y21_N31
\uut|SlaveClkCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector42~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(4));

-- Location: LCCOMB_X15_Y21_N0
\uut|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~0_combout\ = \uut|SlaveClkCounter\(0) $ (GND)
-- \uut|Add2~1\ = CARRY(!\uut|SlaveClkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(0),
	datad => VCC,
	combout => \uut|Add2~0_combout\,
	cout => \uut|Add2~1\);

-- Location: LCCOMB_X15_Y21_N2
\uut|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~2_combout\ = (\uut|SlaveClkCounter\(1) & (!\uut|Add2~1\)) # (!\uut|SlaveClkCounter\(1) & (\uut|Add2~1\ & VCC))
-- \uut|Add2~3\ = CARRY((\uut|SlaveClkCounter\(1) & !\uut|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(1),
	datad => VCC,
	cin => \uut|Add2~1\,
	combout => \uut|Add2~2_combout\,
	cout => \uut|Add2~3\);

-- Location: LCCOMB_X15_Y21_N4
\uut|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~4_combout\ = (\uut|SlaveClkCounter\(2) & (\uut|Add2~3\ $ (GND))) # (!\uut|SlaveClkCounter\(2) & ((GND) # (!\uut|Add2~3\)))
-- \uut|Add2~5\ = CARRY((!\uut|Add2~3\) # (!\uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(2),
	datad => VCC,
	cin => \uut|Add2~3\,
	combout => \uut|Add2~4_combout\,
	cout => \uut|Add2~5\);

-- Location: LCCOMB_X15_Y21_N6
\uut|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~6_combout\ = (\uut|SlaveClkCounter\(3) & (\uut|Add2~5\ & VCC)) # (!\uut|SlaveClkCounter\(3) & (!\uut|Add2~5\))
-- \uut|Add2~7\ = CARRY((!\uut|SlaveClkCounter\(3) & !\uut|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(3),
	datad => VCC,
	cin => \uut|Add2~5\,
	combout => \uut|Add2~6_combout\,
	cout => \uut|Add2~7\);

-- Location: LCCOMB_X16_Y21_N8
\uut|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector43~0_combout\ = (\uut|State.Init~regout\) # (((\uut|Add2~6_combout\) # (!\uut|WideOr1~1_combout\)) # (!\uut|SlaveClkCounter[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|SlaveClkCounter[15]~0_combout\,
	datac => \uut|WideOr1~1_combout\,
	datad => \uut|Add2~6_combout\,
	combout => \uut|Selector43~0_combout\);

-- Location: LCFF_X16_Y21_N9
\uut|SlaveClkCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector43~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(3));

-- Location: LCCOMB_X15_Y21_N16
\uut|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~16_combout\ = (\uut|SlaveClkCounter\(8) & ((GND) # (!\uut|Add2~15\))) # (!\uut|SlaveClkCounter\(8) & (\uut|Add2~15\ $ (GND)))
-- \uut|Add2~17\ = CARRY((\uut|SlaveClkCounter\(8)) # (!\uut|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(8),
	datad => VCC,
	cin => \uut|Add2~15\,
	combout => \uut|Add2~16_combout\,
	cout => \uut|Add2~17\);

-- Location: LCCOMB_X16_Y21_N28
\uut|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector38~0_combout\ = (!\uut|State.Init~regout\ & (\uut|SlaveClkCounter[15]~0_combout\ & (\uut|WideOr1~1_combout\ & \uut|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|SlaveClkCounter[15]~0_combout\,
	datac => \uut|WideOr1~1_combout\,
	datad => \uut|Add2~16_combout\,
	combout => \uut|Selector38~0_combout\);

-- Location: LCFF_X16_Y21_N29
\uut|SlaveClkCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector38~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(8));

-- Location: LCCOMB_X15_Y21_N20
\uut|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~20_combout\ = (\uut|SlaveClkCounter\(10) & ((GND) # (!\uut|Add2~19\))) # (!\uut|SlaveClkCounter\(10) & (\uut|Add2~19\ $ (GND)))
-- \uut|Add2~21\ = CARRY((\uut|SlaveClkCounter\(10)) # (!\uut|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(10),
	datad => VCC,
	cin => \uut|Add2~19\,
	combout => \uut|Add2~20_combout\,
	cout => \uut|Add2~21\);

-- Location: LCCOMB_X16_Y21_N0
\uut|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector36~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~20_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~20_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector36~0_combout\);

-- Location: LCFF_X16_Y21_N1
\uut|SlaveClkCounter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector36~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(10));

-- Location: LCCOMB_X15_Y21_N24
\uut|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~24_combout\ = (\uut|SlaveClkCounter\(12) & ((GND) # (!\uut|Add2~23\))) # (!\uut|SlaveClkCounter\(12) & (\uut|Add2~23\ $ (GND)))
-- \uut|Add2~25\ = CARRY((\uut|SlaveClkCounter\(12)) # (!\uut|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(12),
	datad => VCC,
	cin => \uut|Add2~23\,
	combout => \uut|Add2~24_combout\,
	cout => \uut|Add2~25\);

-- Location: LCCOMB_X19_Y20_N14
\uut|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector34~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~24_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~24_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector34~0_combout\);

-- Location: LCFF_X19_Y20_N15
\uut|SlaveClkCounter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector34~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(12));

-- Location: LCCOMB_X15_Y21_N26
\uut|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~26_combout\ = (\uut|SlaveClkCounter\(13) & (\uut|Add2~25\ & VCC)) # (!\uut|SlaveClkCounter\(13) & (!\uut|Add2~25\))
-- \uut|Add2~27\ = CARRY((!\uut|SlaveClkCounter\(13) & !\uut|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(13),
	datad => VCC,
	cin => \uut|Add2~25\,
	combout => \uut|Add2~26_combout\,
	cout => \uut|Add2~27\);

-- Location: LCCOMB_X19_Y20_N20
\uut|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector33~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~26_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~26_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector33~0_combout\);

-- Location: LCFF_X19_Y20_N21
\uut|SlaveClkCounter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector33~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(13));

-- Location: LCCOMB_X15_Y21_N30
\uut|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~30_combout\ = (\uut|SlaveClkCounter\(15) & (\uut|Add2~29\ & VCC)) # (!\uut|SlaveClkCounter\(15) & (!\uut|Add2~29\))
-- \uut|Add2~31\ = CARRY((!\uut|SlaveClkCounter\(15) & !\uut|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(15),
	datad => VCC,
	cin => \uut|Add2~29\,
	combout => \uut|Add2~30_combout\,
	cout => \uut|Add2~31\);

-- Location: LCCOMB_X16_Y20_N10
\uut|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector31~0_combout\ = (!\uut|State.Init~regout\ & (\uut|WideOr0~4_combout\ & \uut|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|WideOr0~4_combout\,
	datad => \uut|Add2~30_combout\,
	combout => \uut|Selector31~0_combout\);

-- Location: LCFF_X16_Y20_N11
\uut|SlaveClkCounter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector31~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(15));

-- Location: LCCOMB_X15_Y20_N0
\uut|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~32_combout\ = (\uut|SlaveClkCounter\(16) & ((GND) # (!\uut|Add2~31\))) # (!\uut|SlaveClkCounter\(16) & (\uut|Add2~31\ $ (GND)))
-- \uut|Add2~33\ = CARRY((\uut|SlaveClkCounter\(16)) # (!\uut|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(16),
	datad => VCC,
	cin => \uut|Add2~31\,
	combout => \uut|Add2~32_combout\,
	cout => \uut|Add2~33\);

-- Location: LCCOMB_X16_Y20_N24
\uut|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector30~0_combout\ = (!\uut|State.Init~regout\ & (\uut|WideOr0~4_combout\ & \uut|Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~32_combout\,
	combout => \uut|Selector30~0_combout\);

-- Location: LCFF_X16_Y20_N25
\uut|SlaveClkCounter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector30~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(16));

-- Location: LCCOMB_X15_Y20_N2
\uut|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~34_combout\ = (\uut|SlaveClkCounter\(17) & (\uut|Add2~33\ & VCC)) # (!\uut|SlaveClkCounter\(17) & (!\uut|Add2~33\))
-- \uut|Add2~35\ = CARRY((!\uut|SlaveClkCounter\(17) & !\uut|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(17),
	datad => VCC,
	cin => \uut|Add2~33\,
	combout => \uut|Add2~34_combout\,
	cout => \uut|Add2~35\);

-- Location: LCCOMB_X16_Y20_N30
\uut|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector29~0_combout\ = (\uut|WideOr0~4_combout\ & (!\uut|State.Init~regout\ & \uut|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|Add2~34_combout\,
	combout => \uut|Selector29~0_combout\);

-- Location: LCFF_X16_Y20_N31
\uut|SlaveClkCounter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector29~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(17));

-- Location: LCCOMB_X15_Y20_N4
\uut|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~36_combout\ = (\uut|SlaveClkCounter\(18) & ((GND) # (!\uut|Add2~35\))) # (!\uut|SlaveClkCounter\(18) & (\uut|Add2~35\ $ (GND)))
-- \uut|Add2~37\ = CARRY((\uut|SlaveClkCounter\(18)) # (!\uut|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(18),
	datad => VCC,
	cin => \uut|Add2~35\,
	combout => \uut|Add2~36_combout\,
	cout => \uut|Add2~37\);

-- Location: LCCOMB_X16_Y20_N20
\uut|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector28~0_combout\ = (!\uut|State.Init~regout\ & (\uut|WideOr0~4_combout\ & \uut|Add2~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~36_combout\,
	combout => \uut|Selector28~0_combout\);

-- Location: LCFF_X16_Y20_N21
\uut|SlaveClkCounter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector28~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(18));

-- Location: LCCOMB_X15_Y20_N6
\uut|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~38_combout\ = (\uut|SlaveClkCounter\(19) & (\uut|Add2~37\ & VCC)) # (!\uut|SlaveClkCounter\(19) & (!\uut|Add2~37\))
-- \uut|Add2~39\ = CARRY((!\uut|SlaveClkCounter\(19) & !\uut|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(19),
	datad => VCC,
	cin => \uut|Add2~37\,
	combout => \uut|Add2~38_combout\,
	cout => \uut|Add2~39\);

-- Location: LCCOMB_X16_Y20_N0
\uut|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector27~0_combout\ = (!\uut|State.Init~regout\ & (\uut|WideOr0~4_combout\ & \uut|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~38_combout\,
	combout => \uut|Selector27~0_combout\);

-- Location: LCFF_X16_Y20_N1
\uut|SlaveClkCounter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector27~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(19));

-- Location: LCCOMB_X16_Y20_N26
\uut|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~2_combout\ = (!\uut|SlaveClkCounter\(21) & (!\uut|SlaveClkCounter\(22) & (!\uut|SlaveClkCounter\(20) & !\uut|SlaveClkCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(21),
	datab => \uut|SlaveClkCounter\(22),
	datac => \uut|SlaveClkCounter\(20),
	datad => \uut|SlaveClkCounter\(19),
	combout => \uut|LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y20_N4
\uut|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~3_combout\ = (!\uut|SlaveClkCounter\(16) & (!\uut|SlaveClkCounter\(17) & (!\uut|SlaveClkCounter\(18) & !\uut|SlaveClkCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(16),
	datab => \uut|SlaveClkCounter\(17),
	datac => \uut|SlaveClkCounter\(18),
	datad => \uut|SlaveClkCounter\(15),
	combout => \uut|LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y20_N28
\uut|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector25~0_combout\ = (\uut|Add2~42_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~42_combout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector25~0_combout\);

-- Location: LCFF_X16_Y20_N29
\uut|SlaveClkCounter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector25~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(21));

-- Location: LCCOMB_X15_Y20_N16
\uut|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~48_combout\ = (\uut|SlaveClkCounter\(24) & ((GND) # (!\uut|Add2~47\))) # (!\uut|SlaveClkCounter\(24) & (\uut|Add2~47\ $ (GND)))
-- \uut|Add2~49\ = CARRY((\uut|SlaveClkCounter\(24)) # (!\uut|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(24),
	datad => VCC,
	cin => \uut|Add2~47\,
	combout => \uut|Add2~48_combout\,
	cout => \uut|Add2~49\);

-- Location: LCCOMB_X16_Y20_N12
\uut|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector22~0_combout\ = (!\uut|State.Init~regout\ & (\uut|Add2~48_combout\ & \uut|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|Add2~48_combout\,
	datac => \uut|WideOr0~4_combout\,
	combout => \uut|Selector22~0_combout\);

-- Location: LCFF_X16_Y20_N13
\uut|SlaveClkCounter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector22~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(24));

-- Location: LCCOMB_X15_Y20_N18
\uut|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~50_combout\ = (\uut|SlaveClkCounter\(25) & (\uut|Add2~49\ & VCC)) # (!\uut|SlaveClkCounter\(25) & (!\uut|Add2~49\))
-- \uut|Add2~51\ = CARRY((!\uut|SlaveClkCounter\(25) & !\uut|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(25),
	datad => VCC,
	cin => \uut|Add2~49\,
	combout => \uut|Add2~50_combout\,
	cout => \uut|Add2~51\);

-- Location: LCCOMB_X16_Y20_N18
\uut|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector21~0_combout\ = (!\uut|State.Init~regout\ & (\uut|Add2~50_combout\ & \uut|WideOr0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|Add2~50_combout\,
	datac => \uut|WideOr0~4_combout\,
	combout => \uut|Selector21~0_combout\);

-- Location: LCFF_X16_Y20_N19
\uut|SlaveClkCounter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector21~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(25));

-- Location: LCCOMB_X15_Y20_N22
\uut|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~54_combout\ = (\uut|SlaveClkCounter\(27) & (\uut|Add2~53\ & VCC)) # (!\uut|SlaveClkCounter\(27) & (!\uut|Add2~53\))
-- \uut|Add2~55\ = CARRY((!\uut|SlaveClkCounter\(27) & !\uut|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(27),
	datad => VCC,
	cin => \uut|Add2~53\,
	combout => \uut|Add2~54_combout\,
	cout => \uut|Add2~55\);

-- Location: LCCOMB_X15_Y20_N24
\uut|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~56_combout\ = (\uut|SlaveClkCounter\(28) & ((GND) # (!\uut|Add2~55\))) # (!\uut|SlaveClkCounter\(28) & (\uut|Add2~55\ $ (GND)))
-- \uut|Add2~57\ = CARRY((\uut|SlaveClkCounter\(28)) # (!\uut|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(28),
	datad => VCC,
	cin => \uut|Add2~55\,
	combout => \uut|Add2~56_combout\,
	cout => \uut|Add2~57\);

-- Location: LCCOMB_X19_Y20_N12
\uut|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector18~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~56_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~56_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector18~0_combout\);

-- Location: LCFF_X19_Y20_N13
\uut|SlaveClkCounter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector18~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(28));

-- Location: LCCOMB_X15_Y20_N26
\uut|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add2~58_combout\ = (\uut|SlaveClkCounter\(29) & (\uut|Add2~57\ & VCC)) # (!\uut|SlaveClkCounter\(29) & (!\uut|Add2~57\))
-- \uut|Add2~59\ = CARRY((!\uut|SlaveClkCounter\(29) & !\uut|Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(29),
	datad => VCC,
	cin => \uut|Add2~57\,
	combout => \uut|Add2~58_combout\,
	cout => \uut|Add2~59\);

-- Location: LCCOMB_X19_Y20_N18
\uut|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector17~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~58_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~58_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector17~0_combout\);

-- Location: LCFF_X19_Y20_N19
\uut|SlaveClkCounter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector17~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(29));

-- Location: LCCOMB_X19_Y20_N24
\uut|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector16~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~60_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~60_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector16~0_combout\);

-- Location: LCFF_X19_Y20_N25
\uut|SlaveClkCounter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector16~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(30));

-- Location: LCCOMB_X19_Y20_N6
\uut|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector19~0_combout\ = (\uut|WideOr0~4_combout\ & (\uut|Add2~54_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Add2~54_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector19~0_combout\);

-- Location: LCFF_X19_Y20_N7
\uut|SlaveClkCounter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector19~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(27));

-- Location: LCCOMB_X19_Y20_N8
\uut|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~0_combout\ = (!\uut|SlaveClkCounter\(28) & (!\uut|SlaveClkCounter\(29) & (!\uut|SlaveClkCounter\(30) & !\uut|SlaveClkCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(28),
	datab => \uut|SlaveClkCounter\(29),
	datac => \uut|SlaveClkCounter\(30),
	datad => \uut|SlaveClkCounter\(27),
	combout => \uut|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y20_N22
\uut|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~4_combout\ = (\uut|LessThan0~1_combout\ & (\uut|LessThan0~2_combout\ & (\uut|LessThan0~3_combout\ & \uut|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|LessThan0~1_combout\,
	datab => \uut|LessThan0~2_combout\,
	datac => \uut|LessThan0~3_combout\,
	datad => \uut|LessThan0~0_combout\,
	combout => \uut|LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y21_N2
\uut|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~7_combout\ = (!\uut|SlaveClkCounter\(5) & (!\uut|SlaveClkCounter\(4) & (!\uut|SlaveClkCounter\(3) & !\uut|SlaveClkCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(5),
	datab => \uut|SlaveClkCounter\(4),
	datac => \uut|SlaveClkCounter\(3),
	datad => \uut|SlaveClkCounter\(6),
	combout => \uut|LessThan0~7_combout\);

-- Location: LCCOMB_X19_Y20_N28
\uut|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector15~0_combout\ = (\uut|Add2~62_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~62_combout\,
	datab => \uut|WideOr0~4_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector15~0_combout\);

-- Location: LCFF_X19_Y20_N29
\uut|SlaveClkCounter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector15~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(31));

-- Location: LCCOMB_X27_Y21_N2
\uut|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal3~0_combout\ = ((\uut|SlaveClkCounter\(31)) # (!\uut|LessThan0~7_combout\)) # (!\uut|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|LessThan0~6_combout\,
	datac => \uut|LessThan0~7_combout\,
	datad => \uut|SlaveClkCounter\(31),
	combout => \uut|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y21_N4
\uut|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal3~1_combout\ = (((\uut|Equal3~0_combout\) # (!\uut|LessThan0~4_combout\)) # (!\uut|MotionReg[0]~2_combout\)) # (!\uut|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|LessThan0~5_combout\,
	datab => \uut|MotionReg[0]~2_combout\,
	datac => \uut|LessThan0~4_combout\,
	datad => \uut|Equal3~0_combout\,
	combout => \uut|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y17_N16
\uut|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector5~0_combout\ = (\uut|RegAndClockGen~10_combout\ & (!\uut|Equal3~1_combout\ & \uut|State.ReadMotionReg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~10_combout\,
	datab => \uut|Equal3~1_combout\,
	datac => \uut|State.ReadMotionReg~regout\,
	combout => \uut|Selector5~0_combout\);

-- Location: LCFF_X27_Y17_N17
\uut|State.CheckMotionReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector5~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.CheckMotionReg~regout\);

-- Location: LCCOMB_X27_Y20_N22
\uut|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector7~0_combout\ = (\uut|Equal7~2_combout\ & ((\uut|State.CheckMotionReg~regout\) # ((!\uut|Sel~2_combout\ & \uut|State.WaitForWriteDataX~regout\)))) # (!\uut|Equal7~2_combout\ & (!\uut|Sel~2_combout\ & (\uut|State.WaitForWriteDataX~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal7~2_combout\,
	datab => \uut|Sel~2_combout\,
	datac => \uut|State.WaitForWriteDataX~regout\,
	datad => \uut|State.CheckMotionReg~regout\,
	combout => \uut|Selector7~0_combout\);

-- Location: LCFF_X27_Y20_N23
\uut|State.WaitForWriteDataX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector7~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.WaitForWriteDataX~regout\);

-- Location: LCCOMB_X26_Y16_N16
\uut|SlaveClkCounter[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[15]~0_combout\ = (!\uut|State.OutputAndWaitForWrite~regout\ & (!\uut|State.WaitForWriteDataX~regout\ & !\uut|State.WaitForWriteDataY~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|State.WaitForWriteDataX~regout\,
	datac => \uut|State.WaitForWriteDataY~regout\,
	combout => \uut|SlaveClkCounter[15]~0_combout\);

-- Location: LCCOMB_X26_Y16_N8
\uut|CntWaitCycles[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[8]~1_combout\ = (\uut|WideOr1~1_combout\ & ((\uut|SlaveClkCounter[15]~0_combout\ & ((\uut|State.Init~regout\))) # (!\uut|SlaveClkCounter[15]~0_combout\ & (\GenerateStrobe|oStrobe~regout\)))) # (!\uut|WideOr1~1_combout\ & 
-- (\GenerateStrobe|oStrobe~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|oStrobe~regout\,
	datab => \uut|WideOr1~1_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|SlaveClkCounter[15]~0_combout\,
	combout => \uut|CntWaitCycles[8]~1_combout\);

-- Location: LCFF_X25_Y16_N15
\uut|CntWaitCycles[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector73~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(6));

-- Location: LCCOMB_X25_Y16_N24
\uut|Selector74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector74~0_combout\ = (\uut|Add3~10_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~10_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector74~0_combout\);

-- Location: LCFF_X25_Y16_N25
\uut|CntWaitCycles[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector74~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(5));

-- Location: LCCOMB_X23_Y16_N18
\uut|Selector76~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector76~0_combout\ = (\uut|Add3~6_combout\ & (!\uut|CntWaitCycles[8]~0_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~6_combout\,
	datab => \uut|CntWaitCycles[8]~0_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector76~0_combout\);

-- Location: LCFF_X23_Y16_N19
\uut|CntWaitCycles[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector76~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(3));

-- Location: LCCOMB_X23_Y16_N28
\uut|Selector77~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector77~0_combout\ = (\uut|Add3~4_combout\ & (!\uut|CntWaitCycles[8]~0_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~4_combout\,
	datab => \uut|CntWaitCycles[8]~0_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector77~0_combout\);

-- Location: LCFF_X23_Y16_N29
\uut|CntWaitCycles[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector77~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(2));

-- Location: LCCOMB_X25_Y16_N12
\uut|Selector78~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector78~0_combout\ = (\uut|Add3~2_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~2_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector78~0_combout\);

-- Location: LCFF_X25_Y16_N13
\uut|CntWaitCycles[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector78~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(1));

-- Location: LCCOMB_X26_Y17_N18
\GenerateStrobe|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~0_combout\ = \GenerateStrobe|ClkCounter\(0) $ (VCC)
-- \GenerateStrobe|Add0~1\ = CARRY(\GenerateStrobe|ClkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobe|ClkCounter\(0),
	datad => VCC,
	combout => \GenerateStrobe|Add0~0_combout\,
	cout => \GenerateStrobe|Add0~1\);

-- Location: LCFF_X26_Y17_N19
\GenerateStrobe|ClkCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(0));

-- Location: LCCOMB_X26_Y17_N20
\GenerateStrobe|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~2_combout\ = (\GenerateStrobe|ClkCounter\(1) & (!\GenerateStrobe|Add0~1\)) # (!\GenerateStrobe|ClkCounter\(1) & ((\GenerateStrobe|Add0~1\) # (GND)))
-- \GenerateStrobe|Add0~3\ = CARRY((!\GenerateStrobe|Add0~1\) # (!\GenerateStrobe|ClkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(1),
	datad => VCC,
	cin => \GenerateStrobe|Add0~1\,
	combout => \GenerateStrobe|Add0~2_combout\,
	cout => \GenerateStrobe|Add0~3\);

-- Location: LCFF_X26_Y17_N21
\GenerateStrobe|ClkCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(1));

-- Location: LCCOMB_X26_Y17_N22
\GenerateStrobe|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~4_combout\ = (\GenerateStrobe|ClkCounter\(2) & (\GenerateStrobe|Add0~3\ $ (GND))) # (!\GenerateStrobe|ClkCounter\(2) & (!\GenerateStrobe|Add0~3\ & VCC))
-- \GenerateStrobe|Add0~5\ = CARRY((\GenerateStrobe|ClkCounter\(2) & !\GenerateStrobe|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobe|ClkCounter\(2),
	datad => VCC,
	cin => \GenerateStrobe|Add0~3\,
	combout => \GenerateStrobe|Add0~4_combout\,
	cout => \GenerateStrobe|Add0~5\);

-- Location: LCFF_X26_Y17_N23
\GenerateStrobe|ClkCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(2));

-- Location: LCCOMB_X26_Y17_N26
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

-- Location: LCCOMB_X26_Y17_N2
\GenerateStrobe|ClkCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|ClkCounter~0_combout\ = (\GenerateStrobe|Add0~8_combout\ & (((!\GenerateStrobe|ClkCounter\(1)) # (!\GenerateStrobe|Equal0~0_combout\)) # (!\GenerateStrobe|ClkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(0),
	datab => \GenerateStrobe|Equal0~0_combout\,
	datac => \GenerateStrobe|ClkCounter\(1),
	datad => \GenerateStrobe|Add0~8_combout\,
	combout => \GenerateStrobe|ClkCounter~0_combout\);

-- Location: LCFF_X26_Y17_N3
\GenerateStrobe|ClkCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|ClkCounter~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(4));

-- Location: LCCOMB_X26_Y17_N28
\GenerateStrobe|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Add0~10_combout\ = \GenerateStrobe|Add0~9\ $ (\GenerateStrobe|ClkCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobe|ClkCounter\(5),
	cin => \GenerateStrobe|Add0~9\,
	combout => \GenerateStrobe|Add0~10_combout\);

-- Location: LCFF_X26_Y17_N29
\GenerateStrobe|ClkCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Add0~10_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|ClkCounter\(5));

-- Location: LCCOMB_X26_Y17_N30
\GenerateStrobe|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Equal0~0_combout\ = (!\GenerateStrobe|ClkCounter\(3) & (\GenerateStrobe|ClkCounter\(4) & (\GenerateStrobe|ClkCounter\(2) & !\GenerateStrobe|ClkCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|ClkCounter\(3),
	datab => \GenerateStrobe|ClkCounter\(4),
	datac => \GenerateStrobe|ClkCounter\(2),
	datad => \GenerateStrobe|ClkCounter\(5),
	combout => \GenerateStrobe|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y17_N16
\GenerateStrobe|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \GenerateStrobe|Equal0~1_combout\ = (\GenerateStrobe|ClkCounter\(0) & (\GenerateStrobe|ClkCounter\(1) & \GenerateStrobe|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobe|ClkCounter\(0),
	datac => \GenerateStrobe|ClkCounter\(1),
	datad => \GenerateStrobe|Equal0~0_combout\,
	combout => \GenerateStrobe|Equal0~1_combout\);

-- Location: LCFF_X26_Y17_N17
\GenerateStrobe|oStrobe\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \GenerateStrobe|Equal0~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GenerateStrobe|oStrobe~regout\);

-- Location: LCCOMB_X26_Y16_N26
\uut|Selector79~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector79~2_combout\ = (\GenerateStrobe|oStrobe~regout\ & (\uut|Add3~0_combout\)) # (!\GenerateStrobe|oStrobe~regout\ & ((!\uut|CntWaitCycles\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~0_combout\,
	datac => \GenerateStrobe|oStrobe~regout\,
	datad => \uut|CntWaitCycles\(0),
	combout => \uut|Selector79~2_combout\);

-- Location: LCCOMB_X27_Y20_N24
\uut|Selector79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector79~0_combout\ = (\uut|State.WaitForReadDataY~regout\) # ((\uut|State.WaitForWriteDataX~regout\) # ((\uut|State.WaitForReadDataX~regout\) # (\uut|State.WaitForWriteDataY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForReadDataY~regout\,
	datab => \uut|State.WaitForWriteDataX~regout\,
	datac => \uut|State.WaitForReadDataX~regout\,
	datad => \uut|State.WaitForWriteDataY~regout\,
	combout => \uut|Selector79~0_combout\);

-- Location: LCCOMB_X27_Y20_N30
\uut|Selector79~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector79~3_combout\ = (\uut|Selector79~2_combout\) # ((!\uut|State.OutputAndWaitForWrite~regout\ & (!\uut|Selector79~0_combout\ & !\uut|State.WaitForReadMotion~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.OutputAndWaitForWrite~regout\,
	datab => \uut|Selector79~2_combout\,
	datac => \uut|Selector79~0_combout\,
	datad => \uut|State.WaitForReadMotion~regout\,
	combout => \uut|Selector79~3_combout\);

-- Location: LCCOMB_X25_Y16_N18
\uut|Selector79~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector79~1_combout\ = ((\uut|WideOr0~4_combout\ & (\uut|CntWaitCycles\(0) & !\uut|State.Init~regout\))) # (!\uut|Selector79~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|WideOr0~4_combout\,
	datab => \uut|Selector79~3_combout\,
	datac => \uut|CntWaitCycles\(0),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector79~1_combout\);

-- Location: LCFF_X25_Y16_N19
\uut|CntWaitCycles[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector79~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(0));

-- Location: LCCOMB_X24_Y16_N14
\uut|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~14_combout\ = (\uut|CntWaitCycles\(7) & (!\uut|Add3~13\)) # (!\uut|CntWaitCycles\(7) & ((\uut|Add3~13\) # (GND)))
-- \uut|Add3~15\ = CARRY((!\uut|Add3~13\) # (!\uut|CntWaitCycles\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(7),
	datad => VCC,
	cin => \uut|Add3~13\,
	combout => \uut|Add3~14_combout\,
	cout => \uut|Add3~15\);

-- Location: LCCOMB_X24_Y16_N16
\uut|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~16_combout\ = (\uut|CntWaitCycles\(8) & (\uut|Add3~15\ $ (GND))) # (!\uut|CntWaitCycles\(8) & (!\uut|Add3~15\ & VCC))
-- \uut|Add3~17\ = CARRY((\uut|CntWaitCycles\(8) & !\uut|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(8),
	datad => VCC,
	cin => \uut|Add3~15\,
	combout => \uut|Add3~16_combout\,
	cout => \uut|Add3~17\);

-- Location: LCCOMB_X24_Y16_N18
\uut|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~18_combout\ = (\uut|CntWaitCycles\(9) & (!\uut|Add3~17\)) # (!\uut|CntWaitCycles\(9) & ((\uut|Add3~17\) # (GND)))
-- \uut|Add3~19\ = CARRY((!\uut|Add3~17\) # (!\uut|CntWaitCycles\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(9),
	datad => VCC,
	cin => \uut|Add3~17\,
	combout => \uut|Add3~18_combout\,
	cout => \uut|Add3~19\);

-- Location: LCCOMB_X23_Y16_N30
\uut|Selector70~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector70~0_combout\ = (\uut|Add3~18_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add3~18_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector70~0_combout\);

-- Location: LCFF_X23_Y16_N31
\uut|CntWaitCycles[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector70~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(9));

-- Location: LCCOMB_X24_Y16_N20
\uut|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~20_combout\ = (\uut|CntWaitCycles\(10) & (\uut|Add3~19\ $ (GND))) # (!\uut|CntWaitCycles\(10) & (!\uut|Add3~19\ & VCC))
-- \uut|Add3~21\ = CARRY((\uut|CntWaitCycles\(10) & !\uut|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(10),
	datad => VCC,
	cin => \uut|Add3~19\,
	combout => \uut|Add3~20_combout\,
	cout => \uut|Add3~21\);

-- Location: LCCOMB_X23_Y16_N4
\uut|Selector69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector69~0_combout\ = (\uut|Add3~20_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add3~20_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector69~0_combout\);

-- Location: LCFF_X23_Y16_N5
\uut|CntWaitCycles[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector69~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(10));

-- Location: LCCOMB_X23_Y16_N0
\uut|Selector71~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector71~0_combout\ = (!\uut|State.Init~regout\ & (!\uut|CntWaitCycles[8]~0_combout\ & \uut|Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|CntWaitCycles[8]~0_combout\,
	datac => \uut|Add3~16_combout\,
	combout => \uut|Selector71~0_combout\);

-- Location: LCFF_X23_Y16_N1
\uut|CntWaitCycles[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector71~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(8));

-- Location: LCCOMB_X23_Y16_N26
\uut|Equal4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~6_combout\ = (!\uut|CntWaitCycles\(11) & (!\uut|CntWaitCycles\(9) & (!\uut|CntWaitCycles\(10) & !\uut|CntWaitCycles\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(11),
	datab => \uut|CntWaitCycles\(9),
	datac => \uut|CntWaitCycles\(10),
	datad => \uut|CntWaitCycles\(8),
	combout => \uut|Equal4~6_combout\);

-- Location: LCCOMB_X23_Y16_N14
\uut|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector72~0_combout\ = (!\uut|State.Init~regout\ & (!\uut|CntWaitCycles[8]~0_combout\ & \uut|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.Init~regout\,
	datab => \uut|CntWaitCycles[8]~0_combout\,
	datac => \uut|Add3~14_combout\,
	combout => \uut|Selector72~0_combout\);

-- Location: LCFF_X23_Y16_N15
\uut|CntWaitCycles[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector72~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(7));

-- Location: LCCOMB_X23_Y16_N20
\uut|Equal4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~7_combout\ = (!\uut|CntWaitCycles\(4) & (\uut|CntWaitCycles\(2) & (!\uut|CntWaitCycles\(7) & !\uut|CntWaitCycles\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(4),
	datab => \uut|CntWaitCycles\(2),
	datac => \uut|CntWaitCycles\(7),
	datad => \uut|CntWaitCycles\(3),
	combout => \uut|Equal4~7_combout\);

-- Location: LCCOMB_X23_Y16_N6
\uut|Equal4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~8_combout\ = (\uut|Equal4~5_combout\ & (\uut|Equal4~6_combout\ & (\uut|Equal4~7_combout\ & !\uut|CntWaitCycles\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal4~5_combout\,
	datab => \uut|Equal4~6_combout\,
	datac => \uut|Equal4~7_combout\,
	datad => \uut|CntWaitCycles\(1),
	combout => \uut|Equal4~8_combout\);

-- Location: LCCOMB_X26_Y16_N12
\uut|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal5~0_combout\ = (\uut|CntWaitCycles\(6)) # ((\uut|CntWaitCycles\(5)) # (\uut|CntWaitCycles\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(6),
	datab => \uut|CntWaitCycles\(5),
	datad => \uut|CntWaitCycles\(0),
	combout => \uut|Equal5~0_combout\);

-- Location: LCCOMB_X26_Y16_N22
\uut|Sel~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Sel~2_combout\ = (\GenerateStrobe|oStrobe~regout\ & (\uut|Equal4~8_combout\ & (\uut|Equal4~4_combout\ & !\uut|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobe|oStrobe~regout\,
	datab => \uut|Equal4~8_combout\,
	datac => \uut|Equal4~4_combout\,
	datad => \uut|Equal5~0_combout\,
	combout => \uut|Sel~2_combout\);

-- Location: LCCOMB_X27_Y20_N28
\uut|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector2~0_combout\ = (\uut|Sel~2_combout\ & \uut|State.OutputAndWaitForWrite~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Sel~2_combout\,
	datac => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y20_N2
\uut|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector2~1_combout\ = (\uut|Selector2~0_combout\) # ((\uut|State.Init~regout\) # ((!\uut|Sel~0_combout\ & \uut|State.SetMotionReg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|Selector2~0_combout\,
	datac => \uut|State.SetMotionReg~regout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector2~1_combout\);

-- Location: LCFF_X27_Y20_N3
\uut|State.SetMotionReg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector2~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.SetMotionReg~regout\);

-- Location: LCCOMB_X27_Y20_N18
\uut|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector3~0_combout\ = (\uut|Sel~0_combout\ & ((\uut|State.SetMotionReg~regout\) # ((\uut|State.WaitForReadMotion~regout\ & !\uut|Sel~1_combout\)))) # (!\uut|Sel~0_combout\ & (((\uut|State.WaitForReadMotion~regout\ & !\uut|Sel~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Sel~0_combout\,
	datab => \uut|State.SetMotionReg~regout\,
	datac => \uut|State.WaitForReadMotion~regout\,
	datad => \uut|Sel~1_combout\,
	combout => \uut|Selector3~0_combout\);

-- Location: LCFF_X27_Y20_N19
\uut|State.WaitForReadMotion\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector3~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.WaitForReadMotion~regout\);

-- Location: LCCOMB_X27_Y20_N12
\uut|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|WideOr1~1_combout\ = (!\uut|State.WaitForReadDataY~regout\ & (!\uut|State.WaitForReadDataX~regout\ & !\uut|State.WaitForReadMotion~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForReadDataY~regout\,
	datac => \uut|State.WaitForReadDataX~regout\,
	datad => \uut|State.WaitForReadMotion~regout\,
	combout => \uut|WideOr1~1_combout\);

-- Location: LCCOMB_X26_Y16_N28
\uut|CntWaitCycles[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[8]~0_combout\ = (\uut|Equal4~9_combout\ & (\uut|Equal4~4_combout\ & (!\uut|WideOr1~1_combout\ & \uut|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal4~9_combout\,
	datab => \uut|Equal4~4_combout\,
	datac => \uut|WideOr1~1_combout\,
	datad => \uut|Equal4~8_combout\,
	combout => \uut|CntWaitCycles[8]~0_combout\);

-- Location: LCCOMB_X25_Y15_N18
\uut|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector59~0_combout\ = (\uut|Add3~40_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~40_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector59~0_combout\);

-- Location: LCFF_X25_Y15_N19
\uut|CntWaitCycles[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector59~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(20));

-- Location: LCCOMB_X25_Y15_N20
\uut|Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector56~0_combout\ = (\uut|Add3~46_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~46_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector56~0_combout\);

-- Location: LCFF_X25_Y15_N21
\uut|CntWaitCycles[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector56~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(23));

-- Location: LCCOMB_X25_Y15_N30
\uut|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector57~0_combout\ = (\uut|Add3~44_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~44_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector57~0_combout\);

-- Location: LCFF_X25_Y15_N31
\uut|CntWaitCycles[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector57~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(22));

-- Location: LCCOMB_X25_Y15_N4
\uut|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~2_combout\ = (!\uut|CntWaitCycles\(21) & (!\uut|CntWaitCycles\(20) & (!\uut|CntWaitCycles\(23) & !\uut|CntWaitCycles\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(21),
	datab => \uut|CntWaitCycles\(20),
	datac => \uut|CntWaitCycles\(23),
	datad => \uut|CntWaitCycles\(22),
	combout => \uut|Equal4~2_combout\);

-- Location: LCCOMB_X25_Y16_N22
\uut|Selector62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector62~0_combout\ = (\uut|Add3~34_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~34_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector62~0_combout\);

-- Location: LCFF_X25_Y16_N23
\uut|CntWaitCycles[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector62~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(17));

-- Location: LCCOMB_X25_Y16_N16
\uut|Selector63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector63~0_combout\ = (\uut|Add3~32_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~32_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector63~0_combout\);

-- Location: LCFF_X25_Y16_N17
\uut|CntWaitCycles[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector63~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(16));

-- Location: LCCOMB_X25_Y16_N28
\uut|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector61~0_combout\ = (\uut|Add3~36_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~36_combout\,
	datab => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector61~0_combout\);

-- Location: LCFF_X25_Y16_N29
\uut|CntWaitCycles[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector61~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(18));

-- Location: LCCOMB_X25_Y16_N2
\uut|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~3_combout\ = (!\uut|CntWaitCycles\(19) & (!\uut|CntWaitCycles\(17) & (!\uut|CntWaitCycles\(16) & !\uut|CntWaitCycles\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(19),
	datab => \uut|CntWaitCycles\(17),
	datac => \uut|CntWaitCycles\(16),
	datad => \uut|CntWaitCycles\(18),
	combout => \uut|Equal4~3_combout\);

-- Location: LCCOMB_X25_Y15_N24
\uut|Selector58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector58~0_combout\ = (\uut|Add3~42_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add3~42_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector58~0_combout\);

-- Location: LCFF_X25_Y15_N25
\uut|CntWaitCycles[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector58~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(21));

-- Location: LCCOMB_X24_Y16_N24
\uut|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~24_combout\ = (\uut|CntWaitCycles\(12) & (\uut|Add3~23\ $ (GND))) # (!\uut|CntWaitCycles\(12) & (!\uut|Add3~23\ & VCC))
-- \uut|Add3~25\ = CARRY((\uut|CntWaitCycles\(12) & !\uut|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(12),
	datad => VCC,
	cin => \uut|Add3~23\,
	combout => \uut|Add3~24_combout\,
	cout => \uut|Add3~25\);

-- Location: LCCOMB_X23_Y16_N22
\uut|Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector67~0_combout\ = (\uut|Add3~24_combout\ & (!\uut|State.Init~regout\ & !\uut|CntWaitCycles[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add3~24_combout\,
	datac => \uut|State.Init~regout\,
	datad => \uut|CntWaitCycles[8]~0_combout\,
	combout => \uut|Selector67~0_combout\);

-- Location: LCFF_X23_Y16_N23
\uut|CntWaitCycles[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector67~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(12));

-- Location: LCCOMB_X24_Y15_N16
\uut|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~48_combout\ = (\uut|CntWaitCycles\(24) & (\uut|Add3~47\ $ (GND))) # (!\uut|CntWaitCycles\(24) & (!\uut|Add3~47\ & VCC))
-- \uut|Add3~49\ = CARRY((\uut|CntWaitCycles\(24) & !\uut|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(24),
	datad => VCC,
	cin => \uut|Add3~47\,
	combout => \uut|Add3~48_combout\,
	cout => \uut|Add3~49\);

-- Location: LCCOMB_X25_Y15_N0
\uut|Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector55~0_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (\uut|Add3~48_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|Add3~48_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector55~0_combout\);

-- Location: LCFF_X25_Y15_N1
\uut|CntWaitCycles[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector55~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(24));

-- Location: LCCOMB_X24_Y15_N18
\uut|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~50_combout\ = (\uut|CntWaitCycles\(25) & (!\uut|Add3~49\)) # (!\uut|CntWaitCycles\(25) & ((\uut|Add3~49\) # (GND)))
-- \uut|Add3~51\ = CARRY((!\uut|Add3~49\) # (!\uut|CntWaitCycles\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(25),
	datad => VCC,
	cin => \uut|Add3~49\,
	combout => \uut|Add3~50_combout\,
	cout => \uut|Add3~51\);

-- Location: LCCOMB_X24_Y15_N20
\uut|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Add3~52_combout\ = (\uut|CntWaitCycles\(26) & (\uut|Add3~51\ $ (GND))) # (!\uut|CntWaitCycles\(26) & (!\uut|Add3~51\ & VCC))
-- \uut|Add3~53\ = CARRY((\uut|CntWaitCycles\(26) & !\uut|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|CntWaitCycles\(26),
	datad => VCC,
	cin => \uut|Add3~51\,
	combout => \uut|Add3~52_combout\,
	cout => \uut|Add3~53\);

-- Location: LCCOMB_X25_Y15_N12
\uut|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector53~0_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (!\uut|State.Init~regout\ & \uut|Add3~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|State.Init~regout\,
	datac => \uut|Add3~52_combout\,
	combout => \uut|Selector53~0_combout\);

-- Location: LCFF_X25_Y15_N13
\uut|CntWaitCycles[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector53~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(26));

-- Location: LCCOMB_X25_Y15_N26
\uut|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector52~0_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (\uut|Add3~54_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|Add3~54_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector52~0_combout\);

-- Location: LCFF_X25_Y15_N27
\uut|CntWaitCycles[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector52~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(27));

-- Location: LCCOMB_X25_Y15_N14
\uut|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector54~0_combout\ = (!\uut|CntWaitCycles[8]~0_combout\ & (\uut|Add3~50_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles[8]~0_combout\,
	datab => \uut|Add3~50_combout\,
	datac => \uut|State.Init~regout\,
	combout => \uut|Selector54~0_combout\);

-- Location: LCFF_X25_Y15_N15
\uut|CntWaitCycles[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector54~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|CntWaitCycles[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|CntWaitCycles\(25));

-- Location: LCCOMB_X25_Y15_N10
\uut|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~1_combout\ = (!\uut|CntWaitCycles\(26) & (!\uut|CntWaitCycles\(27) & (!\uut|CntWaitCycles\(25) & !\uut|CntWaitCycles\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|CntWaitCycles\(26),
	datab => \uut|CntWaitCycles\(27),
	datac => \uut|CntWaitCycles\(25),
	datad => \uut|CntWaitCycles\(24),
	combout => \uut|Equal4~1_combout\);

-- Location: LCCOMB_X25_Y15_N22
\uut|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal4~4_combout\ = (\uut|Equal4~0_combout\ & (\uut|Equal4~2_combout\ & (\uut|Equal4~3_combout\ & \uut|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal4~0_combout\,
	datab => \uut|Equal4~2_combout\,
	datac => \uut|Equal4~3_combout\,
	datad => \uut|Equal4~1_combout\,
	combout => \uut|Equal4~4_combout\);

-- Location: LCCOMB_X26_Y16_N2
\uut|Sel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Sel~1_combout\ = (\uut|Equal4~9_combout\ & (\uut|Equal4~4_combout\ & (\GenerateStrobe|oStrobe~regout\ & \uut|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal4~9_combout\,
	datab => \uut|Equal4~4_combout\,
	datac => \GenerateStrobe|oStrobe~regout\,
	datad => \uut|Equal4~8_combout\,
	combout => \uut|Sel~1_combout\);

-- Location: LCCOMB_X26_Y20_N4
\uut|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector9~0_combout\ = (\uut|State.SetXReg~regout\ & ((\uut|Sel~3_combout\) # ((!\uut|Sel~1_combout\ & \uut|State.WaitForReadDataX~regout\)))) # (!\uut|State.SetXReg~regout\ & (!\uut|Sel~1_combout\ & (\uut|State.WaitForReadDataX~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetXReg~regout\,
	datab => \uut|Sel~1_combout\,
	datac => \uut|State.WaitForReadDataX~regout\,
	datad => \uut|Sel~3_combout\,
	combout => \uut|Selector9~0_combout\);

-- Location: LCFF_X26_Y20_N5
\uut|State.WaitForReadDataX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector9~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.WaitForReadDataX~regout\);

-- Location: LCCOMB_X19_Y20_N30
\uut|WideOr0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|WideOr0~4_combout\ = (!\uut|State.WaitForReadDataY~regout\ & (!\uut|State.WaitForReadDataX~regout\ & (\uut|SlaveClkCounter[15]~0_combout\ & !\uut|State.WaitForReadMotion~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.WaitForReadDataY~regout\,
	datab => \uut|State.WaitForReadDataX~regout\,
	datac => \uut|SlaveClkCounter[15]~0_combout\,
	datad => \uut|State.WaitForReadMotion~regout\,
	combout => \uut|WideOr0~4_combout\);

-- Location: LCCOMB_X25_Y16_N30
\uut|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~1_combout\ = (!\uut|State.Reset~regout\ & (!\uut|State.CheckMotionReg~regout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Reset~regout\,
	datac => \uut|State.CheckMotionReg~regout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector1~1_combout\);

-- Location: LCCOMB_X30_Y17_N12
\uut|ResetCnt[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[6]~46_combout\ = (\uut|ResetCnt\(6) & (\uut|ResetCnt[5]~45\ $ (GND))) # (!\uut|ResetCnt\(6) & (!\uut|ResetCnt[5]~45\ & VCC))
-- \uut|ResetCnt[6]~47\ = CARRY((\uut|ResetCnt\(6) & !\uut|ResetCnt[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(6),
	datad => VCC,
	cin => \uut|ResetCnt[5]~45\,
	combout => \uut|ResetCnt[6]~46_combout\,
	cout => \uut|ResetCnt[6]~47\);

-- Location: LCFF_X30_Y17_N13
\uut|ResetCnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[6]~46_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(6));

-- Location: LCCOMB_X29_Y17_N2
\uut|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~8_combout\ = (\uut|ResetCnt\(4) & (!\uut|ResetCnt\(6) & (!\uut|ResetCnt\(0) & !\uut|ResetCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(4),
	datab => \uut|ResetCnt\(6),
	datac => \uut|ResetCnt\(0),
	datad => \uut|ResetCnt\(1),
	combout => \uut|Equal1~8_combout\);

-- Location: LCCOMB_X29_Y17_N0
\uut|Equal1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~10_combout\ = (\uut|Equal1~7_combout\ & (\uut|Equal1~9_combout\ & \uut|Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Equal1~7_combout\,
	datac => \uut|Equal1~9_combout\,
	datad => \uut|Equal1~8_combout\,
	combout => \uut|Equal1~10_combout\);

-- Location: LCCOMB_X19_Y20_N22
\uut|State.Reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|State.Reset~0_combout\ = ((\uut|Equal1~10_combout\) # ((\uut|Selector1~0_combout\ & !\uut|WideOr0~4_combout\))) # (!\uut|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector1~0_combout\,
	datab => \uut|WideOr0~4_combout\,
	datac => \uut|Selector1~1_combout\,
	datad => \uut|Equal1~10_combout\,
	combout => \uut|State.Reset~0_combout\);

-- Location: LCFF_X19_Y20_N23
\uut|State.Reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|State.Reset~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.Reset~regout\);

-- Location: LCFF_X30_Y17_N21
\uut|ResetCnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[10]~54_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(10));

-- Location: LCCOMB_X29_Y16_N28
\uut|Equal1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~9_combout\ = (!\uut|ResetCnt\(8) & (\uut|ResetCnt\(10) & (\uut|ResetCnt\(13) & !\uut|ResetCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(8),
	datab => \uut|ResetCnt\(10),
	datac => \uut|ResetCnt\(13),
	datad => \uut|ResetCnt\(7),
	combout => \uut|Equal1~9_combout\);

-- Location: LCCOMB_X29_Y17_N16
\uut|ResetCnt[24]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[24]~98_combout\ = (\uut|RegAndClockGen~15_combout\) # ((\uut|Equal1~7_combout\ & (\uut|Equal1~9_combout\ & \uut|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~15_combout\,
	datab => \uut|Equal1~7_combout\,
	datac => \uut|Equal1~9_combout\,
	datad => \uut|Equal1~8_combout\,
	combout => \uut|ResetCnt[24]~98_combout\);

-- Location: LCFF_X30_Y17_N1
\uut|ResetCnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[0]~34_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(0));

-- Location: LCCOMB_X30_Y17_N2
\uut|ResetCnt[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[1]~36_combout\ = (\uut|ResetCnt\(1) & (!\uut|ResetCnt[0]~35\)) # (!\uut|ResetCnt\(1) & ((\uut|ResetCnt[0]~35\) # (GND)))
-- \uut|ResetCnt[1]~37\ = CARRY((!\uut|ResetCnt[0]~35\) # (!\uut|ResetCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(1),
	datad => VCC,
	cin => \uut|ResetCnt[0]~35\,
	combout => \uut|ResetCnt[1]~36_combout\,
	cout => \uut|ResetCnt[1]~37\);

-- Location: LCFF_X30_Y17_N3
\uut|ResetCnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[1]~36_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(1));

-- Location: LCCOMB_X30_Y17_N4
\uut|ResetCnt[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[2]~38_combout\ = (\uut|ResetCnt\(2) & (\uut|ResetCnt[1]~37\ $ (GND))) # (!\uut|ResetCnt\(2) & (!\uut|ResetCnt[1]~37\ & VCC))
-- \uut|ResetCnt[2]~39\ = CARRY((\uut|ResetCnt\(2) & !\uut|ResetCnt[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(2),
	datad => VCC,
	cin => \uut|ResetCnt[1]~37\,
	combout => \uut|ResetCnt[2]~38_combout\,
	cout => \uut|ResetCnt[2]~39\);

-- Location: LCFF_X30_Y17_N5
\uut|ResetCnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[2]~38_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(2));

-- Location: LCCOMB_X30_Y17_N8
\uut|ResetCnt[4]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[4]~42_combout\ = (\uut|ResetCnt\(4) & (\uut|ResetCnt[3]~41\ $ (GND))) # (!\uut|ResetCnt\(4) & (!\uut|ResetCnt[3]~41\ & VCC))
-- \uut|ResetCnt[4]~43\ = CARRY((\uut|ResetCnt\(4) & !\uut|ResetCnt[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(4),
	datad => VCC,
	cin => \uut|ResetCnt[3]~41\,
	combout => \uut|ResetCnt[4]~42_combout\,
	cout => \uut|ResetCnt[4]~43\);

-- Location: LCFF_X30_Y17_N9
\uut|ResetCnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[4]~42_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(4));

-- Location: LCCOMB_X30_Y17_N14
\uut|ResetCnt[7]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[7]~48_combout\ = (\uut|ResetCnt\(7) & (!\uut|ResetCnt[6]~47\)) # (!\uut|ResetCnt\(7) & ((\uut|ResetCnt[6]~47\) # (GND)))
-- \uut|ResetCnt[7]~49\ = CARRY((!\uut|ResetCnt[6]~47\) # (!\uut|ResetCnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(7),
	datad => VCC,
	cin => \uut|ResetCnt[6]~47\,
	combout => \uut|ResetCnt[7]~48_combout\,
	cout => \uut|ResetCnt[7]~49\);

-- Location: LCFF_X30_Y17_N15
\uut|ResetCnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[7]~48_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(7));

-- Location: LCCOMB_X30_Y17_N18
\uut|ResetCnt[9]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[9]~52_combout\ = (\uut|ResetCnt\(9) & (!\uut|ResetCnt[8]~51\)) # (!\uut|ResetCnt\(9) & ((\uut|ResetCnt[8]~51\) # (GND)))
-- \uut|ResetCnt[9]~53\ = CARRY((!\uut|ResetCnt[8]~51\) # (!\uut|ResetCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(9),
	datad => VCC,
	cin => \uut|ResetCnt[8]~51\,
	combout => \uut|ResetCnt[9]~52_combout\,
	cout => \uut|ResetCnt[9]~53\);

-- Location: LCFF_X30_Y17_N19
\uut|ResetCnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[9]~52_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(9));

-- Location: LCCOMB_X30_Y17_N22
\uut|ResetCnt[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[11]~56_combout\ = (\uut|ResetCnt\(11) & (!\uut|ResetCnt[10]~55\)) # (!\uut|ResetCnt\(11) & ((\uut|ResetCnt[10]~55\) # (GND)))
-- \uut|ResetCnt[11]~57\ = CARRY((!\uut|ResetCnt[10]~55\) # (!\uut|ResetCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(11),
	datad => VCC,
	cin => \uut|ResetCnt[10]~55\,
	combout => \uut|ResetCnt[11]~56_combout\,
	cout => \uut|ResetCnt[11]~57\);

-- Location: LCFF_X30_Y17_N23
\uut|ResetCnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[11]~56_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(11));

-- Location: LCCOMB_X30_Y17_N26
\uut|ResetCnt[13]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[13]~60_combout\ = (\uut|ResetCnt\(13) & (!\uut|ResetCnt[12]~59\)) # (!\uut|ResetCnt\(13) & ((\uut|ResetCnt[12]~59\) # (GND)))
-- \uut|ResetCnt[13]~61\ = CARRY((!\uut|ResetCnt[12]~59\) # (!\uut|ResetCnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(13),
	datad => VCC,
	cin => \uut|ResetCnt[12]~59\,
	combout => \uut|ResetCnt[13]~60_combout\,
	cout => \uut|ResetCnt[13]~61\);

-- Location: LCFF_X30_Y17_N27
\uut|ResetCnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[13]~60_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(13));

-- Location: LCCOMB_X30_Y17_N28
\uut|ResetCnt[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[14]~62_combout\ = (\uut|ResetCnt\(14) & (\uut|ResetCnt[13]~61\ $ (GND))) # (!\uut|ResetCnt\(14) & (!\uut|ResetCnt[13]~61\ & VCC))
-- \uut|ResetCnt[14]~63\ = CARRY((\uut|ResetCnt\(14) & !\uut|ResetCnt[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(14),
	datad => VCC,
	cin => \uut|ResetCnt[13]~61\,
	combout => \uut|ResetCnt[14]~62_combout\,
	cout => \uut|ResetCnt[14]~63\);

-- Location: LCFF_X30_Y17_N29
\uut|ResetCnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[14]~62_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(14));

-- Location: LCCOMB_X30_Y17_N30
\uut|ResetCnt[15]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[15]~64_combout\ = (\uut|ResetCnt\(15) & (!\uut|ResetCnt[14]~63\)) # (!\uut|ResetCnt\(15) & ((\uut|ResetCnt[14]~63\) # (GND)))
-- \uut|ResetCnt[15]~65\ = CARRY((!\uut|ResetCnt[14]~63\) # (!\uut|ResetCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(15),
	datad => VCC,
	cin => \uut|ResetCnt[14]~63\,
	combout => \uut|ResetCnt[15]~64_combout\,
	cout => \uut|ResetCnt[15]~65\);

-- Location: LCFF_X30_Y17_N31
\uut|ResetCnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[15]~64_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(15));

-- Location: LCCOMB_X30_Y16_N0
\uut|ResetCnt[16]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[16]~66_combout\ = (\uut|ResetCnt\(16) & (\uut|ResetCnt[15]~65\ $ (GND))) # (!\uut|ResetCnt\(16) & (!\uut|ResetCnt[15]~65\ & VCC))
-- \uut|ResetCnt[16]~67\ = CARRY((\uut|ResetCnt\(16) & !\uut|ResetCnt[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(16),
	datad => VCC,
	cin => \uut|ResetCnt[15]~65\,
	combout => \uut|ResetCnt[16]~66_combout\,
	cout => \uut|ResetCnt[16]~67\);

-- Location: LCFF_X30_Y16_N1
\uut|ResetCnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[16]~66_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(16));

-- Location: LCCOMB_X30_Y16_N2
\uut|ResetCnt[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[17]~68_combout\ = (\uut|ResetCnt\(17) & (!\uut|ResetCnt[16]~67\)) # (!\uut|ResetCnt\(17) & ((\uut|ResetCnt[16]~67\) # (GND)))
-- \uut|ResetCnt[17]~69\ = CARRY((!\uut|ResetCnt[16]~67\) # (!\uut|ResetCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(17),
	datad => VCC,
	cin => \uut|ResetCnt[16]~67\,
	combout => \uut|ResetCnt[17]~68_combout\,
	cout => \uut|ResetCnt[17]~69\);

-- Location: LCFF_X30_Y16_N3
\uut|ResetCnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[17]~68_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(17));

-- Location: LCCOMB_X30_Y16_N4
\uut|ResetCnt[18]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[18]~70_combout\ = (\uut|ResetCnt\(18) & (\uut|ResetCnt[17]~69\ $ (GND))) # (!\uut|ResetCnt\(18) & (!\uut|ResetCnt[17]~69\ & VCC))
-- \uut|ResetCnt[18]~71\ = CARRY((\uut|ResetCnt\(18) & !\uut|ResetCnt[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(18),
	datad => VCC,
	cin => \uut|ResetCnt[17]~69\,
	combout => \uut|ResetCnt[18]~70_combout\,
	cout => \uut|ResetCnt[18]~71\);

-- Location: LCFF_X30_Y16_N5
\uut|ResetCnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[18]~70_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(18));

-- Location: LCCOMB_X30_Y16_N8
\uut|ResetCnt[20]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[20]~74_combout\ = (\uut|ResetCnt\(20) & (\uut|ResetCnt[19]~73\ $ (GND))) # (!\uut|ResetCnt\(20) & (!\uut|ResetCnt[19]~73\ & VCC))
-- \uut|ResetCnt[20]~75\ = CARRY((\uut|ResetCnt\(20) & !\uut|ResetCnt[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(20),
	datad => VCC,
	cin => \uut|ResetCnt[19]~73\,
	combout => \uut|ResetCnt[20]~74_combout\,
	cout => \uut|ResetCnt[20]~75\);

-- Location: LCFF_X30_Y16_N9
\uut|ResetCnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[20]~74_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(20));

-- Location: LCCOMB_X30_Y16_N14
\uut|ResetCnt[23]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[23]~80_combout\ = (\uut|ResetCnt\(23) & (!\uut|ResetCnt[22]~79\)) # (!\uut|ResetCnt\(23) & ((\uut|ResetCnt[22]~79\) # (GND)))
-- \uut|ResetCnt[23]~81\ = CARRY((!\uut|ResetCnt[22]~79\) # (!\uut|ResetCnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(23),
	datad => VCC,
	cin => \uut|ResetCnt[22]~79\,
	combout => \uut|ResetCnt[23]~80_combout\,
	cout => \uut|ResetCnt[23]~81\);

-- Location: LCFF_X30_Y16_N15
\uut|ResetCnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[23]~80_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(23));

-- Location: LCCOMB_X30_Y16_N16
\uut|ResetCnt[24]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[24]~82_combout\ = (\uut|ResetCnt\(24) & (\uut|ResetCnt[23]~81\ $ (GND))) # (!\uut|ResetCnt\(24) & (!\uut|ResetCnt[23]~81\ & VCC))
-- \uut|ResetCnt[24]~83\ = CARRY((\uut|ResetCnt\(24) & !\uut|ResetCnt[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(24),
	datad => VCC,
	cin => \uut|ResetCnt[23]~81\,
	combout => \uut|ResetCnt[24]~82_combout\,
	cout => \uut|ResetCnt[24]~83\);

-- Location: LCCOMB_X30_Y16_N18
\uut|ResetCnt[25]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[25]~84_combout\ = (\uut|ResetCnt\(25) & (!\uut|ResetCnt[24]~83\)) # (!\uut|ResetCnt\(25) & ((\uut|ResetCnt[24]~83\) # (GND)))
-- \uut|ResetCnt[25]~85\ = CARRY((!\uut|ResetCnt[24]~83\) # (!\uut|ResetCnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(25),
	datad => VCC,
	cin => \uut|ResetCnt[24]~83\,
	combout => \uut|ResetCnt[25]~84_combout\,
	cout => \uut|ResetCnt[25]~85\);

-- Location: LCFF_X30_Y16_N19
\uut|ResetCnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[25]~84_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(25));

-- Location: LCCOMB_X30_Y16_N20
\uut|ResetCnt[26]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[26]~86_combout\ = (\uut|ResetCnt\(26) & (\uut|ResetCnt[25]~85\ $ (GND))) # (!\uut|ResetCnt\(26) & (!\uut|ResetCnt[25]~85\ & VCC))
-- \uut|ResetCnt[26]~87\ = CARRY((\uut|ResetCnt\(26) & !\uut|ResetCnt[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(26),
	datad => VCC,
	cin => \uut|ResetCnt[25]~85\,
	combout => \uut|ResetCnt[26]~86_combout\,
	cout => \uut|ResetCnt[26]~87\);

-- Location: LCCOMB_X30_Y16_N22
\uut|ResetCnt[27]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[27]~88_combout\ = (\uut|ResetCnt\(27) & (!\uut|ResetCnt[26]~87\)) # (!\uut|ResetCnt\(27) & ((\uut|ResetCnt[26]~87\) # (GND)))
-- \uut|ResetCnt[27]~89\ = CARRY((!\uut|ResetCnt[26]~87\) # (!\uut|ResetCnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(27),
	datad => VCC,
	cin => \uut|ResetCnt[26]~87\,
	combout => \uut|ResetCnt[27]~88_combout\,
	cout => \uut|ResetCnt[27]~89\);

-- Location: LCFF_X30_Y16_N23
\uut|ResetCnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[27]~88_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(27));

-- Location: LCFF_X30_Y16_N17
\uut|ResetCnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[24]~82_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(24));

-- Location: LCFF_X30_Y16_N21
\uut|ResetCnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[26]~86_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(26));

-- Location: LCCOMB_X29_Y16_N2
\uut|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~5_combout\ = (!\uut|ResetCnt\(25) & (!\uut|ResetCnt\(27) & (!\uut|ResetCnt\(24) & !\uut|ResetCnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(25),
	datab => \uut|ResetCnt\(27),
	datac => \uut|ResetCnt\(24),
	datad => \uut|ResetCnt\(26),
	combout => \uut|Equal1~5_combout\);

-- Location: LCCOMB_X30_Y16_N26
\uut|ResetCnt[29]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[29]~92_combout\ = (\uut|ResetCnt\(29) & (!\uut|ResetCnt[28]~91\)) # (!\uut|ResetCnt\(29) & ((\uut|ResetCnt[28]~91\) # (GND)))
-- \uut|ResetCnt[29]~93\ = CARRY((!\uut|ResetCnt[28]~91\) # (!\uut|ResetCnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(29),
	datad => VCC,
	cin => \uut|ResetCnt[28]~91\,
	combout => \uut|ResetCnt[29]~92_combout\,
	cout => \uut|ResetCnt[29]~93\);

-- Location: LCFF_X30_Y16_N27
\uut|ResetCnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[29]~92_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(29));

-- Location: LCCOMB_X30_Y16_N28
\uut|ResetCnt[30]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[30]~94_combout\ = (\uut|ResetCnt\(30) & (\uut|ResetCnt[29]~93\ $ (GND))) # (!\uut|ResetCnt\(30) & (!\uut|ResetCnt[29]~93\ & VCC))
-- \uut|ResetCnt[30]~95\ = CARRY((\uut|ResetCnt\(30) & !\uut|ResetCnt[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uut|ResetCnt\(30),
	datad => VCC,
	cin => \uut|ResetCnt[29]~93\,
	combout => \uut|ResetCnt[30]~94_combout\,
	cout => \uut|ResetCnt[30]~95\);

-- Location: LCFF_X30_Y16_N29
\uut|ResetCnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[30]~94_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(30));

-- Location: LCCOMB_X30_Y16_N30
\uut|ResetCnt[31]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[31]~96_combout\ = \uut|ResetCnt[30]~95\ $ (\uut|ResetCnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uut|ResetCnt\(31),
	cin => \uut|ResetCnt[30]~95\,
	combout => \uut|ResetCnt[31]~96_combout\);

-- Location: LCFF_X30_Y16_N31
\uut|ResetCnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetCnt[31]~96_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	sclr => \uut|ResetCnt[24]~98_combout\,
	ena => \uut|ALT_INV_State.Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetCnt\(31));

-- Location: LCCOMB_X29_Y16_N20
\uut|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~6_combout\ = (!\uut|ResetCnt\(28) & (!\uut|ResetCnt\(31) & (!\uut|ResetCnt\(30) & !\uut|ResetCnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(28),
	datab => \uut|ResetCnt\(31),
	datac => \uut|ResetCnt\(30),
	datad => \uut|ResetCnt\(29),
	combout => \uut|Equal1~6_combout\);

-- Location: LCCOMB_X29_Y16_N6
\uut|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal1~7_combout\ = (\uut|Equal1~4_combout\ & (\uut|Equal1~5_combout\ & \uut|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal1~4_combout\,
	datab => \uut|Equal1~5_combout\,
	datac => \uut|Equal1~6_combout\,
	combout => \uut|Equal1~7_combout\);

-- Location: LCCOMB_X29_Y17_N6
\uut|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector1~2_combout\ = (\uut|Selector1~1_combout\ & (\uut|Equal1~7_combout\ & (\uut|Equal1~9_combout\ & \uut|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector1~1_combout\,
	datab => \uut|Equal1~7_combout\,
	datac => \uut|Equal1~9_combout\,
	datad => \uut|Equal1~8_combout\,
	combout => \uut|Selector1~2_combout\);

-- Location: LCFF_X29_Y17_N7
\uut|State.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector1~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|State.Init~regout\);

-- Location: LCCOMB_X29_Y17_N26
\uut|Selector138~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector138~0_combout\ = (\uut|oDataY\(0) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataY\(0),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector138~0_combout\);

-- Location: LCCOMB_X19_Y20_N2
\uut|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector32~0_combout\ = (\uut|Add2~28_combout\ & (\uut|WideOr0~4_combout\ & !\uut|State.Init~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~28_combout\,
	datab => \uut|WideOr0~4_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector32~0_combout\);

-- Location: LCFF_X19_Y20_N3
\uut|SlaveClkCounter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector32~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(14));

-- Location: LCCOMB_X19_Y20_N10
\uut|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~5_combout\ = (!\uut|SlaveClkCounter\(13) & (!\uut|SlaveClkCounter\(14) & (!\uut|SlaveClkCounter\(12) & !\uut|SlaveClkCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(13),
	datab => \uut|SlaveClkCounter\(14),
	datac => \uut|SlaveClkCounter\(12),
	datad => \uut|SlaveClkCounter\(11),
	combout => \uut|LessThan0~5_combout\);

-- Location: LCCOMB_X27_Y21_N26
\uut|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~8_combout\ = (\uut|LessThan0~6_combout\ & (\uut|LessThan0~4_combout\ & (\uut|LessThan0~7_combout\ & \uut|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|LessThan0~6_combout\,
	datab => \uut|LessThan0~4_combout\,
	datac => \uut|LessThan0~7_combout\,
	datad => \uut|LessThan0~5_combout\,
	combout => \uut|LessThan0~8_combout\);

-- Location: LCCOMB_X27_Y21_N20
\uut|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|LessThan0~9_combout\ = (\uut|SlaveClkCounter\(31)) # (\uut|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(31),
	datad => \uut|LessThan0~8_combout\,
	combout => \uut|LessThan0~9_combout\);

-- Location: LCCOMB_X27_Y21_N8
\uut|DataYReg[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[7]~2_combout\ = (\uut|State.ReadYReg~regout\ & (\uut|RegAndClockGen~10_combout\ & ((\uut|LessThan0~9_combout\) # (!\uut|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Equal3~1_combout\,
	datab => \uut|State.ReadYReg~regout\,
	datac => \uut|LessThan0~9_combout\,
	datad => \uut|RegAndClockGen~10_combout\,
	combout => \uut|DataYReg[7]~2_combout\);

-- Location: LCCOMB_X29_Y17_N20
\uut|DataYReg[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[0]~3_combout\ = (\uut|DataYReg[7]~2_combout\ & ((\uut|MotionReg[0]~2_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[0]~2_combout\ & ((\uut|DataYReg\(0)))))) # (!\uut|DataYReg[7]~2_combout\ & (((\uut|DataYReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataYReg[7]~2_combout\,
	datac => \uut|DataYReg\(0),
	datad => \uut|MotionReg[0]~2_combout\,
	combout => \uut|DataYReg[0]~3_combout\);

-- Location: LCFF_X29_Y17_N21
\uut|DataYReg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[0]~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(0));

-- Location: LCFF_X29_Y17_N27
\uut|oDataY[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector138~0_combout\,
	sdata => \uut|DataYReg\(0),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(0));

-- Location: LCCOMB_X27_Y17_N30
\uut|Selector136~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector136~0_combout\ = (!\uut|State.Init~regout\ & \uut|oDataY\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Init~regout\,
	datac => \uut|oDataY\(2),
	combout => \uut|Selector136~0_combout\);

-- Location: LCCOMB_X16_Y21_N16
\uut|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector44~0_combout\ = (((\uut|State.Init~regout\) # (!\uut|WideOr1~1_combout\)) # (!\uut|SlaveClkCounter[15]~0_combout\)) # (!\uut|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Add2~4_combout\,
	datab => \uut|SlaveClkCounter[15]~0_combout\,
	datac => \uut|WideOr1~1_combout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector44~0_combout\);

-- Location: LCFF_X16_Y21_N17
\uut|SlaveClkCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector44~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	ena => \uut|SlaveClkCounter[15]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|SlaveClkCounter\(2));

-- Location: LCCOMB_X27_Y17_N26
\uut|DataYReg[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[3]~8_combout\ = (\uut|DataYReg[7]~2_combout\ & \uut|SlaveClkCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|DataYReg[7]~2_combout\,
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|DataYReg[3]~8_combout\);

-- Location: LCCOMB_X27_Y17_N28
\uut|DataYReg[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[2]~13_combout\ = (\uut|SlaveClkCounter\(0) & !\uut|SlaveClkCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|DataYReg[2]~13_combout\);

-- Location: LCCOMB_X27_Y17_N14
\uut|DataYReg[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[2]~14_combout\ = (\uut|DataYReg[2]~13_combout\ & ((\uut|DataYReg[3]~7_combout\) # ((!\uut|DataYReg[3]~8_combout\ & \uut|DataYReg\(2))))) # (!\uut|DataYReg[2]~13_combout\ & (((\uut|DataYReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|DataYReg[3]~7_combout\,
	datab => \uut|DataYReg[3]~8_combout\,
	datac => \uut|DataYReg\(2),
	datad => \uut|DataYReg[2]~13_combout\,
	combout => \uut|DataYReg[2]~14_combout\);

-- Location: LCFF_X27_Y17_N15
\uut|DataYReg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[2]~14_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(2));

-- Location: LCFF_X27_Y17_N31
\uut|oDataY[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector136~0_combout\,
	sdata => \uut|DataYReg\(2),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(2));

-- Location: LCCOMB_X27_Y17_N24
\uut|Selector131~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector131~0_combout\ = (!\uut|State.Init~regout\ & \uut|oDataY\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Init~regout\,
	datac => \uut|oDataY\(7),
	combout => \uut|Selector131~0_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y17_N2
\uut|MotionReg[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[7]~3_combout\ = (!\uut|SlaveClkCounter\(2) & (!\uut|SlaveClkCounter\(0) & !\uut|SlaveClkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(2),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|MotionReg[7]~3_combout\);

-- Location: LCCOMB_X27_Y17_N8
\uut|DataYReg[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[7]~4_combout\ = (\uut|DataYReg[7]~2_combout\ & ((\uut|MotionReg[7]~3_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[7]~3_combout\ & ((\uut|DataYReg\(7)))))) # (!\uut|DataYReg[7]~2_combout\ & (((\uut|DataYReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|DataYReg[7]~2_combout\,
	datab => \iMISO~combout\,
	datac => \uut|DataYReg\(7),
	datad => \uut|MotionReg[7]~3_combout\,
	combout => \uut|DataYReg[7]~4_combout\);

-- Location: LCFF_X27_Y17_N9
\uut|DataYReg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[7]~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(7));

-- Location: LCFF_X27_Y17_N25
\uut|oDataY[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector131~0_combout\,
	sdata => \uut|DataYReg\(7),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(7));

-- Location: LCCOMB_X31_Y17_N30
\uut|Selector132~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector132~0_combout\ = (\uut|oDataY\(6) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataY\(6),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector132~0_combout\);

-- Location: LCCOMB_X32_Y17_N16
\uut|MotionReg[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[6]~5_combout\ = (\uut|SlaveClkCounter\(0) & (!\uut|SlaveClkCounter\(1) & !\uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|MotionReg[6]~5_combout\);

-- Location: LCCOMB_X31_Y17_N20
\uut|DataYReg[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[6]~10_combout\ = (\uut|DataYReg[7]~2_combout\ & ((\uut|MotionReg[6]~5_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[6]~5_combout\ & ((\uut|DataYReg\(6)))))) # (!\uut|DataYReg[7]~2_combout\ & (((\uut|DataYReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataYReg[7]~2_combout\,
	datac => \uut|DataYReg\(6),
	datad => \uut|MotionReg[6]~5_combout\,
	combout => \uut|DataYReg[6]~10_combout\);

-- Location: LCFF_X31_Y17_N21
\uut|DataYReg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[6]~10_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(6));

-- Location: LCFF_X31_Y17_N31
\uut|oDataY[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector132~0_combout\,
	sdata => \uut|DataYReg\(6),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(6));

-- Location: LCCOMB_X34_Y25_N14
\CheckValidData~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~4_combout\ = (\uut|oDataY\(3) & (((\uut|oDataY\(2) & \uut|oDataY\(7))) # (!\uut|oDataY\(6)))) # (!\uut|oDataY\(3) & (!\uut|oDataY\(6) & ((\uut|oDataY\(2)) # (\uut|oDataY\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(3),
	datab => \uut|oDataY\(2),
	datac => \uut|oDataY\(7),
	datad => \uut|oDataY\(6),
	combout => \CheckValidData~4_combout\);

-- Location: LCCOMB_X31_Y17_N0
\uut|Selector133~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector133~0_combout\ = (\uut|oDataY\(5) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataY\(5),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector133~0_combout\);

-- Location: LCCOMB_X32_Y17_N18
\uut|MotionReg[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[5]~7_combout\ = (!\uut|SlaveClkCounter\(0) & (\uut|SlaveClkCounter\(1) & !\uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|MotionReg[5]~7_combout\);

-- Location: LCCOMB_X31_Y17_N16
\uut|DataYReg[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[5]~5_combout\ = (\uut|DataYReg[7]~2_combout\ & ((\uut|MotionReg[5]~7_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[5]~7_combout\ & ((\uut|DataYReg\(5)))))) # (!\uut|DataYReg[7]~2_combout\ & (((\uut|DataYReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataYReg[7]~2_combout\,
	datac => \uut|DataYReg\(5),
	datad => \uut|MotionReg[5]~7_combout\,
	combout => \uut|DataYReg[5]~5_combout\);

-- Location: LCFF_X31_Y17_N17
\uut|DataYReg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[5]~5_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(5));

-- Location: LCFF_X31_Y17_N1
\uut|oDataY[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector133~0_combout\,
	sdata => \uut|DataYReg\(5),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(5));

-- Location: LCCOMB_X27_Y17_N0
\uut|Selector137~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector137~0_combout\ = (!\uut|State.Init~regout\ & \uut|oDataY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Init~regout\,
	datac => \uut|oDataY\(1),
	combout => \uut|Selector137~0_combout\);

-- Location: LCCOMB_X27_Y17_N6
\uut|DataYReg[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[3]~7_combout\ = (\uut|DataYReg[7]~2_combout\ & (\iMISO~combout\ & \uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|DataYReg[7]~2_combout\,
	datac => \iMISO~combout\,
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|DataYReg[3]~7_combout\);

-- Location: LCCOMB_X27_Y17_N4
\uut|DataYReg[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[1]~9_combout\ = (\uut|MotionReg[5]~18_combout\ & ((\uut|DataYReg[3]~7_combout\) # ((!\uut|DataYReg[3]~8_combout\ & \uut|DataYReg\(1))))) # (!\uut|MotionReg[5]~18_combout\ & (((\uut|DataYReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MotionReg[5]~18_combout\,
	datab => \uut|DataYReg[3]~8_combout\,
	datac => \uut|DataYReg\(1),
	datad => \uut|DataYReg[3]~7_combout\,
	combout => \uut|DataYReg[1]~9_combout\);

-- Location: LCFF_X27_Y17_N5
\uut|DataYReg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[1]~9_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(1));

-- Location: LCFF_X27_Y17_N1
\uut|oDataY[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector137~0_combout\,
	sdata => \uut|DataYReg\(1),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(1));

-- Location: LCCOMB_X29_Y17_N22
\uut|Selector134~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector134~0_combout\ = (\uut|oDataY\(4) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataY\(4),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector134~0_combout\);

-- Location: LCCOMB_X16_Y21_N6
\uut|MotionReg[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[4]~9_combout\ = (!\uut|SlaveClkCounter\(2) & (\uut|SlaveClkCounter\(0) & \uut|SlaveClkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(2),
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|MotionReg[4]~9_combout\);

-- Location: LCCOMB_X29_Y17_N14
\uut|DataYReg[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[4]~6_combout\ = (\uut|DataYReg[7]~2_combout\ & ((\uut|MotionReg[4]~9_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[4]~9_combout\ & ((\uut|DataYReg\(4)))))) # (!\uut|DataYReg[7]~2_combout\ & (((\uut|DataYReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataYReg[7]~2_combout\,
	datac => \uut|DataYReg\(4),
	datad => \uut|MotionReg[4]~9_combout\,
	combout => \uut|DataYReg[4]~6_combout\);

-- Location: LCFF_X29_Y17_N15
\uut|DataYReg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[4]~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(4));

-- Location: LCFF_X29_Y17_N23
\uut|oDataY[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector134~0_combout\,
	sdata => \uut|DataYReg\(4),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(4));

-- Location: LCCOMB_X34_Y25_N20
\CheckValidData~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~3_combout\ = (\uut|oDataY\(7) & (\uut|oDataY\(5) & (\uut|oDataY\(1) & \uut|oDataY\(4)))) # (!\uut|oDataY\(7) & ((\uut|oDataY\(5)) # ((\uut|oDataY\(1)) # (\uut|oDataY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(5),
	datac => \uut|oDataY\(1),
	datad => \uut|oDataY\(4),
	combout => \CheckValidData~3_combout\);

-- Location: LCCOMB_X33_Y17_N28
\CheckValidData~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~5_combout\ = (\uut|oDataY\(6) & (((!\CheckValidData~3_combout\) # (!\CheckValidData~4_combout\)) # (!\uut|oDataY\(0)))) # (!\uut|oDataY\(6) & ((\uut|oDataY\(0)) # ((\CheckValidData~4_combout\) # (\CheckValidData~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(6),
	datab => \uut|oDataY\(0),
	datac => \CheckValidData~4_combout\,
	datad => \CheckValidData~3_combout\,
	combout => \CheckValidData~5_combout\);

-- Location: LCCOMB_X27_Y21_N12
\uut|MotionReg[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[7]~19_combout\ = (\uut|State.ReadMotionReg~regout\ & (\uut|RegAndClockGen~10_combout\ & ((\uut|LessThan0~8_combout\) # (\uut|SlaveClkCounter\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadMotionReg~regout\,
	datab => \uut|LessThan0~8_combout\,
	datac => \uut|SlaveClkCounter\(31),
	datad => \uut|RegAndClockGen~10_combout\,
	combout => \uut|MotionReg[7]~19_combout\);

-- Location: LCCOMB_X31_Y17_N22
\uut|MotionReg[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[4]~10_combout\ = (\uut|MotionReg[7]~19_combout\ & ((\uut|MotionReg[4]~9_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[4]~9_combout\ & ((\uut|MotionReg\(4)))))) # (!\uut|MotionReg[7]~19_combout\ & (((\uut|MotionReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[7]~19_combout\,
	datac => \uut|MotionReg\(4),
	datad => \uut|MotionReg[4]~9_combout\,
	combout => \uut|MotionReg[4]~10_combout\);

-- Location: LCFF_X31_Y17_N23
\uut|MotionReg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[4]~10_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(4));

-- Location: LCCOMB_X31_Y17_N12
\uut|MotionReg[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[5]~8_combout\ = (\uut|MotionReg[7]~19_combout\ & ((\uut|MotionReg[5]~7_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[5]~7_combout\ & ((\uut|MotionReg\(5)))))) # (!\uut|MotionReg[7]~19_combout\ & (((\uut|MotionReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[7]~19_combout\,
	datac => \uut|MotionReg\(5),
	datad => \uut|MotionReg[5]~7_combout\,
	combout => \uut|MotionReg[5]~8_combout\);

-- Location: LCFF_X31_Y17_N13
\uut|MotionReg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[5]~8_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(5));

-- Location: LCCOMB_X31_Y17_N2
\uut|MotionReg[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[7]~4_combout\ = (\uut|MotionReg[7]~19_combout\ & ((\uut|MotionReg[7]~3_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[7]~3_combout\ & ((\uut|MotionReg\(7)))))) # (!\uut|MotionReg[7]~19_combout\ & (((\uut|MotionReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[7]~19_combout\,
	datac => \uut|MotionReg\(7),
	datad => \uut|MotionReg[7]~3_combout\,
	combout => \uut|MotionReg[7]~4_combout\);

-- Location: LCFF_X31_Y17_N3
\uut|MotionReg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[7]~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(7));

-- Location: LCCOMB_X31_Y17_N18
\uut|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal7~0_combout\ = (!\uut|MotionReg\(6) & (!\uut|MotionReg\(4) & (!\uut|MotionReg\(5) & \uut|MotionReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MotionReg\(6),
	datab => \uut|MotionReg\(4),
	datac => \uut|MotionReg\(5),
	datad => \uut|MotionReg\(7),
	combout => \uut|Equal7~0_combout\);

-- Location: LCCOMB_X32_Y17_N12
\uut|MotionReg[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[3]~11_combout\ = (\uut|SlaveClkCounter\(2) & (!\uut|SlaveClkCounter\(1) & \uut|MotionReg[7]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(2),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|MotionReg[7]~19_combout\,
	combout => \uut|MotionReg[3]~11_combout\);

-- Location: LCCOMB_X32_Y17_N2
\uut|MotionReg[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[2]~13_combout\ = (\uut|SlaveClkCounter\(0) & ((\uut|MotionReg[3]~11_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[3]~11_combout\ & ((\uut|MotionReg\(2)))))) # (!\uut|SlaveClkCounter\(0) & (((\uut|MotionReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|MotionReg\(2),
	datad => \uut|MotionReg[3]~11_combout\,
	combout => \uut|MotionReg[2]~13_combout\);

-- Location: LCFF_X32_Y17_N3
\uut|MotionReg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[2]~13_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(2));

-- Location: LCCOMB_X32_Y17_N6
\uut|MotionReg[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[1]~14_combout\ = (!\uut|SlaveClkCounter\(0) & (\uut|SlaveClkCounter\(1) & \uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|MotionReg[1]~14_combout\);

-- Location: LCCOMB_X32_Y17_N20
\uut|MotionReg[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[1]~15_combout\ = (\uut|MotionReg[7]~19_combout\ & ((\uut|MotionReg[1]~14_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[1]~14_combout\ & ((\uut|MotionReg\(1)))))) # (!\uut|MotionReg[7]~19_combout\ & (((\uut|MotionReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MotionReg[7]~19_combout\,
	datab => \iMISO~combout\,
	datac => \uut|MotionReg\(1),
	datad => \uut|MotionReg[1]~14_combout\,
	combout => \uut|MotionReg[1]~15_combout\);

-- Location: LCFF_X32_Y17_N21
\uut|MotionReg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[1]~15_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(1));

-- Location: LCCOMB_X32_Y17_N0
\uut|MotionReg[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[3]~12_combout\ = (\uut|SlaveClkCounter\(0) & (((\uut|MotionReg\(3))))) # (!\uut|SlaveClkCounter\(0) & ((\uut|MotionReg[3]~11_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[3]~11_combout\ & ((\uut|MotionReg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|MotionReg\(3),
	datad => \uut|MotionReg[3]~11_combout\,
	combout => \uut|MotionReg[3]~12_combout\);

-- Location: LCFF_X32_Y17_N1
\uut|MotionReg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|MotionReg[3]~12_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MotionReg\(3));

-- Location: LCCOMB_X32_Y17_N24
\uut|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal7~1_combout\ = (!\uut|MotionReg\(0) & (!\uut|MotionReg\(2) & (!\uut|MotionReg\(1) & !\uut|MotionReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|MotionReg\(0),
	datab => \uut|MotionReg\(2),
	datac => \uut|MotionReg\(1),
	datad => \uut|MotionReg\(3),
	combout => \uut|Equal7~1_combout\);

-- Location: LCCOMB_X31_Y17_N4
\uut|Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Equal7~2_combout\ = (\uut|Equal7~0_combout\ & \uut|Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Equal7~0_combout\,
	datad => \uut|Equal7~1_combout\,
	combout => \uut|Equal7~2_combout\);

-- Location: LCCOMB_X31_Y17_N10
\uut|Selector114~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector114~1_combout\ = (\uut|State.OutputAndWaitForWrite~regout\ & (((\uut|Equal7~2_combout\)))) # (!\uut|State.OutputAndWaitForWrite~regout\ & (\uut|Selector114~0_combout\ & ((\uut|DataValid~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector114~0_combout\,
	datab => \uut|Equal7~2_combout\,
	datac => \uut|DataValid~regout\,
	datad => \uut|State.OutputAndWaitForWrite~regout\,
	combout => \uut|Selector114~1_combout\);

-- Location: LCFF_X31_Y17_N11
\uut|DataValid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector114~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataValid~regout\);

-- Location: LCCOMB_X31_Y17_N24
\uut|Selector125~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector125~0_combout\ = (\uut|oDataX\(5) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(5),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector125~0_combout\);

-- Location: LCCOMB_X27_Y21_N22
\uut|DataXReg[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[7]~13_combout\ = (\uut|State.ReadXReg~regout\ & (\uut|RegAndClockGen~10_combout\ & ((\uut|LessThan0~8_combout\) # (\uut|SlaveClkCounter\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.ReadXReg~regout\,
	datab => \uut|LessThan0~8_combout\,
	datac => \uut|SlaveClkCounter\(31),
	datad => \uut|RegAndClockGen~10_combout\,
	combout => \uut|DataXReg[7]~13_combout\);

-- Location: LCCOMB_X31_Y17_N26
\uut|DataXReg[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[5]~9_combout\ = (\uut|MotionReg[5]~7_combout\ & ((\uut|DataXReg[7]~13_combout\ & (\iMISO~combout\)) # (!\uut|DataXReg[7]~13_combout\ & ((\uut|DataXReg\(5)))))) # (!\uut|MotionReg[5]~7_combout\ & (((\uut|DataXReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[5]~7_combout\,
	datac => \uut|DataXReg\(5),
	datad => \uut|DataXReg[7]~13_combout\,
	combout => \uut|DataXReg[5]~9_combout\);

-- Location: LCFF_X31_Y17_N27
\uut|DataXReg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[5]~9_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(5));

-- Location: LCFF_X31_Y17_N25
\uut|oDataX[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector125~0_combout\,
	sdata => \uut|DataXReg\(5),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(5));

-- Location: LCCOMB_X33_Y17_N20
\uut|Selector129~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector129~0_combout\ = (\uut|oDataX\(1) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(1),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector129~0_combout\);

-- Location: LCCOMB_X32_Y17_N30
\uut|DataXReg[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[1]~12_combout\ = (\uut|DataXReg[7]~13_combout\ & ((\uut|MotionReg[1]~14_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[1]~14_combout\ & ((\uut|DataXReg\(1)))))) # (!\uut|DataXReg[7]~13_combout\ & (((\uut|DataXReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataXReg[7]~13_combout\,
	datac => \uut|DataXReg\(1),
	datad => \uut|MotionReg[1]~14_combout\,
	combout => \uut|DataXReg[1]~12_combout\);

-- Location: LCFF_X32_Y17_N31
\uut|DataXReg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[1]~12_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(1));

-- Location: LCFF_X33_Y17_N21
\uut|oDataX[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector129~0_combout\,
	sdata => \uut|DataXReg\(1),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(1));

-- Location: LCCOMB_X33_Y17_N10
\uut|Selector128~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector128~0_combout\ = (\uut|oDataX\(2) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(2),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector128~0_combout\);

-- Location: LCCOMB_X32_Y17_N8
\uut|DataXReg[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[2]~10_combout\ = (\uut|SlaveClkCounter\(0) & (!\uut|SlaveClkCounter\(1) & \uut|SlaveClkCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(0),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|SlaveClkCounter\(2),
	combout => \uut|DataXReg[2]~10_combout\);

-- Location: LCCOMB_X32_Y17_N4
\uut|DataXReg[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[2]~11_combout\ = (\uut|DataXReg[2]~10_combout\ & ((\uut|DataXReg[7]~13_combout\ & (\iMISO~combout\)) # (!\uut|DataXReg[7]~13_combout\ & ((\uut|DataXReg\(2)))))) # (!\uut|DataXReg[2]~10_combout\ & (((\uut|DataXReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataXReg[2]~10_combout\,
	datac => \uut|DataXReg\(2),
	datad => \uut|DataXReg[7]~13_combout\,
	combout => \uut|DataXReg[2]~11_combout\);

-- Location: LCFF_X32_Y17_N5
\uut|DataXReg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[2]~11_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(2));

-- Location: LCFF_X33_Y17_N11
\uut|oDataX[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector128~0_combout\,
	sdata => \uut|DataXReg\(2),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(2));

-- Location: LCCOMB_X33_Y17_N24
\CheckValidData~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~1_combout\ = (\uut|oDataX\(6) & (((\uut|oDataX\(1) & \uut|oDataX\(2))) # (!\uut|oDataX\(5)))) # (!\uut|oDataX\(6) & (!\uut|oDataX\(5) & ((\uut|oDataX\(1)) # (\uut|oDataX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(6),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(1),
	datad => \uut|oDataX\(2),
	combout => \CheckValidData~1_combout\);

-- Location: LCCOMB_X29_Y17_N18
\uut|Selector127~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector127~0_combout\ = (\uut|oDataX\(3) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(3),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector127~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\uut|DataXReg[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[3]~6_combout\ = (!\uut|SlaveClkCounter\(0) & (\uut|SlaveClkCounter\(2) & (!\uut|SlaveClkCounter\(1) & \uut|DataXReg[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(0),
	datab => \uut|SlaveClkCounter\(2),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|DataXReg[7]~13_combout\,
	combout => \uut|DataXReg[3]~6_combout\);

-- Location: LCCOMB_X29_Y17_N8
\uut|DataXReg[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[3]~7_combout\ = (\uut|DataXReg[3]~6_combout\ & (\iMISO~combout\)) # (!\uut|DataXReg[3]~6_combout\ & ((\uut|DataXReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datac => \uut|DataXReg\(3),
	datad => \uut|DataXReg[3]~6_combout\,
	combout => \uut|DataXReg[3]~7_combout\);

-- Location: LCFF_X29_Y17_N9
\uut|DataXReg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[3]~7_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(3));

-- Location: LCFF_X29_Y17_N19
\uut|oDataX[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector127~0_combout\,
	sdata => \uut|DataXReg\(3),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(3));

-- Location: LCCOMB_X33_Y17_N8
\uut|Selector130~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector130~0_combout\ = (\uut|oDataX\(0) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(0),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector130~0_combout\);

-- Location: LCCOMB_X27_Y21_N30
\uut|MotionReg[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|MotionReg[0]~16_combout\ = (\uut|MotionReg[0]~2_combout\ & ((\uut|SlaveClkCounter\(31)) # (!\uut|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|SlaveClkCounter\(31),
	datac => \uut|MotionReg[0]~2_combout\,
	datad => \uut|LessThan0~8_combout\,
	combout => \uut|MotionReg[0]~16_combout\);

-- Location: LCCOMB_X32_Y17_N26
\uut|DataXReg[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[0]~8_combout\ = (\uut|DataXReg[7]~13_combout\ & ((\uut|MotionReg[0]~16_combout\ & (\iMISO~combout\)) # (!\uut|MotionReg[0]~16_combout\ & ((\uut|DataXReg\(0)))))) # (!\uut|DataXReg[7]~13_combout\ & (((\uut|DataXReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|DataXReg[7]~13_combout\,
	datac => \uut|DataXReg\(0),
	datad => \uut|MotionReg[0]~16_combout\,
	combout => \uut|DataXReg[0]~8_combout\);

-- Location: LCFF_X32_Y17_N27
\uut|DataXReg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[0]~8_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(0));

-- Location: LCFF_X33_Y17_N9
\uut|oDataX[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector130~0_combout\,
	sdata => \uut|DataXReg\(0),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(0));

-- Location: LCCOMB_X31_Y17_N8
\uut|Selector124~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector124~0_combout\ = (\uut|oDataX\(6) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(6),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector124~0_combout\);

-- Location: LCCOMB_X31_Y17_N14
\uut|DataXReg[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[6]~4_combout\ = (\uut|MotionReg[6]~5_combout\ & ((\uut|DataXReg[7]~13_combout\ & (\iMISO~combout\)) # (!\uut|DataXReg[7]~13_combout\ & ((\uut|DataXReg\(6)))))) # (!\uut|MotionReg[6]~5_combout\ & (((\uut|DataXReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datab => \uut|MotionReg[6]~5_combout\,
	datac => \uut|DataXReg\(6),
	datad => \uut|DataXReg[7]~13_combout\,
	combout => \uut|DataXReg[6]~4_combout\);

-- Location: LCFF_X31_Y17_N15
\uut|DataXReg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[6]~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(6));

-- Location: LCFF_X31_Y17_N9
\uut|oDataX[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector124~0_combout\,
	sdata => \uut|DataXReg\(6),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(6));

-- Location: LCCOMB_X33_Y17_N22
\CheckValidData~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~0_combout\ = (\uut|oDataX\(4) & (((\uut|oDataX\(3) & \uut|oDataX\(0))) # (!\uut|oDataX\(6)))) # (!\uut|oDataX\(4) & (!\uut|oDataX\(6) & ((\uut|oDataX\(3)) # (\uut|oDataX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(6),
	combout => \CheckValidData~0_combout\);

-- Location: LCCOMB_X33_Y17_N2
\CheckValidData~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~2_combout\ = (\uut|oDataX\(7) & (((!\CheckValidData~0_combout\) # (!\CheckValidData~1_combout\)) # (!\uut|oDataX\(5)))) # (!\uut|oDataX\(7) & ((\uut|oDataX\(5)) # ((\CheckValidData~1_combout\) # (\CheckValidData~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(7),
	datab => \uut|oDataX\(5),
	datac => \CheckValidData~1_combout\,
	datad => \CheckValidData~0_combout\,
	combout => \CheckValidData~2_combout\);

-- Location: LCCOMB_X33_Y17_N14
\CheckValidData~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CheckValidData~6_combout\ = (\uut|DataValid~regout\ & ((\CheckValidData~5_combout\) # (\CheckValidData~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CheckValidData~5_combout\,
	datac => \uut|DataValid~regout\,
	datad => \CheckValidData~2_combout\,
	combout => \CheckValidData~6_combout\);

-- Location: LCFF_X33_Y17_N15
\oDataValid~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \CheckValidData~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oDataValid~reg0_regout\);

-- Location: LCCOMB_X44_Y25_N18
\SysClkCnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SysClkCnt~1_combout\ = (\Add0~14_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \Equal4~10_combout\,
	combout => \SysClkCnt~1_combout\);

-- Location: LCFF_X44_Y25_N19
\SysClkCnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \SysClkCnt~1_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(7));

-- Location: LCCOMB_X44_Y25_N28
\SysClkCnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SysClkCnt~2_combout\ = (\Add0~10_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \Equal4~10_combout\,
	combout => \SysClkCnt~2_combout\);

-- Location: LCFF_X44_Y25_N29
\SysClkCnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \SysClkCnt~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(5));

-- Location: LCCOMB_X44_Y25_N24
\SysClkCnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SysClkCnt~3_combout\ = (\Add0~8_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \Equal4~10_combout\,
	combout => \SysClkCnt~3_combout\);

-- Location: LCFF_X44_Y25_N25
\SysClkCnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \SysClkCnt~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(4));

-- Location: LCCOMB_X44_Y25_N10
\SysClkCnt[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SysClkCnt[0]~4_combout\ = !SysClkCnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SysClkCnt(0),
	combout => \SysClkCnt[0]~4_combout\);

-- Location: LCFF_X44_Y25_N11
\SysClkCnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \SysClkCnt[0]~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(0));

-- Location: LCCOMB_X43_Y25_N0
\Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(!SysClkCnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(0),
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X43_Y25_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (SysClkCnt(1) & (!\Add0~1_cout\)) # (!SysClkCnt(1) & ((\Add0~1_cout\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1_cout\) # (!SysClkCnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(1),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCFF_X43_Y25_N3
\SysClkCnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(1));

-- Location: LCCOMB_X43_Y25_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (SysClkCnt(2) & (\Add0~3\ $ (GND))) # (!SysClkCnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((SysClkCnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X43_Y25_N5
\SysClkCnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(2));

-- Location: LCCOMB_X43_Y25_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (SysClkCnt(3) & (!\Add0~5\)) # (!SysClkCnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!SysClkCnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X43_Y25_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (SysClkCnt(8) & (\Add0~15\ $ (GND))) # (!SysClkCnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((SysClkCnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X43_Y25_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (SysClkCnt(9) & (!\Add0~17\)) # (!SysClkCnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!SysClkCnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCFF_X43_Y25_N19
\SysClkCnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(9));

-- Location: LCCOMB_X43_Y25_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (SysClkCnt(10) & (\Add0~19\ $ (GND))) # (!SysClkCnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((SysClkCnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X44_Y25_N30
\SysClkCnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SysClkCnt~0_combout\ = (\Add0~20_combout\ & !\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datad => \Equal4~10_combout\,
	combout => \SysClkCnt~0_combout\);

-- Location: LCFF_X44_Y25_N31
\SysClkCnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \SysClkCnt~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(10));

-- Location: LCCOMB_X43_Y25_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (SysClkCnt(11) & (!\Add0~21\)) # (!SysClkCnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!SysClkCnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCFF_X43_Y25_N23
\SysClkCnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~22_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(11));

-- Location: LCCOMB_X43_Y25_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (SysClkCnt(13) & (!\Add0~25\)) # (!SysClkCnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!SysClkCnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCFF_X43_Y25_N27
\SysClkCnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~26_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(13));

-- Location: LCCOMB_X43_Y25_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (SysClkCnt(14) & (\Add0~27\ $ (GND))) # (!SysClkCnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((SysClkCnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCFF_X43_Y25_N29
\SysClkCnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~28_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(14));

-- Location: LCCOMB_X43_Y25_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (SysClkCnt(15) & (!\Add0~29\)) # (!SysClkCnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!SysClkCnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCFF_X43_Y25_N31
\SysClkCnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~30_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(15));

-- Location: LCCOMB_X43_Y24_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (SysClkCnt(16) & (\Add0~31\ $ (GND))) # (!SysClkCnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((SysClkCnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCFF_X43_Y24_N1
\SysClkCnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~32_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(16));

-- Location: LCCOMB_X43_Y24_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (SysClkCnt(17) & (!\Add0~33\)) # (!SysClkCnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!SysClkCnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCFF_X43_Y24_N3
\SysClkCnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~34_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(17));

-- Location: LCCOMB_X43_Y24_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (SysClkCnt(18) & (\Add0~35\ $ (GND))) # (!SysClkCnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((SysClkCnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCFF_X43_Y24_N5
\SysClkCnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~36_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(18));

-- Location: LCCOMB_X43_Y24_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (SysClkCnt(20) & (\Add0~39\ $ (GND))) # (!SysClkCnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((SysClkCnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCFF_X43_Y24_N9
\SysClkCnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~40_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(20));

-- Location: LCCOMB_X43_Y24_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (SysClkCnt(22) & (\Add0~43\ $ (GND))) # (!SysClkCnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((SysClkCnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X43_Y24_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (SysClkCnt(23) & (!\Add0~45\)) # (!SysClkCnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!SysClkCnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCFF_X43_Y24_N15
\SysClkCnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~46_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(23));

-- Location: LCFF_X43_Y24_N13
\SysClkCnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~44_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(22));

-- Location: LCCOMB_X43_Y24_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (SysClkCnt(24) & (\Add0~47\ $ (GND))) # (!SysClkCnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((SysClkCnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCFF_X43_Y24_N17
\SysClkCnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~48_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(24));

-- Location: LCCOMB_X44_Y25_N2
\Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!SysClkCnt(21) & (!SysClkCnt(23) & (!SysClkCnt(22) & !SysClkCnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(21),
	datab => SysClkCnt(23),
	datac => SysClkCnt(22),
	datad => SysClkCnt(24),
	combout => \Equal4~3_combout\);

-- Location: LCFF_X43_Y25_N7
\SysClkCnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(3));

-- Location: LCCOMB_X44_Y25_N26
\Equal4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (SysClkCnt(4) & (!SysClkCnt(2) & (!SysClkCnt(3) & !SysClkCnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(4),
	datab => SysClkCnt(2),
	datac => SysClkCnt(3),
	datad => SysClkCnt(1),
	combout => \Equal4~8_combout\);

-- Location: LCFF_X43_Y25_N17
\SysClkCnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(8));

-- Location: LCCOMB_X44_Y25_N14
\Equal4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!SysClkCnt(6) & (SysClkCnt(7) & (!SysClkCnt(8) & SysClkCnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(6),
	datab => SysClkCnt(7),
	datac => SysClkCnt(8),
	datad => SysClkCnt(5),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X42_Y25_N8
\Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!SysClkCnt(16) & (!SysClkCnt(14) & (!SysClkCnt(13) & !SysClkCnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(16),
	datab => SysClkCnt(14),
	datac => SysClkCnt(13),
	datad => SysClkCnt(15),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X44_Y25_N4
\Equal4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~6_combout\ & (\Equal4~8_combout\ & (\Equal4~7_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~6_combout\,
	datab => \Equal4~8_combout\,
	datac => \Equal4~7_combout\,
	datad => \Equal4~5_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X43_Y24_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (SysClkCnt(25) & (!\Add0~49\)) # (!SysClkCnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!SysClkCnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCFF_X43_Y24_N19
\SysClkCnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~50_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(25));

-- Location: LCCOMB_X43_Y24_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (SysClkCnt(26) & (\Add0~51\ $ (GND))) # (!SysClkCnt(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((SysClkCnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCFF_X43_Y24_N21
\SysClkCnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~52_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(26));

-- Location: LCCOMB_X43_Y24_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (SysClkCnt(27) & (!\Add0~53\)) # (!SysClkCnt(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!SysClkCnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCFF_X43_Y24_N23
\SysClkCnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~54_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(27));

-- Location: LCCOMB_X43_Y24_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (SysClkCnt(28) & (\Add0~55\ $ (GND))) # (!SysClkCnt(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((SysClkCnt(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCFF_X43_Y24_N25
\SysClkCnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~56_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(28));

-- Location: LCCOMB_X44_Y25_N22
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!SysClkCnt(27) & (!SysClkCnt(26) & (!SysClkCnt(25) & !SysClkCnt(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(27),
	datab => SysClkCnt(26),
	datac => SysClkCnt(25),
	datad => SysClkCnt(28),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X43_Y24_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (SysClkCnt(29) & (!\Add0~57\)) # (!SysClkCnt(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!SysClkCnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X43_Y24_N27
\SysClkCnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~58_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(29));

-- Location: LCCOMB_X43_Y24_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (SysClkCnt(30) & (\Add0~59\ $ (GND))) # (!SysClkCnt(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((SysClkCnt(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCFF_X43_Y24_N29
\SysClkCnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~60_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(30));

-- Location: LCCOMB_X43_Y24_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (SysClkCnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => SysClkCnt(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCFF_X43_Y24_N31
\SysClkCnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Add0~62_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => SysClkCnt(31));

-- Location: LCCOMB_X44_Y25_N12
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!SysClkCnt(31) & SysClkCnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SysClkCnt(31),
	datad => SysClkCnt(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X44_Y25_N0
\Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!SysClkCnt(29) & (\Equal4~1_combout\ & (!SysClkCnt(30) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SysClkCnt(29),
	datab => \Equal4~1_combout\,
	datac => SysClkCnt(30),
	datad => \Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X44_Y25_N6
\Equal4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~10_combout\ = (\Equal4~4_combout\ & (\Equal4~3_combout\ & (\Equal4~9_combout\ & \Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~4_combout\,
	datab => \Equal4~3_combout\,
	datac => \Equal4~9_combout\,
	datad => \Equal4~2_combout\,
	combout => \Equal4~10_combout\);

-- Location: LCCOMB_X44_Y25_N8
\SysClkGen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SysClkGen~0_combout\ = \SysClkGen~regout\ $ (\Equal4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SysClkGen~regout\,
	datad => \Equal4~10_combout\,
	combout => \SysClkGen~0_combout\);

-- Location: LCFF_X44_Y25_N9
SysClkGen : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \SysClkGen~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SysClkGen~regout\);

-- Location: LCCOMB_X27_Y21_N16
\uut|Selector112~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~4_combout\ = ((!\uut|LessThan0~8_combout\ & (\uut|Equal3~1_combout\ & !\uut|SlaveClkCounter\(31)))) # (!\uut|RegAndClockGen~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~12_combout\,
	datab => \uut|LessThan0~8_combout\,
	datac => \uut|Equal3~1_combout\,
	datad => \uut|SlaveClkCounter\(31),
	combout => \uut|Selector112~4_combout\);

-- Location: LCCOMB_X31_Y17_N28
\uut|Selector114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector114~0_combout\ = (!\uut|State.SetMotionReg~regout\ & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|State.SetMotionReg~regout\,
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector114~0_combout\);

-- Location: LCCOMB_X27_Y21_N18
\uut|Selector112~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~5_combout\ = (\uut|MasterOutput~regout\ & ((\uut|SysClkGenCounter[4]~1_combout\ & ((\uut|Selector114~0_combout\))) # (!\uut|SysClkGenCounter[4]~1_combout\ & (\uut|Selector112~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SysClkGenCounter[4]~1_combout\,
	datab => \uut|MasterOutput~regout\,
	datac => \uut|Selector112~4_combout\,
	datad => \uut|Selector114~0_combout\,
	combout => \uut|Selector112~5_combout\);

-- Location: LCCOMB_X16_Y21_N12
\uut|Selector112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~0_combout\ = (!\uut|Add2~2_combout\ & (\uut|Add2~0_combout\ & \uut|State.SetMotionReg~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|Add2~2_combout\,
	datac => \uut|Add2~0_combout\,
	datad => \uut|State.SetMotionReg~regout\,
	combout => \uut|Selector112~0_combout\);

-- Location: LCCOMB_X27_Y21_N24
\uut|Selector112~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~2_combout\ = (\uut|Selector112~1_combout\ & ((\uut|RegAndClockGen~12_combout\) # ((\uut|RegAndClockGen~10_combout\ & \uut|Selector112~0_combout\)))) # (!\uut|Selector112~1_combout\ & (\uut|RegAndClockGen~10_combout\ & 
-- (\uut|Selector112~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|Selector112~1_combout\,
	datab => \uut|RegAndClockGen~10_combout\,
	datac => \uut|Selector112~0_combout\,
	datad => \uut|RegAndClockGen~12_combout\,
	combout => \uut|Selector112~2_combout\);

-- Location: LCCOMB_X27_Y21_N14
\uut|Selector112~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~3_combout\ = (\uut|LessThan0~9_combout\ & (\uut|Equal3~1_combout\ & (\uut|Selector112~2_combout\ & !\uut|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|LessThan0~9_combout\,
	datab => \uut|Equal3~1_combout\,
	datac => \uut|Selector112~2_combout\,
	datad => \uut|Add2~4_combout\,
	combout => \uut|Selector112~3_combout\);

-- Location: LCCOMB_X27_Y21_N28
\uut|Selector112~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~6_combout\ = (\uut|State.SetMotionReg~regout\ & \uut|MasterOutput~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.SetMotionReg~regout\,
	datad => \uut|MasterOutput~regout\,
	combout => \uut|Selector112~6_combout\);

-- Location: LCCOMB_X27_Y21_N0
\uut|Selector112~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector112~7_combout\ = (\uut|Selector112~5_combout\) # ((\uut|Selector112~3_combout\) # ((!\uut|DataYReg[7]~15_combout\ & \uut|Selector112~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|DataYReg[7]~15_combout\,
	datab => \uut|Selector112~5_combout\,
	datac => \uut|Selector112~3_combout\,
	datad => \uut|Selector112~6_combout\,
	combout => \uut|Selector112~7_combout\);

-- Location: LCFF_X27_Y21_N1
\uut|MasterOutput\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector112~7_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|MasterOutput~regout\);

-- Location: LCCOMB_X29_Y16_N24
\uut|RegAndClockGen~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~14_combout\ = (\uut|ResetCnt\(8) & (!\uut|ResetCnt\(10) & (\uut|ResetCnt\(6) & \uut|ResetCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ResetCnt\(8),
	datab => \uut|ResetCnt\(10),
	datac => \uut|ResetCnt\(6),
	datad => \uut|ResetCnt\(7),
	combout => \uut|RegAndClockGen~14_combout\);

-- Location: LCCOMB_X29_Y16_N18
\uut|RegAndClockGen~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~15_combout\ = (\uut|RegAndClockGen~13_combout\ & (!\uut|ResetCnt\(13) & (\uut|RegAndClockGen~14_combout\ & \uut|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|RegAndClockGen~13_combout\,
	datab => \uut|ResetCnt\(13),
	datac => \uut|RegAndClockGen~14_combout\,
	datad => \uut|Equal1~7_combout\,
	combout => \uut|RegAndClockGen~15_combout\);

-- Location: LCCOMB_X25_Y16_N0
\uut|ResetSensor~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|ResetSensor~0_combout\ = (\uut|ResetSensor~regout\) # ((!\uut|State.Reset~regout\ & \uut|RegAndClockGen~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Reset~regout\,
	datac => \uut|ResetSensor~regout\,
	datad => \uut|RegAndClockGen~15_combout\,
	combout => \uut|ResetSensor~0_combout\);

-- Location: LCFF_X25_Y16_N1
\uut|ResetSensor\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|ResetSensor~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|ResetSensor~regout\);

-- Location: LCCOMB_X27_Y17_N12
\uut|Selector135~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector135~0_combout\ = (!\uut|State.Init~regout\ & \uut|oDataY\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|State.Init~regout\,
	datac => \uut|oDataY\(3),
	combout => \uut|Selector135~0_combout\);

-- Location: LCCOMB_X27_Y17_N22
\uut|DataYReg[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[3]~11_combout\ = (!\uut|SlaveClkCounter\(0) & !\uut|SlaveClkCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|SlaveClkCounter\(0),
	datad => \uut|SlaveClkCounter\(1),
	combout => \uut|DataYReg[3]~11_combout\);

-- Location: LCCOMB_X27_Y17_N20
\uut|DataYReg[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataYReg[3]~12_combout\ = (\uut|DataYReg[3]~11_combout\ & ((\uut|DataYReg[3]~7_combout\) # ((!\uut|DataYReg[3]~8_combout\ & \uut|DataYReg\(3))))) # (!\uut|DataYReg[3]~11_combout\ & (((\uut|DataYReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|DataYReg[3]~7_combout\,
	datab => \uut|DataYReg[3]~8_combout\,
	datac => \uut|DataYReg\(3),
	datad => \uut|DataYReg[3]~11_combout\,
	combout => \uut|DataYReg[3]~12_combout\);

-- Location: LCFF_X27_Y17_N21
\uut|DataYReg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataYReg[3]~12_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataYReg\(3));

-- Location: LCFF_X27_Y17_N13
\uut|oDataY[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector135~0_combout\,
	sdata => \uut|DataYReg\(3),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataY\(3));

-- Location: LCCOMB_X34_Y25_N8
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

-- Location: LCFF_X34_Y25_N9
\oHEX1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[0]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N26
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

-- Location: LCFF_X34_Y25_N27
\oHEX1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux5~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[1]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N4
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

-- Location: LCFF_X34_Y25_N5
\oHEX1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux4~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[2]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N6
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

-- Location: LCFF_X34_Y25_N7
\oHEX1[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux3~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[3]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N24
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

-- Location: LCFF_X34_Y25_N25
\oHEX1[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux2~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[4]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N10
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

-- Location: LCFF_X34_Y25_N11
\oHEX1[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux1~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[5]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N28
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

-- Location: LCFF_X34_Y25_N29
\oHEX1[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux0~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX1[6]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N30
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\uut|oDataY\(7) & ((\uut|oDataY\(6) $ (!\uut|oDataY\(5))) # (!\uut|oDataY\(4)))) # (!\uut|oDataY\(7) & ((\uut|oDataY\(5)) # (\uut|oDataY\(6) $ (!\uut|oDataY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux13~0_combout\);

-- Location: LCFF_X34_Y25_N31
\oHEX2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux13~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[0]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N16
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\uut|oDataY\(7) & ((\uut|oDataY\(4) & ((!\uut|oDataY\(5)))) # (!\uut|oDataY\(4) & (!\uut|oDataY\(6))))) # (!\uut|oDataY\(7) & ((\uut|oDataY\(5) $ (!\uut|oDataY\(4))) # (!\uut|oDataY\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux12~0_combout\);

-- Location: LCFF_X34_Y25_N17
\oHEX2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux12~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[1]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N18
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\uut|oDataY\(7) & (((!\uut|oDataY\(5) & \uut|oDataY\(4))) # (!\uut|oDataY\(6)))) # (!\uut|oDataY\(7) & ((\uut|oDataY\(6)) # ((\uut|oDataY\(4)) # (!\uut|oDataY\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux11~0_combout\);

-- Location: LCFF_X34_Y25_N19
\oHEX2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux11~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[2]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N12
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\uut|oDataY\(5) & ((\uut|oDataY\(6) & ((!\uut|oDataY\(4)))) # (!\uut|oDataY\(6) & ((\uut|oDataY\(4)) # (!\uut|oDataY\(7)))))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(7)) # (\uut|oDataY\(6) $ (!\uut|oDataY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux10~0_combout\);

-- Location: LCFF_X34_Y25_N13
\oHEX2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux10~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[3]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N22
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\uut|oDataY\(5) & ((\uut|oDataY\(7)) # ((!\uut|oDataY\(4))))) # (!\uut|oDataY\(5) & ((\uut|oDataY\(6) & (\uut|oDataY\(7))) # (!\uut|oDataY\(6) & ((!\uut|oDataY\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux9~0_combout\);

-- Location: LCFF_X34_Y25_N23
\oHEX2[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux9~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[4]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N0
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\uut|oDataY\(6) & ((\uut|oDataY\(7) $ (!\uut|oDataY\(5))) # (!\uut|oDataY\(4)))) # (!\uut|oDataY\(6) & ((\uut|oDataY\(7)) # ((!\uut|oDataY\(5) & !\uut|oDataY\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux8~0_combout\);

-- Location: LCFF_X34_Y25_N1
\oHEX2[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux8~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[5]~reg0_regout\);

-- Location: LCCOMB_X34_Y25_N2
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\uut|oDataY\(4) & (!\uut|oDataY\(7) & (\uut|oDataY\(6) $ (!\uut|oDataY\(5))))) # (!\uut|oDataY\(4) & (!\uut|oDataY\(5) & (\uut|oDataY\(7) $ (!\uut|oDataY\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataY\(7),
	datab => \uut|oDataY\(6),
	datac => \uut|oDataY\(5),
	datad => \uut|oDataY\(4),
	combout => \Mux7~0_combout\);

-- Location: LCFF_X34_Y25_N3
\oHEX2[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux7~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX2[6]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N0
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\uut|oDataX\(3) & ((\uut|oDataX\(1) $ (!\uut|oDataX\(2))) # (!\uut|oDataX\(0)))) # (!\uut|oDataX\(3) & ((\uut|oDataX\(1)) # (\uut|oDataX\(0) $ (!\uut|oDataX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux20~0_combout\);

-- Location: LCFF_X33_Y17_N1
\oHEX3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux20~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[0]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N18
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\uut|oDataX\(1) & ((\uut|oDataX\(0) & (!\uut|oDataX\(3))) # (!\uut|oDataX\(0) & ((!\uut|oDataX\(2)))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(3) $ (!\uut|oDataX\(0))) # (!\uut|oDataX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux19~0_combout\);

-- Location: LCFF_X33_Y17_N19
\oHEX3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux19~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[1]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N4
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\uut|oDataX\(3) & (((!\uut|oDataX\(1) & \uut|oDataX\(0))) # (!\uut|oDataX\(2)))) # (!\uut|oDataX\(3) & (((\uut|oDataX\(0)) # (\uut|oDataX\(2))) # (!\uut|oDataX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux18~0_combout\);

-- Location: LCFF_X33_Y17_N5
\oHEX3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux18~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[2]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N6
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\uut|oDataX\(1) & ((\uut|oDataX\(0) & ((!\uut|oDataX\(2)))) # (!\uut|oDataX\(0) & ((\uut|oDataX\(2)) # (!\uut|oDataX\(3)))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(3)) # (\uut|oDataX\(0) $ (!\uut|oDataX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux17~0_combout\);

-- Location: LCFF_X33_Y17_N7
\oHEX3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux17~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[3]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N16
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\uut|oDataX\(1) & ((\uut|oDataX\(3)) # ((!\uut|oDataX\(0))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(2) & (\uut|oDataX\(3))) # (!\uut|oDataX\(2) & ((!\uut|oDataX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux16~0_combout\);

-- Location: LCFF_X33_Y17_N17
\oHEX3[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux16~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[4]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N26
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\uut|oDataX\(1) & ((\uut|oDataX\(3)) # ((!\uut|oDataX\(0) & \uut|oDataX\(2))))) # (!\uut|oDataX\(1) & ((\uut|oDataX\(3) $ (\uut|oDataX\(2))) # (!\uut|oDataX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux15~0_combout\);

-- Location: LCFF_X33_Y17_N27
\oHEX3[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux15~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[5]~reg0_regout\);

-- Location: LCCOMB_X33_Y17_N12
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\uut|oDataX\(0) & (!\uut|oDataX\(3) & (\uut|oDataX\(1) $ (!\uut|oDataX\(2))))) # (!\uut|oDataX\(0) & (!\uut|oDataX\(1) & (\uut|oDataX\(3) $ (!\uut|oDataX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(1),
	datab => \uut|oDataX\(3),
	datac => \uut|oDataX\(0),
	datad => \uut|oDataX\(2),
	combout => \Mux14~0_combout\);

-- Location: LCFF_X33_Y17_N13
\oHEX3[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux14~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX3[6]~reg0_regout\);

-- Location: LCCOMB_X29_Y17_N12
\uut|Selector123~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|Selector123~0_combout\ = (\uut|oDataX\(7) & !\uut|State.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|oDataX\(7),
	datad => \uut|State.Init~regout\,
	combout => \uut|Selector123~0_combout\);

-- Location: LCCOMB_X29_Y17_N30
\uut|DataXReg[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[7]~2_combout\ = (!\uut|SlaveClkCounter\(0) & (!\uut|SlaveClkCounter\(2) & (!\uut|SlaveClkCounter\(1) & \uut|DataXReg[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|SlaveClkCounter\(0),
	datab => \uut|SlaveClkCounter\(2),
	datac => \uut|SlaveClkCounter\(1),
	datad => \uut|DataXReg[7]~13_combout\,
	combout => \uut|DataXReg[7]~2_combout\);

-- Location: LCCOMB_X29_Y17_N24
\uut|DataXReg[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uut|DataXReg[7]~3_combout\ = (\uut|DataXReg[7]~2_combout\ & (\iMISO~combout\)) # (!\uut|DataXReg[7]~2_combout\ & ((\uut|DataXReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iMISO~combout\,
	datac => \uut|DataXReg\(7),
	datad => \uut|DataXReg[7]~2_combout\,
	combout => \uut|DataXReg[7]~3_combout\);

-- Location: LCFF_X29_Y17_N25
\uut|DataXReg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|DataXReg[7]~3_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|DataXReg\(7));

-- Location: LCFF_X29_Y17_N13
\uut|oDataX[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \uut|Selector123~0_combout\,
	sdata => \uut|DataXReg\(7),
	sload => \uut|State.OutputAndWaitForWrite~regout\,
	ena => \inResetAsync~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uut|oDataX\(7));

-- Location: LCCOMB_X31_Y25_N8
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\uut|oDataX\(7) & ((\uut|oDataX\(5) $ (!\uut|oDataX\(6))) # (!\uut|oDataX\(4)))) # (!\uut|oDataX\(7) & ((\uut|oDataX\(5)) # (\uut|oDataX\(4) $ (!\uut|oDataX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux27~0_combout\);

-- Location: LCFF_X31_Y25_N9
\oHEX4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux27~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[0]~reg0_regout\);

-- Location: LCCOMB_X31_Y25_N2
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\uut|oDataX\(5) & ((\uut|oDataX\(4) & (!\uut|oDataX\(7))) # (!\uut|oDataX\(4) & ((!\uut|oDataX\(6)))))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(4) $ (!\uut|oDataX\(7))) # (!\uut|oDataX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux26~0_combout\);

-- Location: LCFF_X31_Y25_N3
\oHEX4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux26~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[1]~reg0_regout\);

-- Location: LCCOMB_X31_Y25_N12
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\uut|oDataX\(7) & (((\uut|oDataX\(4) & !\uut|oDataX\(5))) # (!\uut|oDataX\(6)))) # (!\uut|oDataX\(7) & ((\uut|oDataX\(4)) # ((\uut|oDataX\(6)) # (!\uut|oDataX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux25~0_combout\);

-- Location: LCFF_X31_Y25_N13
\oHEX4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux25~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[2]~reg0_regout\);

-- Location: LCCOMB_X31_Y25_N22
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\uut|oDataX\(5) & ((\uut|oDataX\(4) & ((!\uut|oDataX\(6)))) # (!\uut|oDataX\(4) & ((\uut|oDataX\(6)) # (!\uut|oDataX\(7)))))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(7)) # (\uut|oDataX\(4) $ (!\uut|oDataX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux24~0_combout\);

-- Location: LCFF_X31_Y25_N23
\oHEX4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux24~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[3]~reg0_regout\);

-- Location: LCCOMB_X31_Y25_N24
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\uut|oDataX\(5) & (((\uut|oDataX\(7))) # (!\uut|oDataX\(4)))) # (!\uut|oDataX\(5) & ((\uut|oDataX\(6) & ((\uut|oDataX\(7)))) # (!\uut|oDataX\(6) & (!\uut|oDataX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux23~0_combout\);

-- Location: LCFF_X31_Y25_N25
\oHEX4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux23~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[4]~reg0_regout\);

-- Location: LCCOMB_X31_Y25_N10
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\uut|oDataX\(4) & (\uut|oDataX\(7) $ (((!\uut|oDataX\(5) & \uut|oDataX\(6)))))) # (!\uut|oDataX\(4) & (((\uut|oDataX\(7)) # (\uut|oDataX\(6))) # (!\uut|oDataX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux22~0_combout\);

-- Location: LCFF_X31_Y25_N11
\oHEX4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux22~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[5]~reg0_regout\);

-- Location: LCCOMB_X31_Y25_N20
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\uut|oDataX\(4) & (!\uut|oDataX\(7) & (\uut|oDataX\(5) $ (!\uut|oDataX\(6))))) # (!\uut|oDataX\(4) & (!\uut|oDataX\(5) & (\uut|oDataX\(7) $ (!\uut|oDataX\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|oDataX\(4),
	datab => \uut|oDataX\(5),
	datac => \uut|oDataX\(7),
	datad => \uut|oDataX\(6),
	combout => \Mux21~0_combout\);

-- Location: LCFF_X31_Y25_N21
\oHEX4[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iClk~clkctrl_outclk\,
	datain => \Mux21~0_combout\,
	aclr => \ALT_INV_inResetAsync~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oHEX4[6]~reg0_regout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SysClkGen~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSysClk);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oResetSensor~I\ : cycloneii_io
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
	datain => \uut|ALT_INV_ResetSensor~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oResetSensor);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


