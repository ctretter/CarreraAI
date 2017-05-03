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

-- DATE "05/03/2017 12:23:23"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	TestOpticalSensorXYCycV IS
    PORT (
	iClk : IN std_logic;
	inResetAsync : IN std_logic;
	oDataValid : OUT std_logic;
	iMISO : IN std_logic;
	oSelect : OUT std_logic;
	oSysClk : OUT std_logic;
	oMOSI : OUT std_logic;
	oResetSensor : OUT std_logic;
	oNPD : OUT std_logic;
	oInitializedLED : OUT std_logic
	);
END TestOpticalSensorXYCycV;

-- Design Ports Information
-- oDataValid	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oSelect	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oSysClk	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oMOSI	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oResetSensor	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oNPD	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oInitializedLED	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iClk	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inResetAsync	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iMISO	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TestOpticalSensorXYCycV IS
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
SIGNAL ww_oNPD : std_logic;
SIGNAL ww_oInitializedLED : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \iClk~input_o\ : std_logic;
SIGNAL \iClk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \uut|Add1~37_sumout\ : std_logic;
SIGNAL \inResetAsync~input_o\ : std_logic;
SIGNAL \inResetAsync~inputCLKENA0_outclk\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~9_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~10\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~13_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~14\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~17_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~18\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~21_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~22\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~25_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~26\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~1_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~2\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~29_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~30\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~33_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~34\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~37_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~38\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~41_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~42\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~45_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~46\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~5_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~6\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~49_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~50\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~53_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~54\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~65_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~66\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~57_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~58\ : std_logic;
SIGNAL \GenerateStrobeKHz|Add0~61_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Equal0~2_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Equal0~0_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Equal0~1_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|Equal0~3_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|oStrobe~feeder_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|oStrobe~q\ : std_logic;
SIGNAL \uut|Add0~81_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~9_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~10\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~6\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~1_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~2\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~25_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~26\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~21_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ClkCounter~2_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~22\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~17_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ClkCounter~1_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~18\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~13_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Equal0~0_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Add0~5_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ClkCounter~0_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|Equal0~1_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|oStrobe~q\ : std_logic;
SIGNAL \GenerateStrobeMHz|oStrobe~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Equal3~2_combout\ : std_logic;
SIGNAL \uut|Equal3~1_combout\ : std_logic;
SIGNAL \uut|Add2~70\ : std_logic;
SIGNAL \uut|Add2~65_sumout\ : std_logic;
SIGNAL \uut|CntWaitCycles[29]~0_combout\ : std_logic;
SIGNAL \uut|State.DoReset~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[0]~0_combout\ : std_logic;
SIGNAL \uut|Selector6~7_combout\ : std_logic;
SIGNAL \uut|Selector6~10_combout\ : std_logic;
SIGNAL \uut|Selector6~11_combout\ : std_logic;
SIGNAL \uut|SysClkEnable~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Sel~q\ : std_logic;
SIGNAL \uut|SlaveClkCounter[0]~1_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~6\ : std_logic;
SIGNAL \uut|Add3~9_sumout\ : std_logic;
SIGNAL \uut|Selector80~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~10\ : std_logic;
SIGNAL \uut|Add3~1_sumout\ : std_logic;
SIGNAL \uut|Selector79~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~2\ : std_logic;
SIGNAL \uut|Add3~121_sumout\ : std_logic;
SIGNAL \uut|Selector78~0_combout\ : std_logic;
SIGNAL \uut|Add3~122\ : std_logic;
SIGNAL \uut|Add3~109_sumout\ : std_logic;
SIGNAL \uut|Selector77~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~110\ : std_logic;
SIGNAL \uut|Add3~105_sumout\ : std_logic;
SIGNAL \uut|Selector76~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~106\ : std_logic;
SIGNAL \uut|Add3~117_sumout\ : std_logic;
SIGNAL \uut|Selector75~0_combout\ : std_logic;
SIGNAL \uut|Add3~118\ : std_logic;
SIGNAL \uut|Add3~101_sumout\ : std_logic;
SIGNAL \uut|Selector74~0_combout\ : std_logic;
SIGNAL \uut|Add3~102\ : std_logic;
SIGNAL \uut|Add3~97_sumout\ : std_logic;
SIGNAL \uut|Selector73~0_combout\ : std_logic;
SIGNAL \uut|Add3~98\ : std_logic;
SIGNAL \uut|Add3~113_sumout\ : std_logic;
SIGNAL \uut|Selector72~0_combout\ : std_logic;
SIGNAL \uut|Equal2~4_combout\ : std_logic;
SIGNAL \uut|Add3~114\ : std_logic;
SIGNAL \uut|Add3~89_sumout\ : std_logic;
SIGNAL \uut|Selector71~0_combout\ : std_logic;
SIGNAL \uut|Add3~90\ : std_logic;
SIGNAL \uut|Add3~85_sumout\ : std_logic;
SIGNAL \uut|Selector70~0_combout\ : std_logic;
SIGNAL \uut|Add3~86\ : std_logic;
SIGNAL \uut|Add3~81_sumout\ : std_logic;
SIGNAL \uut|Selector69~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~82\ : std_logic;
SIGNAL \uut|Add3~77_sumout\ : std_logic;
SIGNAL \uut|Selector68~0_combout\ : std_logic;
SIGNAL \uut|Add3~78\ : std_logic;
SIGNAL \uut|Add3~73_sumout\ : std_logic;
SIGNAL \uut|Selector67~0_combout\ : std_logic;
SIGNAL \uut|Add3~74\ : std_logic;
SIGNAL \uut|Add3~13_sumout\ : std_logic;
SIGNAL \uut|Selector66~0_combout\ : std_logic;
SIGNAL \uut|Add3~14\ : std_logic;
SIGNAL \uut|Add3~45_sumout\ : std_logic;
SIGNAL \uut|Selector65~0_combout\ : std_logic;
SIGNAL \uut|Add3~46\ : std_logic;
SIGNAL \uut|Add3~69_sumout\ : std_logic;
SIGNAL \uut|Selector64~0_combout\ : std_logic;
SIGNAL \uut|Add3~70\ : std_logic;
SIGNAL \uut|Add3~17_sumout\ : std_logic;
SIGNAL \uut|Selector63~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~18\ : std_logic;
SIGNAL \uut|Add3~21_sumout\ : std_logic;
SIGNAL \uut|Selector62~0_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~22\ : std_logic;
SIGNAL \uut|Add3~93_sumout\ : std_logic;
SIGNAL \uut|Selector61~0_combout\ : std_logic;
SIGNAL \uut|Equal2~3_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~94\ : std_logic;
SIGNAL \uut|Add3~37_sumout\ : std_logic;
SIGNAL \uut|Selector60~0_combout\ : std_logic;
SIGNAL \uut|Add3~38\ : std_logic;
SIGNAL \uut|Add3~33_sumout\ : std_logic;
SIGNAL \uut|Selector59~0_combout\ : std_logic;
SIGNAL \uut|Add3~34\ : std_logic;
SIGNAL \uut|Add3~41_sumout\ : std_logic;
SIGNAL \uut|Selector58~0_combout\ : std_logic;
SIGNAL \uut|Add3~42\ : std_logic;
SIGNAL \uut|Add3~25_sumout\ : std_logic;
SIGNAL \uut|Selector57~0_combout\ : std_logic;
SIGNAL \uut|Add3~26\ : std_logic;
SIGNAL \uut|Add3~65_sumout\ : std_logic;
SIGNAL \uut|Selector56~0_combout\ : std_logic;
SIGNAL \uut|Add3~66\ : std_logic;
SIGNAL \uut|Add3~61_sumout\ : std_logic;
SIGNAL \uut|Selector55~0_combout\ : std_logic;
SIGNAL \uut|Add3~62\ : std_logic;
SIGNAL \uut|Add3~29_sumout\ : std_logic;
SIGNAL \uut|Selector54~0_combout\ : std_logic;
SIGNAL \uut|Add3~30\ : std_logic;
SIGNAL \uut|Add3~57_sumout\ : std_logic;
SIGNAL \uut|Selector53~0_combout\ : std_logic;
SIGNAL \uut|Add3~58\ : std_logic;
SIGNAL \uut|Add3~53_sumout\ : std_logic;
SIGNAL \uut|Selector52~0_combout\ : std_logic;
SIGNAL \uut|Add3~54\ : std_logic;
SIGNAL \uut|Add3~49_sumout\ : std_logic;
SIGNAL \uut|Selector51~0_combout\ : std_logic;
SIGNAL \uut|Equal2~2_combout\ : std_logic;
SIGNAL \uut|Equal2~1_combout\ : std_logic;
SIGNAL \uut|Equal2~0_combout\ : std_logic;
SIGNAL \uut|Equal2~6_combout\ : std_logic;
SIGNAL \uut|State.WaitAfterReset~q\ : std_logic;
SIGNAL \uut|WideOr1~0_combout\ : std_logic;
SIGNAL \uut|WideOr1~combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[0]~2_combout\ : std_logic;
SIGNAL \uut|SlaveClkCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add3~5_sumout\ : std_logic;
SIGNAL \uut|Selector81~0_combout\ : std_logic;
SIGNAL \uut|Add3~50\ : std_logic;
SIGNAL \uut|Add3~125_sumout\ : std_logic;
SIGNAL \uut|Selector50~0_combout\ : std_logic;
SIGNAL \uut|Equal2~5_combout\ : std_logic;
SIGNAL \uut|Equal2~7_combout\ : std_logic;
SIGNAL \uut|Selector6~9_combout\ : std_logic;
SIGNAL \uut|State.DoReset~1_combout\ : std_logic;
SIGNAL \uut|State.DoReset~q\ : std_logic;
SIGNAL \uut|Selector114~0_combout\ : std_logic;
SIGNAL \uut|CntWaitCycles[29]~1_combout\ : std_logic;
SIGNAL \uut|CntWaitCycles[29]~2_combout\ : std_logic;
SIGNAL \uut|Add2~66\ : std_logic;
SIGNAL \uut|Add2~5_sumout\ : std_logic;
SIGNAL \uut|Add2~6\ : std_logic;
SIGNAL \uut|Add2~1_sumout\ : std_logic;
SIGNAL \uut|Equal3~0_combout\ : std_logic;
SIGNAL \uut|Equal3~4_combout\ : std_logic;
SIGNAL \uut|Equal3~5_combout\ : std_logic;
SIGNAL \uut|Equal3~6_combout\ : std_logic;
SIGNAL \uut|MasterOutput~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadProductID~q\ : std_logic;
SIGNAL \uut|RegAndClockGen~0_combout\ : std_logic;
SIGNAL \uut|Selector3~0_combout\ : std_logic;
SIGNAL \uut|State.SetProductIDReg~q\ : std_logic;
SIGNAL \uut|Selector4~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadProductID~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Selector7~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadMotion~q\ : std_logic;
SIGNAL \uut|State.WaitForReadDataX~q\ : std_logic;
SIGNAL \uut|State.SetDataXReg~q\ : std_logic;
SIGNAL \iMISO~input_o\ : std_logic;
SIGNAL \uut|LessThan0~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[2]~0_combout\ : std_logic;
SIGNAL \uut|MotionReg[2]~1_combout\ : std_logic;
SIGNAL \uut|MotionReg[0]~5_combout\ : std_logic;
SIGNAL \uut|MotionReg[2]~3_combout\ : std_logic;
SIGNAL \uut|MotionReg[1]~4_combout\ : std_logic;
SIGNAL \uut|RegAndClockGen~1_combout\ : std_logic;
SIGNAL \uut|MotionReg[7]~6_combout\ : std_logic;
SIGNAL \uut|MotionReg[7]~7_combout\ : std_logic;
SIGNAL \uut|MotionReg[2]~8_combout\ : std_logic;
SIGNAL \uut|MotionReg[4]~12_combout\ : std_logic;
SIGNAL \uut|MotionReg[5]~10_combout\ : std_logic;
SIGNAL \uut|MotionReg[5]~11_combout\ : std_logic;
SIGNAL \uut|MotionReg[3]~2_combout\ : std_logic;
SIGNAL \uut|MotionReg[6]~9_combout\ : std_logic;
SIGNAL \uut|Equal4~0_combout\ : std_logic;
SIGNAL \uut|Selector10~0_combout\ : std_logic;
SIGNAL \uut|Selector10~1_combout\ : std_logic;
SIGNAL \uut|State.SetDataXReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Selector11~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadDataX~DUPLICATE_q\ : std_logic;
SIGNAL \uut|State.WaitForReadDataY~DUPLICATE_q\ : std_logic;
SIGNAL \uut|WideOr1~1_combout\ : std_logic;
SIGNAL \uut|Add2~61_sumout\ : std_logic;
SIGNAL \uut|Selector114~2_combout\ : std_logic;
SIGNAL \uut|Selector114~3_combout\ : std_logic;
SIGNAL \uut|Selector114~1_combout\ : std_logic;
SIGNAL \uut|Selector114~4_combout\ : std_logic;
SIGNAL \uut|Add2~62\ : std_logic;
SIGNAL \uut|Add2~121_sumout\ : std_logic;
SIGNAL \uut|Add2~122\ : std_logic;
SIGNAL \uut|Add2~117_sumout\ : std_logic;
SIGNAL \uut|Add2~118\ : std_logic;
SIGNAL \uut|Add2~125_sumout\ : std_logic;
SIGNAL \uut|Add2~126\ : std_logic;
SIGNAL \uut|Add2~29_sumout\ : std_logic;
SIGNAL \uut|Add2~30\ : std_logic;
SIGNAL \uut|Add2~113_sumout\ : std_logic;
SIGNAL \uut|Add2~114\ : std_logic;
SIGNAL \uut|Add2~109_sumout\ : std_logic;
SIGNAL \uut|Add2~110\ : std_logic;
SIGNAL \uut|Add2~25_sumout\ : std_logic;
SIGNAL \uut|Add2~26\ : std_logic;
SIGNAL \uut|Add2~21_sumout\ : std_logic;
SIGNAL \uut|Add2~22\ : std_logic;
SIGNAL \uut|Add2~17_sumout\ : std_logic;
SIGNAL \uut|Add2~18\ : std_logic;
SIGNAL \uut|Add2~13_sumout\ : std_logic;
SIGNAL \uut|Add2~14\ : std_logic;
SIGNAL \uut|Add2~57_sumout\ : std_logic;
SIGNAL \uut|Add2~58\ : std_logic;
SIGNAL \uut|Add2~53_sumout\ : std_logic;
SIGNAL \uut|Add2~54\ : std_logic;
SIGNAL \uut|Add2~49_sumout\ : std_logic;
SIGNAL \uut|Add2~50\ : std_logic;
SIGNAL \uut|Add2~45_sumout\ : std_logic;
SIGNAL \uut|Add2~46\ : std_logic;
SIGNAL \uut|Add2~41_sumout\ : std_logic;
SIGNAL \uut|Add2~42\ : std_logic;
SIGNAL \uut|Add2~37_sumout\ : std_logic;
SIGNAL \uut|Add2~38\ : std_logic;
SIGNAL \uut|Add2~9_sumout\ : std_logic;
SIGNAL \uut|Add2~10\ : std_logic;
SIGNAL \uut|Add2~105_sumout\ : std_logic;
SIGNAL \uut|Add2~106\ : std_logic;
SIGNAL \uut|Add2~33_sumout\ : std_logic;
SIGNAL \uut|Add2~34\ : std_logic;
SIGNAL \uut|Add2~101_sumout\ : std_logic;
SIGNAL \uut|Add2~102\ : std_logic;
SIGNAL \uut|Add2~97_sumout\ : std_logic;
SIGNAL \uut|Add2~98\ : std_logic;
SIGNAL \uut|Add2~93_sumout\ : std_logic;
SIGNAL \uut|Add2~94\ : std_logic;
SIGNAL \uut|Add2~89_sumout\ : std_logic;
SIGNAL \uut|Add2~90\ : std_logic;
SIGNAL \uut|Add2~85_sumout\ : std_logic;
SIGNAL \uut|Add2~86\ : std_logic;
SIGNAL \uut|Add2~81_sumout\ : std_logic;
SIGNAL \uut|Add2~82\ : std_logic;
SIGNAL \uut|Add2~77_sumout\ : std_logic;
SIGNAL \uut|Add2~78\ : std_logic;
SIGNAL \uut|Add2~73_sumout\ : std_logic;
SIGNAL \uut|Add2~74\ : std_logic;
SIGNAL \uut|Add2~69_sumout\ : std_logic;
SIGNAL \uut|CntWaitCycles[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Equal3~3_combout\ : std_logic;
SIGNAL \uut|Equal5~0_combout\ : std_logic;
SIGNAL \uut|Equal5~1_combout\ : std_logic;
SIGNAL \uut|Equal4~1_combout\ : std_logic;
SIGNAL \uut|Selector16~0_combout\ : std_logic;
SIGNAL \uut|Selector5~0_combout\ : std_logic;
SIGNAL \uut|State.ReadProductIDReg~q\ : std_logic;
SIGNAL \uut|Selector16~1_combout\ : std_logic;
SIGNAL \uut|State.OutputAndWaitForWrite~q\ : std_logic;
SIGNAL \uut|Selector6~8_combout\ : std_logic;
SIGNAL \uut|Selector6~12_combout\ : std_logic;
SIGNAL \uut|State.SetMotionReg~q\ : std_logic;
SIGNAL \uut|State.SetProductIDReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|State.ReadDataXReg~q\ : std_logic;
SIGNAL \uut|Selector12~0_combout\ : std_logic;
SIGNAL \uut|State.ReadDataXReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|State.SetDataYReg~q\ : std_logic;
SIGNAL \uut|Selector13~0_combout\ : std_logic;
SIGNAL \uut|State.SetDataYReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Selector82~1_combout\ : std_logic;
SIGNAL \uut|Selector82~0_combout\ : std_logic;
SIGNAL \uut|Selector82~2_combout\ : std_logic;
SIGNAL \uut|Sel~DUPLICATE_q\ : std_logic;
SIGNAL \uut|SysClkGenCounter~1_combout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Add0~82\ : std_logic;
SIGNAL \uut|Add0~85_sumout\ : std_logic;
SIGNAL \uut|SysClkGenCounter[1]~0_combout\ : std_logic;
SIGNAL \uut|Add0~86\ : std_logic;
SIGNAL \uut|Add0~5_sumout\ : std_logic;
SIGNAL \uut|Add0~6\ : std_logic;
SIGNAL \uut|Add0~1_sumout\ : std_logic;
SIGNAL \uut|Equal1~0_combout\ : std_logic;
SIGNAL \uut|Add0~2\ : std_logic;
SIGNAL \uut|Add0~29_sumout\ : std_logic;
SIGNAL \uut|Add0~30\ : std_logic;
SIGNAL \uut|Add0~109_sumout\ : std_logic;
SIGNAL \uut|Add0~110\ : std_logic;
SIGNAL \uut|Add0~25_sumout\ : std_logic;
SIGNAL \uut|Add0~26\ : std_logic;
SIGNAL \uut|Add0~101_sumout\ : std_logic;
SIGNAL \uut|Add0~102\ : std_logic;
SIGNAL \uut|Add0~21_sumout\ : std_logic;
SIGNAL \uut|Add0~22\ : std_logic;
SIGNAL \uut|Add0~17_sumout\ : std_logic;
SIGNAL \uut|Add0~18\ : std_logic;
SIGNAL \uut|Add0~13_sumout\ : std_logic;
SIGNAL \uut|Add0~14\ : std_logic;
SIGNAL \uut|Add0~9_sumout\ : std_logic;
SIGNAL \uut|Add0~10\ : std_logic;
SIGNAL \uut|Add0~53_sumout\ : std_logic;
SIGNAL \uut|Add0~54\ : std_logic;
SIGNAL \uut|Add0~49_sumout\ : std_logic;
SIGNAL \uut|Add0~50\ : std_logic;
SIGNAL \uut|Add0~45_sumout\ : std_logic;
SIGNAL \uut|Add0~46\ : std_logic;
SIGNAL \uut|Add0~41_sumout\ : std_logic;
SIGNAL \uut|Add0~42\ : std_logic;
SIGNAL \uut|Add0~37_sumout\ : std_logic;
SIGNAL \uut|Add0~38\ : std_logic;
SIGNAL \uut|Add0~33_sumout\ : std_logic;
SIGNAL \uut|Add0~34\ : std_logic;
SIGNAL \uut|Add0~77_sumout\ : std_logic;
SIGNAL \uut|Add0~78\ : std_logic;
SIGNAL \uut|Add0~73_sumout\ : std_logic;
SIGNAL \uut|Add0~74\ : std_logic;
SIGNAL \uut|Add0~69_sumout\ : std_logic;
SIGNAL \uut|Add0~70\ : std_logic;
SIGNAL \uut|Add0~105_sumout\ : std_logic;
SIGNAL \uut|Add0~106\ : std_logic;
SIGNAL \uut|Add0~65_sumout\ : std_logic;
SIGNAL \uut|Add0~66\ : std_logic;
SIGNAL \uut|Add0~61_sumout\ : std_logic;
SIGNAL \uut|Add0~62\ : std_logic;
SIGNAL \uut|Add0~57_sumout\ : std_logic;
SIGNAL \uut|Add0~58\ : std_logic;
SIGNAL \uut|Add0~125_sumout\ : std_logic;
SIGNAL \uut|Add0~126\ : std_logic;
SIGNAL \uut|Add0~121_sumout\ : std_logic;
SIGNAL \uut|Add0~122\ : std_logic;
SIGNAL \uut|Add0~117_sumout\ : std_logic;
SIGNAL \uut|Add0~118\ : std_logic;
SIGNAL \uut|Add0~93_sumout\ : std_logic;
SIGNAL \uut|Add0~94\ : std_logic;
SIGNAL \uut|Add0~97_sumout\ : std_logic;
SIGNAL \uut|Add0~98\ : std_logic;
SIGNAL \uut|Add0~89_sumout\ : std_logic;
SIGNAL \uut|Equal1~4_combout\ : std_logic;
SIGNAL \uut|Equal1~3_combout\ : std_logic;
SIGNAL \uut|Equal1~1_combout\ : std_logic;
SIGNAL \uut|Add0~90\ : std_logic;
SIGNAL \uut|Add0~113_sumout\ : std_logic;
SIGNAL \uut|Equal1~5_combout\ : std_logic;
SIGNAL \uut|Equal1~2_combout\ : std_logic;
SIGNAL \uut|Equal1~6_combout\ : std_logic;
SIGNAL \uut|SysClk~0_combout\ : std_logic;
SIGNAL \uut|SysClk~q\ : std_logic;
SIGNAL \uut|State~38_combout\ : std_logic;
SIGNAL \uut|Selector14~0_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadDataY~q\ : std_logic;
SIGNAL \uut|Selector15~0_combout\ : std_logic;
SIGNAL \uut|State.ReadDataYReg~q\ : std_logic;
SIGNAL \uut|Selector6~6_combout\ : std_logic;
SIGNAL \uut|Selector49~0_combout\ : std_logic;
SIGNAL \uut|Selector49~1_combout\ : std_logic;
SIGNAL \uut|SysClkEnable~q\ : std_logic;
SIGNAL \uut|State~39_combout\ : std_logic;
SIGNAL \uut|State.WaitForReadMotion~DUPLICATE_q\ : std_logic;
SIGNAL \uut|Selector8~0_combout\ : std_logic;
SIGNAL \uut|State.ReadMotionReg~q\ : std_logic;
SIGNAL \uut|Selector9~0_combout\ : std_logic;
SIGNAL \uut|State.CheckMotionReg~q\ : std_logic;
SIGNAL \uut|Selector1~0_combout\ : std_logic;
SIGNAL \uut|State.WaitAfterReset~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ResetCnt[30]~0_combout\ : std_logic;
SIGNAL \uut|Add1~38\ : std_logic;
SIGNAL \uut|Add1~33_sumout\ : std_logic;
SIGNAL \uut|Add1~34\ : std_logic;
SIGNAL \uut|Add1~77_sumout\ : std_logic;
SIGNAL \uut|Add1~78\ : std_logic;
SIGNAL \uut|Add1~73_sumout\ : std_logic;
SIGNAL \uut|Add1~74\ : std_logic;
SIGNAL \uut|Add1~69_sumout\ : std_logic;
SIGNAL \uut|Add1~70\ : std_logic;
SIGNAL \uut|Add1~65_sumout\ : std_logic;
SIGNAL \uut|Add1~66\ : std_logic;
SIGNAL \uut|Add1~61_sumout\ : std_logic;
SIGNAL \uut|Add1~62\ : std_logic;
SIGNAL \uut|Add1~57_sumout\ : std_logic;
SIGNAL \uut|Add1~58\ : std_logic;
SIGNAL \uut|Add1~125_sumout\ : std_logic;
SIGNAL \uut|Add1~126\ : std_logic;
SIGNAL \uut|Add1~121_sumout\ : std_logic;
SIGNAL \uut|Add1~122\ : std_logic;
SIGNAL \uut|Add1~117_sumout\ : std_logic;
SIGNAL \uut|Add1~118\ : std_logic;
SIGNAL \uut|Add1~113_sumout\ : std_logic;
SIGNAL \uut|Add1~114\ : std_logic;
SIGNAL \uut|Add1~109_sumout\ : std_logic;
SIGNAL \uut|Add1~110\ : std_logic;
SIGNAL \uut|Add1~105_sumout\ : std_logic;
SIGNAL \uut|Add1~106\ : std_logic;
SIGNAL \uut|Add1~101_sumout\ : std_logic;
SIGNAL \uut|Add1~102\ : std_logic;
SIGNAL \uut|Add1~97_sumout\ : std_logic;
SIGNAL \uut|Add1~98\ : std_logic;
SIGNAL \uut|Add1~93_sumout\ : std_logic;
SIGNAL \uut|Add1~94\ : std_logic;
SIGNAL \uut|Add1~89_sumout\ : std_logic;
SIGNAL \uut|Add1~90\ : std_logic;
SIGNAL \uut|Add1~85_sumout\ : std_logic;
SIGNAL \uut|Add1~86\ : std_logic;
SIGNAL \uut|Add1~5_sumout\ : std_logic;
SIGNAL \uut|Add1~6\ : std_logic;
SIGNAL \uut|Add1~1_sumout\ : std_logic;
SIGNAL \uut|Add1~2\ : std_logic;
SIGNAL \uut|Add1~29_sumout\ : std_logic;
SIGNAL \uut|Add1~30\ : std_logic;
SIGNAL \uut|Add1~25_sumout\ : std_logic;
SIGNAL \uut|Add1~26\ : std_logic;
SIGNAL \uut|Add1~21_sumout\ : std_logic;
SIGNAL \uut|Add1~22\ : std_logic;
SIGNAL \uut|Add1~17_sumout\ : std_logic;
SIGNAL \uut|Add1~18\ : std_logic;
SIGNAL \uut|Add1~13_sumout\ : std_logic;
SIGNAL \uut|Add1~14\ : std_logic;
SIGNAL \uut|Add1~9_sumout\ : std_logic;
SIGNAL \uut|Add1~10\ : std_logic;
SIGNAL \uut|Add1~53_sumout\ : std_logic;
SIGNAL \uut|Add1~54\ : std_logic;
SIGNAL \uut|Add1~49_sumout\ : std_logic;
SIGNAL \uut|Add1~50\ : std_logic;
SIGNAL \uut|Add1~45_sumout\ : std_logic;
SIGNAL \uut|Add1~46\ : std_logic;
SIGNAL \uut|Add1~81_sumout\ : std_logic;
SIGNAL \uut|Equal0~4_combout\ : std_logic;
SIGNAL \uut|Equal0~5_combout\ : std_logic;
SIGNAL \uut|Equal0~3_combout\ : std_logic;
SIGNAL \uut|Equal0~0_combout\ : std_logic;
SIGNAL \uut|Add1~82\ : std_logic;
SIGNAL \uut|Add1~41_sumout\ : std_logic;
SIGNAL \uut|Equal0~2_combout\ : std_logic;
SIGNAL \uut|Equal0~1_combout\ : std_logic;
SIGNAL \uut|Equal0~6_combout\ : std_logic;
SIGNAL \uut|Selector2~0_combout\ : std_logic;
SIGNAL \uut|State.Init~q\ : std_logic;
SIGNAL \uut|Selector119~0_combout\ : std_logic;
SIGNAL \uut|Selector116~0_combout\ : std_logic;
SIGNAL \uut|DataValid~q\ : std_logic;
SIGNAL \uut|Selector120~0_combout\ : std_logic;
SIGNAL \uut|Selector117~0_combout\ : std_logic;
SIGNAL \uut|Selector118~0_combout\ : std_logic;
SIGNAL \CheckValidData~0_combout\ : std_logic;
SIGNAL \uut|Selector122~0_combout\ : std_logic;
SIGNAL \uut|Selector124~0_combout\ : std_logic;
SIGNAL \uut|Selector123~0_combout\ : std_logic;
SIGNAL \uut|Selector121~0_combout\ : std_logic;
SIGNAL \CheckValidData~1_combout\ : std_logic;
SIGNAL \oDataValid~reg0_q\ : std_logic;
SIGNAL \uut|Selector115~1_combout\ : std_logic;
SIGNAL \uut|Selector115~0_combout\ : std_logic;
SIGNAL \uut|Selector115~2_combout\ : std_logic;
SIGNAL \uut|Selector115~3_combout\ : std_logic;
SIGNAL \uut|MasterOutput~q\ : std_logic;
SIGNAL \uut|ResetSensor~0_combout\ : std_logic;
SIGNAL \uut|ResetSensor~q\ : std_logic;
SIGNAL \uut|State.ReadProductIDReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ProductIDReg[2]~0_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[5]~9_combout\ : std_logic;
SIGNAL \uut|oProductID[5]~feeder_combout\ : std_logic;
SIGNAL \uut|oProductID[0]~0_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[0]~5_combout\ : std_logic;
SIGNAL \uut|MotionReg[2]~13_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[6]~7_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[6]~8_combout\ : std_logic;
SIGNAL \uut|oProductID[6]~feeder_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[7]~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[2]~3_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[4]~1_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[1]~4_combout\ : std_logic;
SIGNAL \uut|oProductID[1]~feeder_combout\ : std_logic;
SIGNAL \uut|ProductIDReg[3]~2_combout\ : std_logic;
SIGNAL \uut|oProductID[3]~feeder_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \oInitializedLED~reg0_q\ : std_logic;
SIGNAL \uut|oMotion\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GenerateStrobeMHz|ClkCounter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uut|SysClkGenCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|SlaveClkCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \GenerateStrobeKHz|ClkCounter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \uut|CntWaitCycles\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|ResetCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|oProductID\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|MotionReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|ProductIDReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GenerateStrobeMHz|ALT_INV_ClkCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_CntWaitCycles[0]~DUPLICATE_q\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetDataYReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetDataXReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetProductIDReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.ReadProductIDReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.ReadDataXReg~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SysClkGenCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadDataY~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadDataX~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadMotion~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadProductID~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitAfterReset~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SysClkEnable~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_Sel~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_iMISO~input_o\ : std_logic;
SIGNAL \ALT_INV_inResetAsync~input_o\ : std_logic;
SIGNAL \uut|ALT_INV_ProductIDReg[6]~7_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg[2]~13_combout\ : std_logic;
SIGNAL \uut|ALT_INV_ProductIDReg[2]~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg[5]~10_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg[2]~8_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg[7]~6_combout\ : std_logic;
SIGNAL \uut|ALT_INV_RegAndClockGen~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg[2]~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg[2]~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_ProductIDReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \GenerateStrobeKHz|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector114~3_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector114~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector114~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_CntWaitCycles[29]~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector114~0_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_ClkCounter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uut|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[0]~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MasterOutput~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State.DoReset~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector6~11_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector6~10_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector6~9_combout\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter[0]~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector6~8_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector6~7_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State~39_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector49~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_MotionReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_oProductID\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \GenerateStrobeKHz|ALT_INV_oStrobe~q\ : std_logic;
SIGNAL \uut|ALT_INV_Selector115~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State~38_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Selector115~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \uut|ALT_INV_CntWaitCycles\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_oStrobe~q\ : std_logic;
SIGNAL \uut|ALT_INV_Selector115~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_RegAndClockGen~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~7_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State.Init~q\ : std_logic;
SIGNAL \uut|ALT_INV_Selector82~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetDataYReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetDataXReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetMotionReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.SetProductIDReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State.ReadDataYReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.ReadProductIDReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.ReadDataXReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.ReadMotionReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_Selector82~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~6_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \uut|ALT_INV_SlaveClkCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \uut|ALT_INV_SysClkGenCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \uut|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadDataY~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadDataX~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadMotion~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitForReadProductID~q\ : std_logic;
SIGNAL \uut|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_State.WaitAfterReset~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.DoReset~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.CheckMotionReg~q\ : std_logic;
SIGNAL \uut|ALT_INV_State.OutputAndWaitForWrite~q\ : std_logic;
SIGNAL \uut|ALT_INV_SysClkEnable~q\ : std_logic;
SIGNAL \ALT_INV_CheckValidData~0_combout\ : std_logic;
SIGNAL \uut|ALT_INV_DataValid~q\ : std_logic;
SIGNAL \uut|ALT_INV_ResetSensor~q\ : std_logic;
SIGNAL \uut|ALT_INV_MasterOutput~q\ : std_logic;
SIGNAL \uut|ALT_INV_Sel~q\ : std_logic;
SIGNAL \ALT_INV_oDataValid~reg0_q\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \GenerateStrobeMHz|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \GenerateStrobeKHz|ALT_INV_ClkCounter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \uut|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~125_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~121_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~113_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_ResetCnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uut|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \uut|ALT_INV_oMotion\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uut|ALT_INV_SysClk~q\ : std_logic;

BEGIN

ww_iClk <= iClk;
ww_inResetAsync <= inResetAsync;
oDataValid <= ww_oDataValid;
ww_iMISO <= iMISO;
oSelect <= ww_oSelect;
oSysClk <= ww_oSysClk;
oMOSI <= ww_oMOSI;
oResetSensor <= ww_oResetSensor;
oNPD <= ww_oNPD;
oInitializedLED <= ww_oInitializedLED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\GenerateStrobeMHz|ALT_INV_ClkCounter[1]~DUPLICATE_q\ <= NOT \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\;
\uut|ALT_INV_CntWaitCycles[0]~DUPLICATE_q\ <= NOT \uut|CntWaitCycles[0]~DUPLICATE_q\;
\GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\ <= NOT \GenerateStrobeMHz|oStrobe~DUPLICATE_q\;
\uut|ALT_INV_State.SetDataYReg~DUPLICATE_q\ <= NOT \uut|State.SetDataYReg~DUPLICATE_q\;
\uut|ALT_INV_State.SetDataXReg~DUPLICATE_q\ <= NOT \uut|State.SetDataXReg~DUPLICATE_q\;
\uut|ALT_INV_State.SetProductIDReg~DUPLICATE_q\ <= NOT \uut|State.SetProductIDReg~DUPLICATE_q\;
\uut|ALT_INV_State.ReadProductIDReg~DUPLICATE_q\ <= NOT \uut|State.ReadProductIDReg~DUPLICATE_q\;
\uut|ALT_INV_State.ReadDataXReg~DUPLICATE_q\ <= NOT \uut|State.ReadDataXReg~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[0]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[0]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[1]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[1]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[2]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[2]~DUPLICATE_q\;
\uut|ALT_INV_SysClkGenCounter[0]~DUPLICATE_q\ <= NOT \uut|SysClkGenCounter[0]~DUPLICATE_q\;
\uut|ALT_INV_State.WaitForReadDataY~DUPLICATE_q\ <= NOT \uut|State.WaitForReadDataY~DUPLICATE_q\;
\uut|ALT_INV_State.WaitForReadDataX~DUPLICATE_q\ <= NOT \uut|State.WaitForReadDataX~DUPLICATE_q\;
\uut|ALT_INV_State.WaitForReadMotion~DUPLICATE_q\ <= NOT \uut|State.WaitForReadMotion~DUPLICATE_q\;
\uut|ALT_INV_State.WaitForReadProductID~DUPLICATE_q\ <= NOT \uut|State.WaitForReadProductID~DUPLICATE_q\;
\uut|ALT_INV_State.WaitAfterReset~DUPLICATE_q\ <= NOT \uut|State.WaitAfterReset~DUPLICATE_q\;
\uut|ALT_INV_SysClkEnable~DUPLICATE_q\ <= NOT \uut|SysClkEnable~DUPLICATE_q\;
\uut|ALT_INV_Sel~DUPLICATE_q\ <= NOT \uut|Sel~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[6]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[6]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[4]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[4]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[5]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[5]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[12]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[12]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[26]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[26]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[19]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[19]~DUPLICATE_q\;
\uut|ALT_INV_SlaveClkCounter[18]~DUPLICATE_q\ <= NOT \uut|SlaveClkCounter[18]~DUPLICATE_q\;
\ALT_INV_iMISO~input_o\ <= NOT \iMISO~input_o\;
\ALT_INV_inResetAsync~input_o\ <= NOT \inResetAsync~input_o\;
\uut|ALT_INV_ProductIDReg[6]~7_combout\ <= NOT \uut|ProductIDReg[6]~7_combout\;
\uut|ALT_INV_MotionReg[2]~13_combout\ <= NOT \uut|MotionReg[2]~13_combout\;
\uut|ALT_INV_ProductIDReg[2]~0_combout\ <= NOT \uut|ProductIDReg[2]~0_combout\;
\uut|ALT_INV_MotionReg[5]~10_combout\ <= NOT \uut|MotionReg[5]~10_combout\;
\uut|ALT_INV_MotionReg[2]~8_combout\ <= NOT \uut|MotionReg[2]~8_combout\;
\uut|ALT_INV_MotionReg[7]~6_combout\ <= NOT \uut|MotionReg[7]~6_combout\;
\uut|ALT_INV_RegAndClockGen~1_combout\ <= NOT \uut|RegAndClockGen~1_combout\;
\uut|ALT_INV_MotionReg[2]~1_combout\ <= NOT \uut|MotionReg[2]~1_combout\;
\uut|ALT_INV_MotionReg[2]~0_combout\ <= NOT \uut|MotionReg[2]~0_combout\;
\uut|ALT_INV_ProductIDReg\(5) <= NOT \uut|ProductIDReg\(5);
\uut|ALT_INV_ProductIDReg\(6) <= NOT \uut|ProductIDReg\(6);
\uut|ALT_INV_ProductIDReg\(7) <= NOT \uut|ProductIDReg\(7);
\uut|ALT_INV_ProductIDReg\(0) <= NOT \uut|ProductIDReg\(0);
\uut|ALT_INV_ProductIDReg\(1) <= NOT \uut|ProductIDReg\(1);
\uut|ALT_INV_ProductIDReg\(2) <= NOT \uut|ProductIDReg\(2);
\uut|ALT_INV_ProductIDReg\(3) <= NOT \uut|ProductIDReg\(3);
\uut|ALT_INV_ProductIDReg\(4) <= NOT \uut|ProductIDReg\(4);
\GenerateStrobeKHz|ALT_INV_Equal0~3_combout\ <= NOT \GenerateStrobeKHz|Equal0~3_combout\;
\GenerateStrobeKHz|ALT_INV_Equal0~2_combout\ <= NOT \GenerateStrobeKHz|Equal0~2_combout\;
\GenerateStrobeKHz|ALT_INV_Equal0~1_combout\ <= NOT \GenerateStrobeKHz|Equal0~1_combout\;
\GenerateStrobeKHz|ALT_INV_Equal0~0_combout\ <= NOT \GenerateStrobeKHz|Equal0~0_combout\;
\uut|ALT_INV_Selector114~3_combout\ <= NOT \uut|Selector114~3_combout\;
\uut|ALT_INV_Selector114~2_combout\ <= NOT \uut|Selector114~2_combout\;
\uut|ALT_INV_Selector114~1_combout\ <= NOT \uut|Selector114~1_combout\;
\uut|ALT_INV_CntWaitCycles[29]~1_combout\ <= NOT \uut|CntWaitCycles[29]~1_combout\;
\uut|ALT_INV_Selector114~0_combout\ <= NOT \uut|Selector114~0_combout\;
\GenerateStrobeMHz|ALT_INV_Equal0~0_combout\ <= NOT \GenerateStrobeMHz|Equal0~0_combout\;
\GenerateStrobeMHz|ALT_INV_ClkCounter\(3) <= NOT \GenerateStrobeMHz|ClkCounter\(3);
\GenerateStrobeMHz|ALT_INV_ClkCounter\(4) <= NOT \GenerateStrobeMHz|ClkCounter\(4);
\GenerateStrobeMHz|ALT_INV_ClkCounter\(5) <= NOT \GenerateStrobeMHz|ClkCounter\(5);
\GenerateStrobeMHz|ALT_INV_ClkCounter\(6) <= NOT \GenerateStrobeMHz|ClkCounter\(6);
\GenerateStrobeMHz|ALT_INV_ClkCounter\(0) <= NOT \GenerateStrobeMHz|ClkCounter\(0);
\GenerateStrobeMHz|ALT_INV_ClkCounter\(1) <= NOT \GenerateStrobeMHz|ClkCounter\(1);
\GenerateStrobeMHz|ALT_INV_ClkCounter\(2) <= NOT \GenerateStrobeMHz|ClkCounter\(2);
\uut|ALT_INV_Selector10~0_combout\ <= NOT \uut|Selector10~0_combout\;
\uut|ALT_INV_SlaveClkCounter[0]~1_combout\ <= NOT \uut|SlaveClkCounter[0]~1_combout\;
\uut|ALT_INV_MasterOutput~0_combout\ <= NOT \uut|MasterOutput~0_combout\;
\uut|ALT_INV_State.DoReset~0_combout\ <= NOT \uut|State.DoReset~0_combout\;
\uut|ALT_INV_Selector6~11_combout\ <= NOT \uut|Selector6~11_combout\;
\uut|ALT_INV_Selector6~10_combout\ <= NOT \uut|Selector6~10_combout\;
\uut|ALT_INV_Selector6~9_combout\ <= NOT \uut|Selector6~9_combout\;
\uut|ALT_INV_SlaveClkCounter[0]~0_combout\ <= NOT \uut|SlaveClkCounter[0]~0_combout\;
\uut|ALT_INV_Selector6~8_combout\ <= NOT \uut|Selector6~8_combout\;
\uut|ALT_INV_Selector6~7_combout\ <= NOT \uut|Selector6~7_combout\;
\uut|ALT_INV_Selector16~0_combout\ <= NOT \uut|Selector16~0_combout\;
\uut|ALT_INV_Equal4~1_combout\ <= NOT \uut|Equal4~1_combout\;
\uut|ALT_INV_Equal4~0_combout\ <= NOT \uut|Equal4~0_combout\;
\uut|ALT_INV_State~39_combout\ <= NOT \uut|State~39_combout\;
\uut|ALT_INV_Selector49~0_combout\ <= NOT \uut|Selector49~0_combout\;
\uut|ALT_INV_MotionReg\(4) <= NOT \uut|MotionReg\(4);
\uut|ALT_INV_MotionReg\(5) <= NOT \uut|MotionReg\(5);
\uut|ALT_INV_MotionReg\(6) <= NOT \uut|MotionReg\(6);
\uut|ALT_INV_MotionReg\(7) <= NOT \uut|MotionReg\(7);
\uut|ALT_INV_Equal5~1_combout\ <= NOT \uut|Equal5~1_combout\;
\uut|ALT_INV_Equal5~0_combout\ <= NOT \uut|Equal5~0_combout\;
\uut|ALT_INV_MotionReg\(0) <= NOT \uut|MotionReg\(0);
\uut|ALT_INV_MotionReg\(1) <= NOT \uut|MotionReg\(1);
\uut|ALT_INV_MotionReg\(2) <= NOT \uut|MotionReg\(2);
\uut|ALT_INV_MotionReg\(3) <= NOT \uut|MotionReg\(3);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\uut|ALT_INV_oProductID\(5) <= NOT \uut|oProductID\(5);
\uut|ALT_INV_oProductID\(6) <= NOT \uut|oProductID\(6);
\uut|ALT_INV_oProductID\(7) <= NOT \uut|oProductID\(7);
\uut|ALT_INV_oProductID\(0) <= NOT \uut|oProductID\(0);
\uut|ALT_INV_oProductID\(1) <= NOT \uut|oProductID\(1);
\uut|ALT_INV_oProductID\(2) <= NOT \uut|oProductID\(2);
\uut|ALT_INV_oProductID\(3) <= NOT \uut|oProductID\(3);
\uut|ALT_INV_oProductID\(4) <= NOT \uut|oProductID\(4);
\uut|ALT_INV_Equal0~6_combout\ <= NOT \uut|Equal0~6_combout\;
\uut|ALT_INV_Equal0~5_combout\ <= NOT \uut|Equal0~5_combout\;
\uut|ALT_INV_Equal0~4_combout\ <= NOT \uut|Equal0~4_combout\;
\uut|ALT_INV_Equal0~3_combout\ <= NOT \uut|Equal0~3_combout\;
\uut|ALT_INV_Equal0~2_combout\ <= NOT \uut|Equal0~2_combout\;
\uut|ALT_INV_Equal0~1_combout\ <= NOT \uut|Equal0~1_combout\;
\uut|ALT_INV_Equal0~0_combout\ <= NOT \uut|Equal0~0_combout\;
\GenerateStrobeKHz|ALT_INV_oStrobe~q\ <= NOT \GenerateStrobeKHz|oStrobe~q\;
\uut|ALT_INV_Selector115~2_combout\ <= NOT \uut|Selector115~2_combout\;
\uut|ALT_INV_State~38_combout\ <= NOT \uut|State~38_combout\;
\uut|ALT_INV_Selector115~1_combout\ <= NOT \uut|Selector115~1_combout\;
\uut|ALT_INV_Equal3~6_combout\ <= NOT \uut|Equal3~6_combout\;
\uut|ALT_INV_Equal3~5_combout\ <= NOT \uut|Equal3~5_combout\;
\uut|ALT_INV_Equal3~4_combout\ <= NOT \uut|Equal3~4_combout\;
\uut|ALT_INV_Equal3~3_combout\ <= NOT \uut|Equal3~3_combout\;
\uut|ALT_INV_CntWaitCycles\(0) <= NOT \uut|CntWaitCycles\(0);
\uut|ALT_INV_Equal3~2_combout\ <= NOT \uut|Equal3~2_combout\;
\uut|ALT_INV_Equal3~1_combout\ <= NOT \uut|Equal3~1_combout\;
\uut|ALT_INV_Equal3~0_combout\ <= NOT \uut|Equal3~0_combout\;
\GenerateStrobeMHz|ALT_INV_oStrobe~q\ <= NOT \GenerateStrobeMHz|oStrobe~q\;
\uut|ALT_INV_Selector115~0_combout\ <= NOT \uut|Selector115~0_combout\;
\uut|ALT_INV_RegAndClockGen~0_combout\ <= NOT \uut|RegAndClockGen~0_combout\;
\uut|ALT_INV_LessThan0~0_combout\ <= NOT \uut|LessThan0~0_combout\;
\uut|ALT_INV_Equal2~7_combout\ <= NOT \uut|Equal2~7_combout\;
\uut|ALT_INV_State.Init~q\ <= NOT \uut|State.Init~q\;
\uut|ALT_INV_Selector82~1_combout\ <= NOT \uut|Selector82~1_combout\;
\uut|ALT_INV_State.SetDataYReg~q\ <= NOT \uut|State.SetDataYReg~q\;
\uut|ALT_INV_State.SetDataXReg~q\ <= NOT \uut|State.SetDataXReg~q\;
\uut|ALT_INV_State.SetMotionReg~q\ <= NOT \uut|State.SetMotionReg~q\;
\uut|ALT_INV_State.SetProductIDReg~q\ <= NOT \uut|State.SetProductIDReg~q\;
\uut|ALT_INV_Selector6~6_combout\ <= NOT \uut|Selector6~6_combout\;
\uut|ALT_INV_State.ReadDataYReg~q\ <= NOT \uut|State.ReadDataYReg~q\;
\uut|ALT_INV_State.ReadProductIDReg~q\ <= NOT \uut|State.ReadProductIDReg~q\;
\uut|ALT_INV_State.ReadDataXReg~q\ <= NOT \uut|State.ReadDataXReg~q\;
\uut|ALT_INV_State.ReadMotionReg~q\ <= NOT \uut|State.ReadMotionReg~q\;
\uut|ALT_INV_Selector82~0_combout\ <= NOT \uut|Selector82~0_combout\;
\uut|ALT_INV_Equal2~6_combout\ <= NOT \uut|Equal2~6_combout\;
\uut|ALT_INV_Equal2~5_combout\ <= NOT \uut|Equal2~5_combout\;
\uut|ALT_INV_SlaveClkCounter\(0) <= NOT \uut|SlaveClkCounter\(0);
\uut|ALT_INV_SlaveClkCounter\(1) <= NOT \uut|SlaveClkCounter\(1);
\uut|ALT_INV_SlaveClkCounter\(2) <= NOT \uut|SlaveClkCounter\(2);
\uut|ALT_INV_Equal2~4_combout\ <= NOT \uut|Equal2~4_combout\;
\uut|ALT_INV_Equal2~3_combout\ <= NOT \uut|Equal2~3_combout\;
\uut|ALT_INV_Equal2~2_combout\ <= NOT \uut|Equal2~2_combout\;
\uut|ALT_INV_Equal2~1_combout\ <= NOT \uut|Equal2~1_combout\;
\uut|ALT_INV_Equal2~0_combout\ <= NOT \uut|Equal2~0_combout\;
\uut|ALT_INV_Equal1~6_combout\ <= NOT \uut|Equal1~6_combout\;
\uut|ALT_INV_Equal1~5_combout\ <= NOT \uut|Equal1~5_combout\;
\uut|ALT_INV_Equal1~4_combout\ <= NOT \uut|Equal1~4_combout\;
\uut|ALT_INV_SysClkGenCounter\(0) <= NOT \uut|SysClkGenCounter\(0);
\uut|ALT_INV_Equal1~3_combout\ <= NOT \uut|Equal1~3_combout\;
\uut|ALT_INV_Equal1~2_combout\ <= NOT \uut|Equal1~2_combout\;
\uut|ALT_INV_Equal1~1_combout\ <= NOT \uut|Equal1~1_combout\;
\uut|ALT_INV_Equal1~0_combout\ <= NOT \uut|Equal1~0_combout\;
\uut|ALT_INV_WideOr1~combout\ <= NOT \uut|WideOr1~combout\;
\uut|ALT_INV_WideOr1~1_combout\ <= NOT \uut|WideOr1~1_combout\;
\uut|ALT_INV_State.WaitForReadDataY~q\ <= NOT \uut|State.WaitForReadDataY~q\;
\uut|ALT_INV_State.WaitForReadDataX~q\ <= NOT \uut|State.WaitForReadDataX~q\;
\uut|ALT_INV_State.WaitForReadMotion~q\ <= NOT \uut|State.WaitForReadMotion~q\;
\uut|ALT_INV_State.WaitForReadProductID~q\ <= NOT \uut|State.WaitForReadProductID~q\;
\uut|ALT_INV_WideOr1~0_combout\ <= NOT \uut|WideOr1~0_combout\;
\uut|ALT_INV_State.WaitAfterReset~q\ <= NOT \uut|State.WaitAfterReset~q\;
\uut|ALT_INV_State.DoReset~q\ <= NOT \uut|State.DoReset~q\;
\uut|ALT_INV_State.CheckMotionReg~q\ <= NOT \uut|State.CheckMotionReg~q\;
\uut|ALT_INV_State.OutputAndWaitForWrite~q\ <= NOT \uut|State.OutputAndWaitForWrite~q\;
\uut|ALT_INV_SysClkEnable~q\ <= NOT \uut|SysClkEnable~q\;
\ALT_INV_CheckValidData~0_combout\ <= NOT \CheckValidData~0_combout\;
\uut|ALT_INV_DataValid~q\ <= NOT \uut|DataValid~q\;
\uut|ALT_INV_ResetSensor~q\ <= NOT \uut|ResetSensor~q\;
\uut|ALT_INV_MasterOutput~q\ <= NOT \uut|MasterOutput~q\;
\uut|ALT_INV_Sel~q\ <= NOT \uut|Sel~q\;
\ALT_INV_oDataValid~reg0_q\ <= NOT \oDataValid~reg0_q\;
\GenerateStrobeMHz|ALT_INV_Add0~21_sumout\ <= NOT \GenerateStrobeMHz|Add0~21_sumout\;
\GenerateStrobeMHz|ALT_INV_Add0~17_sumout\ <= NOT \GenerateStrobeMHz|Add0~17_sumout\;
\GenerateStrobeMHz|ALT_INV_Add0~5_sumout\ <= NOT \GenerateStrobeMHz|Add0~5_sumout\;
\GenerateStrobeKHz|ALT_INV_ClkCounter\(14) <= NOT \GenerateStrobeKHz|ClkCounter\(14);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(16) <= NOT \GenerateStrobeKHz|ClkCounter\(16);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(15) <= NOT \GenerateStrobeKHz|ClkCounter\(15);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(13) <= NOT \GenerateStrobeKHz|ClkCounter\(13);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(12) <= NOT \GenerateStrobeKHz|ClkCounter\(12);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(10) <= NOT \GenerateStrobeKHz|ClkCounter\(10);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(9) <= NOT \GenerateStrobeKHz|ClkCounter\(9);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(8) <= NOT \GenerateStrobeKHz|ClkCounter\(8);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(7) <= NOT \GenerateStrobeKHz|ClkCounter\(7);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(6) <= NOT \GenerateStrobeKHz|ClkCounter\(6);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(4) <= NOT \GenerateStrobeKHz|ClkCounter\(4);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(3) <= NOT \GenerateStrobeKHz|ClkCounter\(3);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(2) <= NOT \GenerateStrobeKHz|ClkCounter\(2);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(1) <= NOT \GenerateStrobeKHz|ClkCounter\(1);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(0) <= NOT \GenerateStrobeKHz|ClkCounter\(0);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(11) <= NOT \GenerateStrobeKHz|ClkCounter\(11);
\GenerateStrobeKHz|ALT_INV_ClkCounter\(5) <= NOT \GenerateStrobeKHz|ClkCounter\(5);
\uut|ALT_INV_Add2~61_sumout\ <= NOT \uut|Add2~61_sumout\;
\uut|ALT_INV_Add3~125_sumout\ <= NOT \uut|Add3~125_sumout\;
\uut|ALT_INV_Add3~121_sumout\ <= NOT \uut|Add3~121_sumout\;
\uut|ALT_INV_Add3~117_sumout\ <= NOT \uut|Add3~117_sumout\;
\uut|ALT_INV_Add3~113_sumout\ <= NOT \uut|Add3~113_sumout\;
\uut|ALT_INV_Add3~109_sumout\ <= NOT \uut|Add3~109_sumout\;
\uut|ALT_INV_Add3~105_sumout\ <= NOT \uut|Add3~105_sumout\;
\uut|ALT_INV_Add3~101_sumout\ <= NOT \uut|Add3~101_sumout\;
\uut|ALT_INV_Add3~97_sumout\ <= NOT \uut|Add3~97_sumout\;
\uut|ALT_INV_Add3~93_sumout\ <= NOT \uut|Add3~93_sumout\;
\uut|ALT_INV_Add3~89_sumout\ <= NOT \uut|Add3~89_sumout\;
\uut|ALT_INV_Add3~85_sumout\ <= NOT \uut|Add3~85_sumout\;
\uut|ALT_INV_Add3~81_sumout\ <= NOT \uut|Add3~81_sumout\;
\uut|ALT_INV_Add3~77_sumout\ <= NOT \uut|Add3~77_sumout\;
\uut|ALT_INV_Add3~73_sumout\ <= NOT \uut|Add3~73_sumout\;
\uut|ALT_INV_Add3~69_sumout\ <= NOT \uut|Add3~69_sumout\;
\uut|ALT_INV_Add3~65_sumout\ <= NOT \uut|Add3~65_sumout\;
\uut|ALT_INV_Add3~61_sumout\ <= NOT \uut|Add3~61_sumout\;
\uut|ALT_INV_Add3~57_sumout\ <= NOT \uut|Add3~57_sumout\;
\uut|ALT_INV_Add3~53_sumout\ <= NOT \uut|Add3~53_sumout\;
\uut|ALT_INV_Add3~49_sumout\ <= NOT \uut|Add3~49_sumout\;
\uut|ALT_INV_Add3~45_sumout\ <= NOT \uut|Add3~45_sumout\;
\uut|ALT_INV_Add3~41_sumout\ <= NOT \uut|Add3~41_sumout\;
\uut|ALT_INV_Add3~37_sumout\ <= NOT \uut|Add3~37_sumout\;
\uut|ALT_INV_Add3~33_sumout\ <= NOT \uut|Add3~33_sumout\;
\uut|ALT_INV_Add3~29_sumout\ <= NOT \uut|Add3~29_sumout\;
\uut|ALT_INV_Add3~25_sumout\ <= NOT \uut|Add3~25_sumout\;
\uut|ALT_INV_Add3~21_sumout\ <= NOT \uut|Add3~21_sumout\;
\uut|ALT_INV_Add3~17_sumout\ <= NOT \uut|Add3~17_sumout\;
\uut|ALT_INV_Add3~13_sumout\ <= NOT \uut|Add3~13_sumout\;
\uut|ALT_INV_Add0~81_sumout\ <= NOT \uut|Add0~81_sumout\;
\uut|ALT_INV_ResetCnt\(8) <= NOT \uut|ResetCnt\(8);
\uut|ALT_INV_ResetCnt\(9) <= NOT \uut|ResetCnt\(9);
\uut|ALT_INV_ResetCnt\(10) <= NOT \uut|ResetCnt\(10);
\uut|ALT_INV_ResetCnt\(11) <= NOT \uut|ResetCnt\(11);
\uut|ALT_INV_ResetCnt\(12) <= NOT \uut|ResetCnt\(12);
\uut|ALT_INV_ResetCnt\(13) <= NOT \uut|ResetCnt\(13);
\uut|ALT_INV_ResetCnt\(14) <= NOT \uut|ResetCnt\(14);
\uut|ALT_INV_ResetCnt\(15) <= NOT \uut|ResetCnt\(15);
\uut|ALT_INV_ResetCnt\(16) <= NOT \uut|ResetCnt\(16);
\uut|ALT_INV_ResetCnt\(17) <= NOT \uut|ResetCnt\(17);
\uut|ALT_INV_ResetCnt\(18) <= NOT \uut|ResetCnt\(18);
\uut|ALT_INV_ResetCnt\(30) <= NOT \uut|ResetCnt\(30);
\uut|ALT_INV_ResetCnt\(2) <= NOT \uut|ResetCnt\(2);
\uut|ALT_INV_ResetCnt\(3) <= NOT \uut|ResetCnt\(3);
\uut|ALT_INV_ResetCnt\(4) <= NOT \uut|ResetCnt\(4);
\uut|ALT_INV_ResetCnt\(5) <= NOT \uut|ResetCnt\(5);
\uut|ALT_INV_ResetCnt\(6) <= NOT \uut|ResetCnt\(6);
\uut|ALT_INV_ResetCnt\(7) <= NOT \uut|ResetCnt\(7);
\uut|ALT_INV_ResetCnt\(27) <= NOT \uut|ResetCnt\(27);
\uut|ALT_INV_ResetCnt\(28) <= NOT \uut|ResetCnt\(28);
\uut|ALT_INV_ResetCnt\(29) <= NOT \uut|ResetCnt\(29);
\uut|ALT_INV_ResetCnt\(31) <= NOT \uut|ResetCnt\(31);
\uut|ALT_INV_ResetCnt\(0) <= NOT \uut|ResetCnt\(0);
\uut|ALT_INV_ResetCnt\(1) <= NOT \uut|ResetCnt\(1);
\uut|ALT_INV_ResetCnt\(21) <= NOT \uut|ResetCnt\(21);
\uut|ALT_INV_ResetCnt\(22) <= NOT \uut|ResetCnt\(22);
\uut|ALT_INV_ResetCnt\(23) <= NOT \uut|ResetCnt\(23);
\uut|ALT_INV_ResetCnt\(24) <= NOT \uut|ResetCnt\(24);
\uut|ALT_INV_ResetCnt\(25) <= NOT \uut|ResetCnt\(25);
\uut|ALT_INV_ResetCnt\(26) <= NOT \uut|ResetCnt\(26);
\uut|ALT_INV_ResetCnt\(19) <= NOT \uut|ResetCnt\(19);
\uut|ALT_INV_ResetCnt\(20) <= NOT \uut|ResetCnt\(20);
\uut|ALT_INV_Add3~9_sumout\ <= NOT \uut|Add3~9_sumout\;
\uut|ALT_INV_Add3~5_sumout\ <= NOT \uut|Add3~5_sumout\;
\uut|ALT_INV_Add3~1_sumout\ <= NOT \uut|Add3~1_sumout\;
\uut|ALT_INV_CntWaitCycles\(3) <= NOT \uut|CntWaitCycles\(3);
\uut|ALT_INV_CntWaitCycles\(1) <= NOT \uut|CntWaitCycles\(1);
\uut|ALT_INV_CntWaitCycles\(2) <= NOT \uut|CntWaitCycles\(2);
\uut|ALT_INV_CntWaitCycles\(5) <= NOT \uut|CntWaitCycles\(5);
\uut|ALT_INV_CntWaitCycles\(6) <= NOT \uut|CntWaitCycles\(6);
\uut|ALT_INV_CntWaitCycles\(18) <= NOT \uut|CntWaitCycles\(18);
\uut|ALT_INV_CntWaitCycles\(20) <= NOT \uut|CntWaitCycles\(20);
\uut|ALT_INV_CntWaitCycles\(21) <= NOT \uut|CntWaitCycles\(21);
\uut|ALT_INV_CntWaitCycles\(22) <= NOT \uut|CntWaitCycles\(22);
\uut|ALT_INV_CntWaitCycles\(23) <= NOT \uut|CntWaitCycles\(23);
\uut|ALT_INV_CntWaitCycles\(24) <= NOT \uut|CntWaitCycles\(24);
\uut|ALT_INV_CntWaitCycles\(25) <= NOT \uut|CntWaitCycles\(25);
\uut|ALT_INV_CntWaitCycles\(26) <= NOT \uut|CntWaitCycles\(26);
\uut|ALT_INV_CntWaitCycles\(27) <= NOT \uut|CntWaitCycles\(27);
\uut|ALT_INV_CntWaitCycles\(28) <= NOT \uut|CntWaitCycles\(28);
\uut|ALT_INV_CntWaitCycles\(29) <= NOT \uut|CntWaitCycles\(29);
\uut|ALT_INV_CntWaitCycles\(11) <= NOT \uut|CntWaitCycles\(11);
\uut|ALT_INV_CntWaitCycles\(12) <= NOT \uut|CntWaitCycles\(12);
\uut|ALT_INV_CntWaitCycles\(13) <= NOT \uut|CntWaitCycles\(13);
\uut|ALT_INV_CntWaitCycles\(14) <= NOT \uut|CntWaitCycles\(14);
\uut|ALT_INV_CntWaitCycles\(15) <= NOT \uut|CntWaitCycles\(15);
\uut|ALT_INV_CntWaitCycles\(16) <= NOT \uut|CntWaitCycles\(16);
\uut|ALT_INV_CntWaitCycles\(19) <= NOT \uut|CntWaitCycles\(19);
\uut|ALT_INV_CntWaitCycles\(4) <= NOT \uut|CntWaitCycles\(4);
\uut|ALT_INV_CntWaitCycles\(7) <= NOT \uut|CntWaitCycles\(7);
\uut|ALT_INV_CntWaitCycles\(8) <= NOT \uut|CntWaitCycles\(8);
\uut|ALT_INV_CntWaitCycles\(9) <= NOT \uut|CntWaitCycles\(9);
\uut|ALT_INV_CntWaitCycles\(10) <= NOT \uut|CntWaitCycles\(10);
\uut|ALT_INV_CntWaitCycles\(17) <= NOT \uut|CntWaitCycles\(17);
\uut|ALT_INV_CntWaitCycles\(30) <= NOT \uut|CntWaitCycles\(30);
\uut|ALT_INV_CntWaitCycles\(31) <= NOT \uut|CntWaitCycles\(31);
\uut|ALT_INV_SlaveClkCounter\(31) <= NOT \uut|SlaveClkCounter\(31);
\uut|ALT_INV_SlaveClkCounter\(3) <= NOT \uut|SlaveClkCounter\(3);
\uut|ALT_INV_SlaveClkCounter\(6) <= NOT \uut|SlaveClkCounter\(6);
\uut|ALT_INV_SlaveClkCounter\(9) <= NOT \uut|SlaveClkCounter\(9);
\uut|ALT_INV_SlaveClkCounter\(4) <= NOT \uut|SlaveClkCounter\(4);
\uut|ALT_INV_SlaveClkCounter\(5) <= NOT \uut|SlaveClkCounter\(5);
\uut|ALT_INV_SlaveClkCounter\(7) <= NOT \uut|SlaveClkCounter\(7);
\uut|ALT_INV_SlaveClkCounter\(8) <= NOT \uut|SlaveClkCounter\(8);
\uut|ALT_INV_SlaveClkCounter\(20) <= NOT \uut|SlaveClkCounter\(20);
\uut|ALT_INV_SlaveClkCounter\(10) <= NOT \uut|SlaveClkCounter\(10);
\uut|ALT_INV_SlaveClkCounter\(11) <= NOT \uut|SlaveClkCounter\(11);
\uut|ALT_INV_SlaveClkCounter\(12) <= NOT \uut|SlaveClkCounter\(12);
\uut|ALT_INV_SlaveClkCounter\(13) <= NOT \uut|SlaveClkCounter\(13);
\uut|ALT_INV_SlaveClkCounter\(14) <= NOT \uut|SlaveClkCounter\(14);
\uut|ALT_INV_SlaveClkCounter\(17) <= NOT \uut|SlaveClkCounter\(17);
\uut|ALT_INV_SlaveClkCounter\(25) <= NOT \uut|SlaveClkCounter\(25);
\uut|ALT_INV_SlaveClkCounter\(26) <= NOT \uut|SlaveClkCounter\(26);
\uut|ALT_INV_SlaveClkCounter\(28) <= NOT \uut|SlaveClkCounter\(28);
\uut|ALT_INV_SlaveClkCounter\(29) <= NOT \uut|SlaveClkCounter\(29);
\uut|ALT_INV_SlaveClkCounter\(30) <= NOT \uut|SlaveClkCounter\(30);
\uut|ALT_INV_SlaveClkCounter\(16) <= NOT \uut|SlaveClkCounter\(16);
\uut|ALT_INV_SlaveClkCounter\(23) <= NOT \uut|SlaveClkCounter\(23);
\uut|ALT_INV_SlaveClkCounter\(21) <= NOT \uut|SlaveClkCounter\(21);
\uut|ALT_INV_SlaveClkCounter\(22) <= NOT \uut|SlaveClkCounter\(22);
\uut|ALT_INV_SlaveClkCounter\(27) <= NOT \uut|SlaveClkCounter\(27);
\uut|ALT_INV_SlaveClkCounter\(24) <= NOT \uut|SlaveClkCounter\(24);
\uut|ALT_INV_SlaveClkCounter\(19) <= NOT \uut|SlaveClkCounter\(19);
\uut|ALT_INV_SlaveClkCounter\(18) <= NOT \uut|SlaveClkCounter\(18);
\uut|ALT_INV_SlaveClkCounter\(15) <= NOT \uut|SlaveClkCounter\(15);
\uut|ALT_INV_SysClkGenCounter\(25) <= NOT \uut|SysClkGenCounter\(25);
\uut|ALT_INV_SysClkGenCounter\(26) <= NOT \uut|SysClkGenCounter\(26);
\uut|ALT_INV_SysClkGenCounter\(27) <= NOT \uut|SysClkGenCounter\(27);
\uut|ALT_INV_SysClkGenCounter\(31) <= NOT \uut|SysClkGenCounter\(31);
\uut|ALT_INV_SysClkGenCounter\(5) <= NOT \uut|SysClkGenCounter\(5);
\uut|ALT_INV_SysClkGenCounter\(21) <= NOT \uut|SysClkGenCounter\(21);
\uut|ALT_INV_SysClkGenCounter\(7) <= NOT \uut|SysClkGenCounter\(7);
\uut|ALT_INV_SysClkGenCounter\(29) <= NOT \uut|SysClkGenCounter\(29);
\uut|ALT_INV_SysClkGenCounter\(28) <= NOT \uut|SysClkGenCounter\(28);
\uut|ALT_INV_SysClkGenCounter\(30) <= NOT \uut|SysClkGenCounter\(30);
\uut|ALT_INV_SysClkGenCounter\(1) <= NOT \uut|SysClkGenCounter\(1);
\uut|ALT_INV_SysClkGenCounter\(18) <= NOT \uut|SysClkGenCounter\(18);
\uut|ALT_INV_SysClkGenCounter\(19) <= NOT \uut|SysClkGenCounter\(19);
\uut|ALT_INV_SysClkGenCounter\(20) <= NOT \uut|SysClkGenCounter\(20);
\uut|ALT_INV_SysClkGenCounter\(22) <= NOT \uut|SysClkGenCounter\(22);
\uut|ALT_INV_SysClkGenCounter\(23) <= NOT \uut|SysClkGenCounter\(23);
\uut|ALT_INV_SysClkGenCounter\(24) <= NOT \uut|SysClkGenCounter\(24);
\uut|ALT_INV_SysClkGenCounter\(12) <= NOT \uut|SysClkGenCounter\(12);
\uut|ALT_INV_SysClkGenCounter\(13) <= NOT \uut|SysClkGenCounter\(13);
\uut|ALT_INV_SysClkGenCounter\(14) <= NOT \uut|SysClkGenCounter\(14);
\uut|ALT_INV_SysClkGenCounter\(15) <= NOT \uut|SysClkGenCounter\(15);
\uut|ALT_INV_SysClkGenCounter\(16) <= NOT \uut|SysClkGenCounter\(16);
\uut|ALT_INV_SysClkGenCounter\(17) <= NOT \uut|SysClkGenCounter\(17);
\uut|ALT_INV_SysClkGenCounter\(4) <= NOT \uut|SysClkGenCounter\(4);
\uut|ALT_INV_SysClkGenCounter\(6) <= NOT \uut|SysClkGenCounter\(6);
\uut|ALT_INV_SysClkGenCounter\(8) <= NOT \uut|SysClkGenCounter\(8);
\uut|ALT_INV_SysClkGenCounter\(9) <= NOT \uut|SysClkGenCounter\(9);
\uut|ALT_INV_SysClkGenCounter\(10) <= NOT \uut|SysClkGenCounter\(10);
\uut|ALT_INV_SysClkGenCounter\(11) <= NOT \uut|SysClkGenCounter\(11);
\uut|ALT_INV_SysClkGenCounter\(2) <= NOT \uut|SysClkGenCounter\(2);
\uut|ALT_INV_SysClkGenCounter\(3) <= NOT \uut|SysClkGenCounter\(3);
\uut|ALT_INV_oMotion\(4) <= NOT \uut|oMotion\(4);
\uut|ALT_INV_oMotion\(5) <= NOT \uut|oMotion\(5);
\uut|ALT_INV_oMotion\(6) <= NOT \uut|oMotion\(6);
\uut|ALT_INV_oMotion\(7) <= NOT \uut|oMotion\(7);
\uut|ALT_INV_oMotion\(0) <= NOT \uut|oMotion\(0);
\uut|ALT_INV_oMotion\(1) <= NOT \uut|oMotion\(1);
\uut|ALT_INV_oMotion\(2) <= NOT \uut|oMotion\(2);
\uut|ALT_INV_oMotion\(3) <= NOT \uut|oMotion\(3);
\uut|ALT_INV_SysClk~q\ <= NOT \uut|SysClk~q\;

-- Location: IOOBUF_X68_Y12_N22
\oDataValid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_oDataValid~reg0_q\,
	devoe => ww_devoe,
	o => ww_oDataValid);

-- Location: IOOBUF_X2_Y0_N59
\oSelect~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|ALT_INV_Sel~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_oSelect);

-- Location: IOOBUF_X2_Y0_N93
\oSysClk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|SysClk~q\,
	devoe => ww_devoe,
	o => ww_oSysClk);

-- Location: IOOBUF_X2_Y0_N42
\oMOSI~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|MasterOutput~q\,
	devoe => ww_devoe,
	o => ww_oMOSI);

-- Location: IOOBUF_X4_Y0_N53
\oResetSensor~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|ALT_INV_ResetSensor~q\,
	devoe => ww_devoe,
	o => ww_oResetSensor);

-- Location: IOOBUF_X12_Y0_N53
\oNPD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_oNPD);

-- Location: IOOBUF_X68_Y13_N56
\oInitializedLED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \oInitializedLED~reg0_q\,
	devoe => ww_devoe,
	o => ww_oInitializedLED);

-- Location: IOIBUF_X15_Y0_N1
\iClk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iClk,
	o => \iClk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X2_Y6_N0
\uut|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~37_sumout\ = SUM(( \uut|ResetCnt\(0) ) + ( VCC ) + ( !VCC ))
-- \uut|Add1~38\ = CARRY(( \uut|ResetCnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(0),
	cin => GND,
	sumout => \uut|Add1~37_sumout\,
	cout => \uut|Add1~38\);

-- Location: IOIBUF_X4_Y61_N52
\inResetAsync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inResetAsync,
	o => \inResetAsync~input_o\);

-- Location: CLKCTRL_G2
\inResetAsync~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \inResetAsync~input_o\,
	outclk => \inResetAsync~inputCLKENA0_outclk\);

-- Location: LABCELL_X2_Y8_N0
\GenerateStrobeKHz|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~9_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \GenerateStrobeKHz|Add0~10\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(0),
	cin => GND,
	sumout => \GenerateStrobeKHz|Add0~9_sumout\,
	cout => \GenerateStrobeKHz|Add0~10\);

-- Location: FF_X2_Y8_N1
\GenerateStrobeKHz|ClkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~9_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(0));

-- Location: LABCELL_X2_Y8_N3
\GenerateStrobeKHz|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~13_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(1) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~10\ ))
-- \GenerateStrobeKHz|Add0~14\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(1) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(1),
	cin => \GenerateStrobeKHz|Add0~10\,
	sumout => \GenerateStrobeKHz|Add0~13_sumout\,
	cout => \GenerateStrobeKHz|Add0~14\);

-- Location: FF_X2_Y8_N4
\GenerateStrobeKHz|ClkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~13_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(1));

-- Location: LABCELL_X2_Y8_N6
\GenerateStrobeKHz|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~17_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(2) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~14\ ))
-- \GenerateStrobeKHz|Add0~18\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(2) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(2),
	cin => \GenerateStrobeKHz|Add0~14\,
	sumout => \GenerateStrobeKHz|Add0~17_sumout\,
	cout => \GenerateStrobeKHz|Add0~18\);

-- Location: FF_X2_Y8_N7
\GenerateStrobeKHz|ClkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~17_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(2));

-- Location: LABCELL_X2_Y8_N9
\GenerateStrobeKHz|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~21_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(3) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~18\ ))
-- \GenerateStrobeKHz|Add0~22\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(3) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(3),
	cin => \GenerateStrobeKHz|Add0~18\,
	sumout => \GenerateStrobeKHz|Add0~21_sumout\,
	cout => \GenerateStrobeKHz|Add0~22\);

-- Location: FF_X2_Y8_N10
\GenerateStrobeKHz|ClkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~21_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(3));

-- Location: LABCELL_X2_Y8_N12
\GenerateStrobeKHz|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~25_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(4) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~22\ ))
-- \GenerateStrobeKHz|Add0~26\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(4) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(4),
	cin => \GenerateStrobeKHz|Add0~22\,
	sumout => \GenerateStrobeKHz|Add0~25_sumout\,
	cout => \GenerateStrobeKHz|Add0~26\);

-- Location: FF_X2_Y8_N13
\GenerateStrobeKHz|ClkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~25_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(4));

-- Location: LABCELL_X2_Y8_N15
\GenerateStrobeKHz|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~1_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(5) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~26\ ))
-- \GenerateStrobeKHz|Add0~2\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(5) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(5),
	cin => \GenerateStrobeKHz|Add0~26\,
	sumout => \GenerateStrobeKHz|Add0~1_sumout\,
	cout => \GenerateStrobeKHz|Add0~2\);

-- Location: FF_X2_Y8_N16
\GenerateStrobeKHz|ClkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~1_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(5));

-- Location: LABCELL_X2_Y8_N18
\GenerateStrobeKHz|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~29_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(6) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~2\ ))
-- \GenerateStrobeKHz|Add0~30\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(6) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(6),
	cin => \GenerateStrobeKHz|Add0~2\,
	sumout => \GenerateStrobeKHz|Add0~29_sumout\,
	cout => \GenerateStrobeKHz|Add0~30\);

-- Location: FF_X2_Y8_N19
\GenerateStrobeKHz|ClkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~29_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(6));

-- Location: LABCELL_X2_Y8_N21
\GenerateStrobeKHz|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~33_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(7) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~30\ ))
-- \GenerateStrobeKHz|Add0~34\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(7) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(7),
	cin => \GenerateStrobeKHz|Add0~30\,
	sumout => \GenerateStrobeKHz|Add0~33_sumout\,
	cout => \GenerateStrobeKHz|Add0~34\);

-- Location: FF_X2_Y8_N22
\GenerateStrobeKHz|ClkCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~33_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(7));

-- Location: LABCELL_X2_Y8_N24
\GenerateStrobeKHz|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~37_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(8) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~34\ ))
-- \GenerateStrobeKHz|Add0~38\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(8) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(8),
	cin => \GenerateStrobeKHz|Add0~34\,
	sumout => \GenerateStrobeKHz|Add0~37_sumout\,
	cout => \GenerateStrobeKHz|Add0~38\);

-- Location: FF_X2_Y8_N25
\GenerateStrobeKHz|ClkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~37_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(8));

-- Location: LABCELL_X2_Y8_N27
\GenerateStrobeKHz|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~41_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(9) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~38\ ))
-- \GenerateStrobeKHz|Add0~42\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(9) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(9),
	cin => \GenerateStrobeKHz|Add0~38\,
	sumout => \GenerateStrobeKHz|Add0~41_sumout\,
	cout => \GenerateStrobeKHz|Add0~42\);

-- Location: FF_X2_Y8_N28
\GenerateStrobeKHz|ClkCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~41_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(9));

-- Location: LABCELL_X2_Y8_N30
\GenerateStrobeKHz|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~45_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(10) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~42\ ))
-- \GenerateStrobeKHz|Add0~46\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(10) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(10),
	cin => \GenerateStrobeKHz|Add0~42\,
	sumout => \GenerateStrobeKHz|Add0~45_sumout\,
	cout => \GenerateStrobeKHz|Add0~46\);

-- Location: FF_X2_Y8_N31
\GenerateStrobeKHz|ClkCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~45_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(10));

-- Location: LABCELL_X2_Y8_N33
\GenerateStrobeKHz|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~5_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(11) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~46\ ))
-- \GenerateStrobeKHz|Add0~6\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(11) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(11),
	cin => \GenerateStrobeKHz|Add0~46\,
	sumout => \GenerateStrobeKHz|Add0~5_sumout\,
	cout => \GenerateStrobeKHz|Add0~6\);

-- Location: FF_X2_Y8_N34
\GenerateStrobeKHz|ClkCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~5_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(11));

-- Location: LABCELL_X2_Y8_N36
\GenerateStrobeKHz|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~49_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(12) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~6\ ))
-- \GenerateStrobeKHz|Add0~50\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(12) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(12),
	cin => \GenerateStrobeKHz|Add0~6\,
	sumout => \GenerateStrobeKHz|Add0~49_sumout\,
	cout => \GenerateStrobeKHz|Add0~50\);

-- Location: FF_X2_Y8_N38
\GenerateStrobeKHz|ClkCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~49_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(12));

-- Location: LABCELL_X2_Y8_N39
\GenerateStrobeKHz|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~53_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(13) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~50\ ))
-- \GenerateStrobeKHz|Add0~54\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(13) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(13),
	cin => \GenerateStrobeKHz|Add0~50\,
	sumout => \GenerateStrobeKHz|Add0~53_sumout\,
	cout => \GenerateStrobeKHz|Add0~54\);

-- Location: FF_X2_Y8_N41
\GenerateStrobeKHz|ClkCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~53_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(13));

-- Location: LABCELL_X2_Y8_N42
\GenerateStrobeKHz|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~65_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(14) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~54\ ))
-- \GenerateStrobeKHz|Add0~66\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(14) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(14),
	cin => \GenerateStrobeKHz|Add0~54\,
	sumout => \GenerateStrobeKHz|Add0~65_sumout\,
	cout => \GenerateStrobeKHz|Add0~66\);

-- Location: FF_X2_Y8_N44
\GenerateStrobeKHz|ClkCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~65_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(14));

-- Location: LABCELL_X2_Y8_N45
\GenerateStrobeKHz|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~57_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(15) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~66\ ))
-- \GenerateStrobeKHz|Add0~58\ = CARRY(( \GenerateStrobeKHz|ClkCounter\(15) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(15),
	cin => \GenerateStrobeKHz|Add0~66\,
	sumout => \GenerateStrobeKHz|Add0~57_sumout\,
	cout => \GenerateStrobeKHz|Add0~58\);

-- Location: FF_X2_Y8_N47
\GenerateStrobeKHz|ClkCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~57_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(15));

-- Location: LABCELL_X2_Y8_N48
\GenerateStrobeKHz|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Add0~61_sumout\ = SUM(( \GenerateStrobeKHz|ClkCounter\(16) ) + ( GND ) + ( \GenerateStrobeKHz|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(16),
	cin => \GenerateStrobeKHz|Add0~58\,
	sumout => \GenerateStrobeKHz|Add0~61_sumout\);

-- Location: FF_X2_Y8_N50
\GenerateStrobeKHz|ClkCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|Add0~61_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \GenerateStrobeKHz|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|ClkCounter\(16));

-- Location: LABCELL_X2_Y8_N54
\GenerateStrobeKHz|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Equal0~2_combout\ = ( !\GenerateStrobeKHz|ClkCounter\(12) & ( !\GenerateStrobeKHz|ClkCounter\(13) & ( (\GenerateStrobeKHz|ClkCounter\(14) & (!\GenerateStrobeKHz|ClkCounter\(16) & \GenerateStrobeKHz|ClkCounter\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobeKHz|ALT_INV_ClkCounter\(14),
	datac => \GenerateStrobeKHz|ALT_INV_ClkCounter\(16),
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(15),
	datae => \GenerateStrobeKHz|ALT_INV_ClkCounter\(12),
	dataf => \GenerateStrobeKHz|ALT_INV_ClkCounter\(13),
	combout => \GenerateStrobeKHz|Equal0~2_combout\);

-- Location: MLABCELL_X3_Y8_N6
\GenerateStrobeKHz|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Equal0~0_combout\ = ( !\GenerateStrobeKHz|ClkCounter\(4) & ( \GenerateStrobeKHz|ClkCounter\(0) & ( (\GenerateStrobeKHz|ClkCounter\(3) & (\GenerateStrobeKHz|ClkCounter\(2) & \GenerateStrobeKHz|ClkCounter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobeKHz|ALT_INV_ClkCounter\(3),
	datac => \GenerateStrobeKHz|ALT_INV_ClkCounter\(2),
	datad => \GenerateStrobeKHz|ALT_INV_ClkCounter\(1),
	datae => \GenerateStrobeKHz|ALT_INV_ClkCounter\(4),
	dataf => \GenerateStrobeKHz|ALT_INV_ClkCounter\(0),
	combout => \GenerateStrobeKHz|Equal0~0_combout\);

-- Location: MLABCELL_X3_Y8_N24
\GenerateStrobeKHz|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Equal0~1_combout\ = ( !\GenerateStrobeKHz|ClkCounter\(7) & ( \GenerateStrobeKHz|ClkCounter\(6) & ( (!\GenerateStrobeKHz|ClkCounter\(10) & (\GenerateStrobeKHz|ClkCounter\(8) & \GenerateStrobeKHz|ClkCounter\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeKHz|ALT_INV_ClkCounter\(10),
	datab => \GenerateStrobeKHz|ALT_INV_ClkCounter\(8),
	datac => \GenerateStrobeKHz|ALT_INV_ClkCounter\(9),
	datae => \GenerateStrobeKHz|ALT_INV_ClkCounter\(7),
	dataf => \GenerateStrobeKHz|ALT_INV_ClkCounter\(6),
	combout => \GenerateStrobeKHz|Equal0~1_combout\);

-- Location: MLABCELL_X3_Y8_N33
\GenerateStrobeKHz|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|Equal0~3_combout\ = ( !\GenerateStrobeKHz|ClkCounter\(11) & ( \GenerateStrobeKHz|Equal0~1_combout\ & ( (\GenerateStrobeKHz|Equal0~2_combout\ & (\GenerateStrobeKHz|Equal0~0_combout\ & !\GenerateStrobeKHz|ClkCounter\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeKHz|ALT_INV_Equal0~2_combout\,
	datab => \GenerateStrobeKHz|ALT_INV_Equal0~0_combout\,
	datac => \GenerateStrobeKHz|ALT_INV_ClkCounter\(5),
	datae => \GenerateStrobeKHz|ALT_INV_ClkCounter\(11),
	dataf => \GenerateStrobeKHz|ALT_INV_Equal0~1_combout\,
	combout => \GenerateStrobeKHz|Equal0~3_combout\);

-- Location: MLABCELL_X3_Y8_N48
\GenerateStrobeKHz|oStrobe~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeKHz|oStrobe~feeder_combout\ = ( \GenerateStrobeKHz|Equal0~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \GenerateStrobeKHz|ALT_INV_Equal0~3_combout\,
	combout => \GenerateStrobeKHz|oStrobe~feeder_combout\);

-- Location: FF_X3_Y8_N49
\GenerateStrobeKHz|oStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeKHz|oStrobe~feeder_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeKHz|oStrobe~q\);

-- Location: LABCELL_X4_Y5_N0
\uut|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~81_sumout\ = SUM(( !\uut|SysClkGenCounter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \uut|Add0~82\ = CARRY(( !\uut|SysClkGenCounter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SysClkGenCounter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \uut|Add0~81_sumout\,
	cout => \uut|Add0~82\);

-- Location: MLABCELL_X3_Y5_N0
\GenerateStrobeMHz|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~9_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter\(0) ) + ( VCC ) + ( !VCC ))
-- \GenerateStrobeMHz|Add0~10\ = CARRY(( \GenerateStrobeMHz|ClkCounter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(0),
	cin => GND,
	sumout => \GenerateStrobeMHz|Add0~9_sumout\,
	cout => \GenerateStrobeMHz|Add0~10\);

-- Location: FF_X3_Y5_N2
\GenerateStrobeMHz|ClkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|Add0~9_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(0));

-- Location: FF_X3_Y5_N31
\GenerateStrobeMHz|ClkCounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|ClkCounter~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y5_N3
\GenerateStrobeMHz|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~5_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ ) + ( GND ) + ( \GenerateStrobeMHz|Add0~10\ ))
-- \GenerateStrobeMHz|Add0~6\ = CARRY(( \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ ) + ( GND ) + ( \GenerateStrobeMHz|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_ClkCounter[1]~DUPLICATE_q\,
	cin => \GenerateStrobeMHz|Add0~10\,
	sumout => \GenerateStrobeMHz|Add0~5_sumout\,
	cout => \GenerateStrobeMHz|Add0~6\);

-- Location: MLABCELL_X3_Y5_N6
\GenerateStrobeMHz|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~1_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter\(2) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~6\ ))
-- \GenerateStrobeMHz|Add0~2\ = CARRY(( \GenerateStrobeMHz|ClkCounter\(2) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(2),
	cin => \GenerateStrobeMHz|Add0~6\,
	sumout => \GenerateStrobeMHz|Add0~1_sumout\,
	cout => \GenerateStrobeMHz|Add0~2\);

-- Location: FF_X3_Y5_N7
\GenerateStrobeMHz|ClkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|Add0~1_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(2));

-- Location: MLABCELL_X3_Y5_N9
\GenerateStrobeMHz|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~25_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter\(3) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~2\ ))
-- \GenerateStrobeMHz|Add0~26\ = CARRY(( \GenerateStrobeMHz|ClkCounter\(3) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(3),
	cin => \GenerateStrobeMHz|Add0~2\,
	sumout => \GenerateStrobeMHz|Add0~25_sumout\,
	cout => \GenerateStrobeMHz|Add0~26\);

-- Location: FF_X3_Y5_N11
\GenerateStrobeMHz|ClkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|Add0~25_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(3));

-- Location: MLABCELL_X3_Y5_N12
\GenerateStrobeMHz|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~21_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter\(4) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~26\ ))
-- \GenerateStrobeMHz|Add0~22\ = CARRY(( \GenerateStrobeMHz|ClkCounter\(4) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GenerateStrobeMHz|ALT_INV_ClkCounter\(4),
	cin => \GenerateStrobeMHz|Add0~26\,
	sumout => \GenerateStrobeMHz|Add0~21_sumout\,
	cout => \GenerateStrobeMHz|Add0~22\);

-- Location: MLABCELL_X3_Y5_N33
\GenerateStrobeMHz|ClkCounter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|ClkCounter~2_combout\ = ( \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ & ( \GenerateStrobeMHz|Add0~21_sumout\ ) ) # ( !\GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ & ( (\GenerateStrobeMHz|Add0~21_sumout\ & 
-- ((!\GenerateStrobeMHz|ClkCounter\(0)) # ((!\GenerateStrobeMHz|Equal0~0_combout\) # (\GenerateStrobeMHz|ClkCounter\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_ClkCounter\(0),
	datab => \GenerateStrobeMHz|ALT_INV_Equal0~0_combout\,
	datac => \GenerateStrobeMHz|ALT_INV_Add0~21_sumout\,
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(2),
	dataf => \GenerateStrobeMHz|ALT_INV_ClkCounter[1]~DUPLICATE_q\,
	combout => \GenerateStrobeMHz|ClkCounter~2_combout\);

-- Location: FF_X3_Y5_N35
\GenerateStrobeMHz|ClkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|ClkCounter~2_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(4));

-- Location: MLABCELL_X3_Y5_N15
\GenerateStrobeMHz|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~17_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter\(5) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~22\ ))
-- \GenerateStrobeMHz|Add0~18\ = CARRY(( \GenerateStrobeMHz|ClkCounter\(5) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_ClkCounter\(5),
	cin => \GenerateStrobeMHz|Add0~22\,
	sumout => \GenerateStrobeMHz|Add0~17_sumout\,
	cout => \GenerateStrobeMHz|Add0~18\);

-- Location: MLABCELL_X3_Y5_N36
\GenerateStrobeMHz|ClkCounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|ClkCounter~1_combout\ = ( \GenerateStrobeMHz|ClkCounter\(2) & ( \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ & ( \GenerateStrobeMHz|Add0~17_sumout\ ) ) ) # ( !\GenerateStrobeMHz|ClkCounter\(2) & ( 
-- \GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ & ( \GenerateStrobeMHz|Add0~17_sumout\ ) ) ) # ( \GenerateStrobeMHz|ClkCounter\(2) & ( !\GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ & ( \GenerateStrobeMHz|Add0~17_sumout\ ) ) ) # ( 
-- !\GenerateStrobeMHz|ClkCounter\(2) & ( !\GenerateStrobeMHz|ClkCounter[1]~DUPLICATE_q\ & ( (\GenerateStrobeMHz|Add0~17_sumout\ & ((!\GenerateStrobeMHz|ClkCounter\(0)) # (!\GenerateStrobeMHz|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_ClkCounter\(0),
	datab => \GenerateStrobeMHz|ALT_INV_Add0~17_sumout\,
	datac => \GenerateStrobeMHz|ALT_INV_Equal0~0_combout\,
	datae => \GenerateStrobeMHz|ALT_INV_ClkCounter\(2),
	dataf => \GenerateStrobeMHz|ALT_INV_ClkCounter[1]~DUPLICATE_q\,
	combout => \GenerateStrobeMHz|ClkCounter~1_combout\);

-- Location: FF_X3_Y5_N38
\GenerateStrobeMHz|ClkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|ClkCounter~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(5));

-- Location: MLABCELL_X3_Y5_N18
\GenerateStrobeMHz|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Add0~13_sumout\ = SUM(( \GenerateStrobeMHz|ClkCounter\(6) ) + ( GND ) + ( \GenerateStrobeMHz|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(6),
	cin => \GenerateStrobeMHz|Add0~18\,
	sumout => \GenerateStrobeMHz|Add0~13_sumout\);

-- Location: FF_X3_Y5_N20
\GenerateStrobeMHz|ClkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|Add0~13_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(6));

-- Location: MLABCELL_X3_Y5_N24
\GenerateStrobeMHz|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Equal0~0_combout\ = ( !\GenerateStrobeMHz|ClkCounter\(6) & ( (!\GenerateStrobeMHz|ClkCounter\(3) & (\GenerateStrobeMHz|ClkCounter\(4) & \GenerateStrobeMHz|ClkCounter\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \GenerateStrobeMHz|ALT_INV_ClkCounter\(3),
	datac => \GenerateStrobeMHz|ALT_INV_ClkCounter\(4),
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(5),
	dataf => \GenerateStrobeMHz|ALT_INV_ClkCounter\(6),
	combout => \GenerateStrobeMHz|Equal0~0_combout\);

-- Location: MLABCELL_X3_Y5_N30
\GenerateStrobeMHz|ClkCounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|ClkCounter~0_combout\ = ( \GenerateStrobeMHz|ClkCounter\(2) & ( \GenerateStrobeMHz|Add0~5_sumout\ ) ) # ( !\GenerateStrobeMHz|ClkCounter\(2) & ( (\GenerateStrobeMHz|Add0~5_sumout\ & ((!\GenerateStrobeMHz|ClkCounter\(0)) # 
-- ((!\GenerateStrobeMHz|Equal0~0_combout\) # (\GenerateStrobeMHz|ClkCounter\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001111000011100000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_ClkCounter\(0),
	datab => \GenerateStrobeMHz|ALT_INV_Equal0~0_combout\,
	datac => \GenerateStrobeMHz|ALT_INV_Add0~5_sumout\,
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(1),
	dataf => \GenerateStrobeMHz|ALT_INV_ClkCounter\(2),
	combout => \GenerateStrobeMHz|ClkCounter~0_combout\);

-- Location: FF_X3_Y5_N32
\GenerateStrobeMHz|ClkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|ClkCounter~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|ClkCounter\(1));

-- Location: MLABCELL_X3_Y5_N27
\GenerateStrobeMHz|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GenerateStrobeMHz|Equal0~1_combout\ = ( \GenerateStrobeMHz|Equal0~0_combout\ & ( (\GenerateStrobeMHz|ClkCounter\(0) & (!\GenerateStrobeMHz|ClkCounter\(1) & !\GenerateStrobeMHz|ClkCounter\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_ClkCounter\(0),
	datac => \GenerateStrobeMHz|ALT_INV_ClkCounter\(1),
	datad => \GenerateStrobeMHz|ALT_INV_ClkCounter\(2),
	dataf => \GenerateStrobeMHz|ALT_INV_Equal0~0_combout\,
	combout => \GenerateStrobeMHz|Equal0~1_combout\);

-- Location: FF_X3_Y5_N28
\GenerateStrobeMHz|oStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|Equal0~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|oStrobe~q\);

-- Location: FF_X3_Y5_N29
\GenerateStrobeMHz|oStrobe~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \GenerateStrobeMHz|Equal0~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GenerateStrobeMHz|oStrobe~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y4_N30
\uut|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~2_combout\ = ( !\uut|CntWaitCycles\(11) & ( !\uut|CntWaitCycles\(15) & ( (!\uut|CntWaitCycles\(13) & (!\uut|CntWaitCycles\(16) & (!\uut|CntWaitCycles\(12) & !\uut|CntWaitCycles\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles\(13),
	datab => \uut|ALT_INV_CntWaitCycles\(16),
	datac => \uut|ALT_INV_CntWaitCycles\(12),
	datad => \uut|ALT_INV_CntWaitCycles\(14),
	datae => \uut|ALT_INV_CntWaitCycles\(11),
	dataf => \uut|ALT_INV_CntWaitCycles\(15),
	combout => \uut|Equal3~2_combout\);

-- Location: MLABCELL_X3_Y4_N36
\uut|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~1_combout\ = ( !\uut|CntWaitCycles\(9) & ( !\uut|CntWaitCycles\(8) & ( (!\uut|CntWaitCycles\(7) & (!\uut|CntWaitCycles\(19) & (!\uut|CntWaitCycles\(4) & !\uut|CntWaitCycles\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles\(7),
	datab => \uut|ALT_INV_CntWaitCycles\(19),
	datac => \uut|ALT_INV_CntWaitCycles\(4),
	datad => \uut|ALT_INV_CntWaitCycles\(10),
	datae => \uut|ALT_INV_CntWaitCycles\(9),
	dataf => \uut|ALT_INV_CntWaitCycles\(8),
	combout => \uut|Equal3~1_combout\);

-- Location: LABCELL_X2_Y3_N24
\uut|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~69_sumout\ = SUM(( \uut|CntWaitCycles\(28) ) + ( GND ) + ( \uut|Add2~74\ ))
-- \uut|Add2~70\ = CARRY(( \uut|CntWaitCycles\(28) ) + ( GND ) + ( \uut|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(28),
	cin => \uut|Add2~74\,
	sumout => \uut|Add2~69_sumout\,
	cout => \uut|Add2~70\);

-- Location: LABCELL_X2_Y3_N27
\uut|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~65_sumout\ = SUM(( \uut|CntWaitCycles\(29) ) + ( GND ) + ( \uut|Add2~70\ ))
-- \uut|Add2~66\ = CARRY(( \uut|CntWaitCycles\(29) ) + ( GND ) + ( \uut|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(29),
	cin => \uut|Add2~70\,
	sumout => \uut|Add2~65_sumout\,
	cout => \uut|Add2~66\);

-- Location: MLABCELL_X3_Y4_N21
\uut|CntWaitCycles[29]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[29]~0_combout\ = ( \uut|WideOr1~1_combout\ & ( \uut|Equal5~1_combout\ ) ) # ( !\uut|WideOr1~1_combout\ & ( \uut|Equal5~1_combout\ & ( (\uut|Equal3~6_combout\) # (\uut|State.OutputAndWaitForWrite~q\) ) ) ) # ( \uut|WideOr1~1_combout\ & ( 
-- !\uut|Equal5~1_combout\ & ( !\uut|State.OutputAndWaitForWrite~q\ ) ) ) # ( !\uut|WideOr1~1_combout\ & ( !\uut|Equal5~1_combout\ & ( (!\uut|State.OutputAndWaitForWrite~q\ & \uut|Equal3~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011001100110000111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datac => \uut|ALT_INV_Equal3~6_combout\,
	datae => \uut|ALT_INV_WideOr1~1_combout\,
	dataf => \uut|ALT_INV_Equal5~1_combout\,
	combout => \uut|CntWaitCycles[29]~0_combout\);

-- Location: LABCELL_X4_Y1_N51
\uut|State.DoReset~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|State.DoReset~0_combout\ = ( !\uut|State.CheckMotionReg~q\ & ( (!\uut|State.DoReset~q\ & !\uut|State.Init~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_State.DoReset~q\,
	datad => \uut|ALT_INV_State.Init~q\,
	dataf => \uut|ALT_INV_State.CheckMotionReg~q\,
	combout => \uut|State.DoReset~0_combout\);

-- Location: MLABCELL_X3_Y3_N51
\uut|SlaveClkCounter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[0]~0_combout\ = ( \uut|Equal1~6_combout\ & ( (!\uut|SysClk~q\ & ((!\uut|Selector6~6_combout\))) # (\uut|SysClk~q\ & (!\uut|Selector82~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100001100001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SysClk~q\,
	datac => \uut|ALT_INV_Selector82~1_combout\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|SlaveClkCounter[0]~0_combout\);

-- Location: MLABCELL_X3_Y3_N6
\uut|Selector6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~7_combout\ = ( \uut|Selector82~1_combout\ & ( \uut|Selector6~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_Selector6~6_combout\,
	dataf => \uut|ALT_INV_Selector82~1_combout\,
	combout => \uut|Selector6~7_combout\);

-- Location: MLABCELL_X3_Y4_N54
\uut|Selector6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~10_combout\ = ( \GenerateStrobeKHz|oStrobe~q\ & ( !\uut|State.OutputAndWaitForWrite~q\ ) ) # ( !\GenerateStrobeKHz|oStrobe~q\ & ( (!\uut|State.OutputAndWaitForWrite~q\ & (!\uut|WideOr1~1_combout\ & \GenerateStrobeMHz|oStrobe~DUPLICATE_q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datac => \uut|ALT_INV_WideOr1~1_combout\,
	datad => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	dataf => \GenerateStrobeKHz|ALT_INV_oStrobe~q\,
	combout => \uut|Selector6~10_combout\);

-- Location: LABCELL_X4_Y1_N6
\uut|Selector6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~11_combout\ = ( \uut|Equal0~6_combout\ & ( \uut|Equal3~6_combout\ & ( (\uut|Selector6~7_combout\ & \uut|Selector6~10_combout\) ) ) ) # ( !\uut|Equal0~6_combout\ & ( \uut|Equal3~6_combout\ & ( (\uut|Selector6~7_combout\ & 
-- (\uut|Selector6~10_combout\ & !\uut|WideOr1~1_combout\)) ) ) ) # ( \uut|Equal0~6_combout\ & ( !\uut|Equal3~6_combout\ & ( (\uut|Selector6~7_combout\ & \uut|Selector6~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100010000000100000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector6~7_combout\,
	datab => \uut|ALT_INV_Selector6~10_combout\,
	datac => \uut|ALT_INV_WideOr1~1_combout\,
	datae => \uut|ALT_INV_Equal0~6_combout\,
	dataf => \uut|ALT_INV_Equal3~6_combout\,
	combout => \uut|Selector6~11_combout\);

-- Location: FF_X4_Y3_N31
\uut|SysClkEnable~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector49~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkEnable~DUPLICATE_q\);

-- Location: FF_X4_Y3_N1
\uut|Sel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector82~2_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Sel~q\);

-- Location: LABCELL_X4_Y3_N6
\uut|SlaveClkCounter[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[0]~1_combout\ = ( \uut|Sel~q\ & ( (!\uut|SysClkEnable~DUPLICATE_q\ & !\uut|Selector6~6_combout\) ) ) # ( !\uut|Sel~q\ & ( (!\uut|SysClkEnable~DUPLICATE_q\ & !\uut|Selector82~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	datac => \uut|ALT_INV_Selector82~1_combout\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	dataf => \uut|ALT_INV_Sel~q\,
	combout => \uut|SlaveClkCounter[0]~1_combout\);

-- Location: FF_X2_Y1_N38
\uut|SlaveClkCounter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector75~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[6]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N0
\uut|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~5_sumout\ = SUM(( \uut|SlaveClkCounter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \uut|Add3~6\ = CARRY(( \uut|SlaveClkCounter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \uut|Add3~5_sumout\,
	cout => \uut|Add3~6\);

-- Location: LABCELL_X1_Y2_N3
\uut|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~9_sumout\ = SUM(( \uut|SlaveClkCounter[1]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~6\ ))
-- \uut|Add3~10\ = CARRY(( \uut|SlaveClkCounter[1]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter[1]~DUPLICATE_q\,
	cin => \uut|Add3~6\,
	sumout => \uut|Add3~9_sumout\,
	cout => \uut|Add3~10\);

-- Location: LABCELL_X4_Y1_N33
\uut|Selector80~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector80~0_combout\ = ( !\uut|State.Init~q\ & ( \uut|Add3~9_sumout\ & ( ((!\uut|Sel~DUPLICATE_q\ & ((\uut|Selector82~1_combout\))) # (\uut|Sel~DUPLICATE_q\ & (\uut|Selector6~6_combout\))) # (\uut|SysClkEnable~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	datab => \uut|ALT_INV_Selector6~6_combout\,
	datac => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datad => \uut|ALT_INV_Selector82~1_combout\,
	datae => \uut|ALT_INV_State.Init~q\,
	dataf => \uut|ALT_INV_Add3~9_sumout\,
	combout => \uut|Selector80~0_combout\);

-- Location: FF_X4_Y1_N34
\uut|SlaveClkCounter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector80~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[1]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N6
\uut|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~1_sumout\ = SUM(( \uut|SlaveClkCounter[2]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~10\ ))
-- \uut|Add3~2\ = CARRY(( \uut|SlaveClkCounter[2]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[2]~DUPLICATE_q\,
	cin => \uut|Add3~10\,
	sumout => \uut|Add3~1_sumout\,
	cout => \uut|Add3~2\);

-- Location: LABCELL_X4_Y1_N54
\uut|Selector79~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector79~0_combout\ = ( !\uut|State.Init~q\ & ( \uut|Add3~1_sumout\ & ( ((!\uut|Sel~DUPLICATE_q\ & (\uut|Selector82~1_combout\)) # (\uut|Sel~DUPLICATE_q\ & ((\uut|Selector6~6_combout\)))) # (\uut|SysClkEnable~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector82~1_combout\,
	datab => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datac => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	datae => \uut|ALT_INV_State.Init~q\,
	dataf => \uut|ALT_INV_Add3~1_sumout\,
	combout => \uut|Selector79~0_combout\);

-- Location: FF_X4_Y1_N55
\uut|SlaveClkCounter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector79~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[2]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N9
\uut|Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~121_sumout\ = SUM(( \uut|SlaveClkCounter\(3) ) + ( VCC ) + ( \uut|Add3~2\ ))
-- \uut|Add3~122\ = CARRY(( \uut|SlaveClkCounter\(3) ) + ( VCC ) + ( \uut|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(3),
	cin => \uut|Add3~2\,
	sumout => \uut|Add3~121_sumout\,
	cout => \uut|Add3~122\);

-- Location: LABCELL_X4_Y2_N48
\uut|Selector78~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector78~0_combout\ = ( \uut|SlaveClkCounter[0]~1_combout\ & ( \uut|Add3~121_sumout\ ) ) # ( !\uut|SlaveClkCounter[0]~1_combout\ & ( \uut|Add3~121_sumout\ ) ) # ( \uut|SlaveClkCounter[0]~1_combout\ & ( !\uut|Add3~121_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~121_sumout\,
	combout => \uut|Selector78~0_combout\);

-- Location: FF_X3_Y2_N1
\uut|SlaveClkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \uut|Selector78~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	sload => VCC,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(3));

-- Location: LABCELL_X1_Y2_N12
\uut|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~109_sumout\ = SUM(( \uut|SlaveClkCounter[4]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~122\ ))
-- \uut|Add3~110\ = CARRY(( \uut|SlaveClkCounter[4]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter[4]~DUPLICATE_q\,
	cin => \uut|Add3~122\,
	sumout => \uut|Add3~109_sumout\,
	cout => \uut|Add3~110\);

-- Location: LABCELL_X2_Y1_N39
\uut|Selector77~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector77~0_combout\ = ( \uut|Add3~109_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~109_sumout\,
	combout => \uut|Selector77~0_combout\);

-- Location: FF_X2_Y1_N41
\uut|SlaveClkCounter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector77~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[4]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N15
\uut|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~105_sumout\ = SUM(( \uut|SlaveClkCounter[5]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~110\ ))
-- \uut|Add3~106\ = CARRY(( \uut|SlaveClkCounter[5]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[5]~DUPLICATE_q\,
	cin => \uut|Add3~110\,
	sumout => \uut|Add3~105_sumout\,
	cout => \uut|Add3~106\);

-- Location: LABCELL_X2_Y1_N15
\uut|Selector76~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector76~0_combout\ = (!\uut|SlaveClkCounter[0]~1_combout\ & \uut|Add3~105_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	datad => \uut|ALT_INV_Add3~105_sumout\,
	combout => \uut|Selector76~0_combout\);

-- Location: FF_X2_Y1_N17
\uut|SlaveClkCounter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector76~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[5]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N18
\uut|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~117_sumout\ = SUM(( \uut|SlaveClkCounter[6]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~106\ ))
-- \uut|Add3~118\ = CARRY(( \uut|SlaveClkCounter[6]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[6]~DUPLICATE_q\,
	cin => \uut|Add3~106\,
	sumout => \uut|Add3~117_sumout\,
	cout => \uut|Add3~118\);

-- Location: LABCELL_X2_Y1_N36
\uut|Selector75~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector75~0_combout\ = ( \uut|Add3~117_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~117_sumout\,
	combout => \uut|Selector75~0_combout\);

-- Location: FF_X2_Y1_N37
\uut|SlaveClkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector75~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(6));

-- Location: LABCELL_X1_Y2_N21
\uut|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~101_sumout\ = SUM(( \uut|SlaveClkCounter\(7) ) + ( VCC ) + ( \uut|Add3~118\ ))
-- \uut|Add3~102\ = CARRY(( \uut|SlaveClkCounter\(7) ) + ( VCC ) + ( \uut|Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(7),
	cin => \uut|Add3~118\,
	sumout => \uut|Add3~101_sumout\,
	cout => \uut|Add3~102\);

-- Location: MLABCELL_X3_Y1_N54
\uut|Selector74~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector74~0_combout\ = ( \uut|Add3~101_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~101_sumout\,
	combout => \uut|Selector74~0_combout\);

-- Location: FF_X3_Y1_N55
\uut|SlaveClkCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector74~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(7));

-- Location: FF_X2_Y1_N40
\uut|SlaveClkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector77~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(4));

-- Location: FF_X2_Y1_N16
\uut|SlaveClkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector76~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(5));

-- Location: LABCELL_X1_Y2_N24
\uut|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~97_sumout\ = SUM(( \uut|SlaveClkCounter\(8) ) + ( VCC ) + ( \uut|Add3~102\ ))
-- \uut|Add3~98\ = CARRY(( \uut|SlaveClkCounter\(8) ) + ( VCC ) + ( \uut|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(8),
	cin => \uut|Add3~102\,
	sumout => \uut|Add3~97_sumout\,
	cout => \uut|Add3~98\);

-- Location: LABCELL_X4_Y1_N48
\uut|Selector73~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector73~0_combout\ = ( \uut|Add3~97_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~97_sumout\,
	combout => \uut|Selector73~0_combout\);

-- Location: FF_X4_Y1_N49
\uut|SlaveClkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector73~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(8));

-- Location: LABCELL_X1_Y2_N27
\uut|Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~113_sumout\ = SUM(( \uut|SlaveClkCounter\(9) ) + ( VCC ) + ( \uut|Add3~98\ ))
-- \uut|Add3~114\ = CARRY(( \uut|SlaveClkCounter\(9) ) + ( VCC ) + ( \uut|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(9),
	cin => \uut|Add3~98\,
	sumout => \uut|Add3~113_sumout\,
	cout => \uut|Add3~114\);

-- Location: MLABCELL_X3_Y1_N3
\uut|Selector72~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector72~0_combout\ = ( \uut|Add3~113_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~113_sumout\,
	combout => \uut|Selector72~0_combout\);

-- Location: FF_X3_Y1_N5
\uut|SlaveClkCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector72~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(9));

-- Location: MLABCELL_X3_Y1_N36
\uut|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~4_combout\ = ( !\uut|SlaveClkCounter\(9) & ( !\uut|SlaveClkCounter\(8) & ( (!\uut|SlaveClkCounter\(6) & (!\uut|SlaveClkCounter\(7) & (!\uut|SlaveClkCounter\(4) & !\uut|SlaveClkCounter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter\(6),
	datab => \uut|ALT_INV_SlaveClkCounter\(7),
	datac => \uut|ALT_INV_SlaveClkCounter\(4),
	datad => \uut|ALT_INV_SlaveClkCounter\(5),
	datae => \uut|ALT_INV_SlaveClkCounter\(9),
	dataf => \uut|ALT_INV_SlaveClkCounter\(8),
	combout => \uut|Equal2~4_combout\);

-- Location: LABCELL_X1_Y2_N30
\uut|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~89_sumout\ = SUM(( \uut|SlaveClkCounter\(10) ) + ( VCC ) + ( \uut|Add3~114\ ))
-- \uut|Add3~90\ = CARRY(( \uut|SlaveClkCounter\(10) ) + ( VCC ) + ( \uut|Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(10),
	cin => \uut|Add3~114\,
	sumout => \uut|Add3~89_sumout\,
	cout => \uut|Add3~90\);

-- Location: LABCELL_X2_Y1_N9
\uut|Selector71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector71~0_combout\ = ( \uut|Add3~89_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~89_sumout\,
	combout => \uut|Selector71~0_combout\);

-- Location: FF_X2_Y1_N11
\uut|SlaveClkCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector71~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(10));

-- Location: LABCELL_X1_Y2_N33
\uut|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~85_sumout\ = SUM(( \uut|SlaveClkCounter\(11) ) + ( VCC ) + ( \uut|Add3~90\ ))
-- \uut|Add3~86\ = CARRY(( \uut|SlaveClkCounter\(11) ) + ( VCC ) + ( \uut|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(11),
	cin => \uut|Add3~90\,
	sumout => \uut|Add3~85_sumout\,
	cout => \uut|Add3~86\);

-- Location: LABCELL_X2_Y1_N3
\uut|Selector70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector70~0_combout\ = ( \uut|Add3~85_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~85_sumout\,
	combout => \uut|Selector70~0_combout\);

-- Location: FF_X2_Y1_N5
\uut|SlaveClkCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector70~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(11));

-- Location: LABCELL_X1_Y2_N36
\uut|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~81_sumout\ = SUM(( \uut|SlaveClkCounter[12]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~86\ ))
-- \uut|Add3~82\ = CARRY(( \uut|SlaveClkCounter[12]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[12]~DUPLICATE_q\,
	cin => \uut|Add3~86\,
	sumout => \uut|Add3~81_sumout\,
	cout => \uut|Add3~82\);

-- Location: MLABCELL_X3_Y1_N15
\uut|Selector69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector69~0_combout\ = ( \uut|Add3~81_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~81_sumout\,
	combout => \uut|Selector69~0_combout\);

-- Location: FF_X3_Y1_N16
\uut|SlaveClkCounter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector69~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[12]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N39
\uut|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~77_sumout\ = SUM(( \uut|SlaveClkCounter\(13) ) + ( VCC ) + ( \uut|Add3~82\ ))
-- \uut|Add3~78\ = CARRY(( \uut|SlaveClkCounter\(13) ) + ( VCC ) + ( \uut|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(13),
	cin => \uut|Add3~82\,
	sumout => \uut|Add3~77_sumout\,
	cout => \uut|Add3~78\);

-- Location: LABCELL_X2_Y1_N6
\uut|Selector68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector68~0_combout\ = ( \uut|Add3~77_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~77_sumout\,
	combout => \uut|Selector68~0_combout\);

-- Location: FF_X2_Y1_N8
\uut|SlaveClkCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector68~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(13));

-- Location: FF_X3_Y1_N17
\uut|SlaveClkCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector69~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(12));

-- Location: LABCELL_X1_Y2_N42
\uut|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~73_sumout\ = SUM(( \uut|SlaveClkCounter\(14) ) + ( VCC ) + ( \uut|Add3~78\ ))
-- \uut|Add3~74\ = CARRY(( \uut|SlaveClkCounter\(14) ) + ( VCC ) + ( \uut|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(14),
	cin => \uut|Add3~78\,
	sumout => \uut|Add3~73_sumout\,
	cout => \uut|Add3~74\);

-- Location: MLABCELL_X3_Y1_N48
\uut|Selector67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector67~0_combout\ = ( \uut|Add3~73_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~73_sumout\,
	combout => \uut|Selector67~0_combout\);

-- Location: FF_X3_Y1_N49
\uut|SlaveClkCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector67~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(14));

-- Location: LABCELL_X1_Y2_N45
\uut|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~13_sumout\ = SUM(( \uut|SlaveClkCounter\(15) ) + ( VCC ) + ( \uut|Add3~74\ ))
-- \uut|Add3~14\ = CARRY(( \uut|SlaveClkCounter\(15) ) + ( VCC ) + ( \uut|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(15),
	cin => \uut|Add3~74\,
	sumout => \uut|Add3~13_sumout\,
	cout => \uut|Add3~14\);

-- Location: MLABCELL_X3_Y1_N12
\uut|Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector66~0_combout\ = ( \uut|Add3~13_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~13_sumout\,
	combout => \uut|Selector66~0_combout\);

-- Location: FF_X3_Y1_N14
\uut|SlaveClkCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector66~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(15));

-- Location: LABCELL_X1_Y2_N48
\uut|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~45_sumout\ = SUM(( \uut|SlaveClkCounter\(16) ) + ( VCC ) + ( \uut|Add3~14\ ))
-- \uut|Add3~46\ = CARRY(( \uut|SlaveClkCounter\(16) ) + ( VCC ) + ( \uut|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(16),
	cin => \uut|Add3~14\,
	sumout => \uut|Add3~45_sumout\,
	cout => \uut|Add3~46\);

-- Location: MLABCELL_X3_Y1_N24
\uut|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector65~0_combout\ = ( \uut|Add3~45_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~45_sumout\,
	combout => \uut|Selector65~0_combout\);

-- Location: FF_X3_Y1_N26
\uut|SlaveClkCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector65~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(16));

-- Location: LABCELL_X1_Y2_N51
\uut|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~69_sumout\ = SUM(( \uut|SlaveClkCounter\(17) ) + ( VCC ) + ( \uut|Add3~46\ ))
-- \uut|Add3~70\ = CARRY(( \uut|SlaveClkCounter\(17) ) + ( VCC ) + ( \uut|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(17),
	cin => \uut|Add3~46\,
	sumout => \uut|Add3~69_sumout\,
	cout => \uut|Add3~70\);

-- Location: MLABCELL_X3_Y1_N18
\uut|Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector64~0_combout\ = ( \uut|Add3~69_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~69_sumout\,
	combout => \uut|Selector64~0_combout\);

-- Location: FF_X3_Y1_N20
\uut|SlaveClkCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector64~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(17));

-- Location: LABCELL_X1_Y2_N54
\uut|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~17_sumout\ = SUM(( \uut|SlaveClkCounter[18]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~70\ ))
-- \uut|Add3~18\ = CARRY(( \uut|SlaveClkCounter[18]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter[18]~DUPLICATE_q\,
	cin => \uut|Add3~70\,
	sumout => \uut|Add3~17_sumout\,
	cout => \uut|Add3~18\);

-- Location: MLABCELL_X3_Y1_N21
\uut|Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector63~0_combout\ = ( !\uut|SlaveClkCounter[0]~1_combout\ & ( \uut|Add3~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_Add3~17_sumout\,
	dataf => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	combout => \uut|Selector63~0_combout\);

-- Location: FF_X3_Y1_N22
\uut|SlaveClkCounter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector63~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[18]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y2_N57
\uut|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~21_sumout\ = SUM(( \uut|SlaveClkCounter[19]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~18\ ))
-- \uut|Add3~22\ = CARRY(( \uut|SlaveClkCounter[19]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[19]~DUPLICATE_q\,
	cin => \uut|Add3~18\,
	sumout => \uut|Add3~21_sumout\,
	cout => \uut|Add3~22\);

-- Location: MLABCELL_X3_Y1_N0
\uut|Selector62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector62~0_combout\ = ( \uut|Add3~21_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~21_sumout\,
	combout => \uut|Selector62~0_combout\);

-- Location: FF_X3_Y1_N1
\uut|SlaveClkCounter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector62~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[19]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y1_N0
\uut|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~93_sumout\ = SUM(( \uut|SlaveClkCounter\(20) ) + ( VCC ) + ( \uut|Add3~22\ ))
-- \uut|Add3~94\ = CARRY(( \uut|SlaveClkCounter\(20) ) + ( VCC ) + ( \uut|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(20),
	cin => \uut|Add3~22\,
	sumout => \uut|Add3~93_sumout\,
	cout => \uut|Add3~94\);

-- Location: LABCELL_X2_Y1_N27
\uut|Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector61~0_combout\ = ( \uut|Add3~93_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~93_sumout\,
	combout => \uut|Selector61~0_combout\);

-- Location: FF_X2_Y1_N29
\uut|SlaveClkCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector61~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(20));

-- Location: LABCELL_X2_Y1_N42
\uut|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~3_combout\ = ( !\uut|SlaveClkCounter\(20) & ( !\uut|SlaveClkCounter\(14) & ( (!\uut|SlaveClkCounter\(11) & (!\uut|SlaveClkCounter\(13) & (!\uut|SlaveClkCounter\(12) & !\uut|SlaveClkCounter\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter\(11),
	datab => \uut|ALT_INV_SlaveClkCounter\(13),
	datac => \uut|ALT_INV_SlaveClkCounter\(12),
	datad => \uut|ALT_INV_SlaveClkCounter\(10),
	datae => \uut|ALT_INV_SlaveClkCounter\(20),
	dataf => \uut|ALT_INV_SlaveClkCounter\(14),
	combout => \uut|Equal2~3_combout\);

-- Location: FF_X1_Y1_N56
\uut|SlaveClkCounter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector55~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[26]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y1_N3
\uut|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~37_sumout\ = SUM(( \uut|SlaveClkCounter\(21) ) + ( VCC ) + ( \uut|Add3~94\ ))
-- \uut|Add3~38\ = CARRY(( \uut|SlaveClkCounter\(21) ) + ( VCC ) + ( \uut|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(21),
	cin => \uut|Add3~94\,
	sumout => \uut|Add3~37_sumout\,
	cout => \uut|Add3~38\);

-- Location: LABCELL_X2_Y1_N0
\uut|Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector60~0_combout\ = ( \uut|Add3~37_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~37_sumout\,
	combout => \uut|Selector60~0_combout\);

-- Location: FF_X2_Y1_N2
\uut|SlaveClkCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector60~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(21));

-- Location: LABCELL_X1_Y1_N6
\uut|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~33_sumout\ = SUM(( \uut|SlaveClkCounter\(22) ) + ( VCC ) + ( \uut|Add3~38\ ))
-- \uut|Add3~34\ = CARRY(( \uut|SlaveClkCounter\(22) ) + ( VCC ) + ( \uut|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(22),
	cin => \uut|Add3~38\,
	sumout => \uut|Add3~33_sumout\,
	cout => \uut|Add3~34\);

-- Location: LABCELL_X2_Y1_N18
\uut|Selector59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector59~0_combout\ = (!\uut|SlaveClkCounter[0]~1_combout\ & \uut|Add3~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	datad => \uut|ALT_INV_Add3~33_sumout\,
	combout => \uut|Selector59~0_combout\);

-- Location: FF_X2_Y1_N19
\uut|SlaveClkCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector59~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(22));

-- Location: LABCELL_X1_Y1_N9
\uut|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~41_sumout\ = SUM(( \uut|SlaveClkCounter\(23) ) + ( VCC ) + ( \uut|Add3~34\ ))
-- \uut|Add3~42\ = CARRY(( \uut|SlaveClkCounter\(23) ) + ( VCC ) + ( \uut|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(23),
	cin => \uut|Add3~34\,
	sumout => \uut|Add3~41_sumout\,
	cout => \uut|Add3~42\);

-- Location: LABCELL_X2_Y1_N24
\uut|Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector58~0_combout\ = ( \uut|Add3~41_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~41_sumout\,
	combout => \uut|Selector58~0_combout\);

-- Location: FF_X2_Y1_N26
\uut|SlaveClkCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector58~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(23));

-- Location: LABCELL_X1_Y1_N12
\uut|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~25_sumout\ = SUM(( \uut|SlaveClkCounter\(24) ) + ( VCC ) + ( \uut|Add3~42\ ))
-- \uut|Add3~26\ = CARRY(( \uut|SlaveClkCounter\(24) ) + ( VCC ) + ( \uut|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(24),
	cin => \uut|Add3~42\,
	sumout => \uut|Add3~25_sumout\,
	cout => \uut|Add3~26\);

-- Location: MLABCELL_X3_Y1_N45
\uut|Selector57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector57~0_combout\ = ( \uut|Add3~25_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~25_sumout\,
	combout => \uut|Selector57~0_combout\);

-- Location: FF_X3_Y1_N47
\uut|SlaveClkCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector57~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(24));

-- Location: LABCELL_X1_Y1_N15
\uut|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~65_sumout\ = SUM(( \uut|SlaveClkCounter\(25) ) + ( VCC ) + ( \uut|Add3~26\ ))
-- \uut|Add3~66\ = CARRY(( \uut|SlaveClkCounter\(25) ) + ( VCC ) + ( \uut|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter\(25),
	cin => \uut|Add3~26\,
	sumout => \uut|Add3~65_sumout\,
	cout => \uut|Add3~66\);

-- Location: LABCELL_X2_Y1_N21
\uut|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector56~0_combout\ = ( \uut|Add3~65_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~65_sumout\,
	combout => \uut|Selector56~0_combout\);

-- Location: FF_X2_Y1_N23
\uut|SlaveClkCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector56~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(25));

-- Location: LABCELL_X1_Y1_N18
\uut|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~61_sumout\ = SUM(( \uut|SlaveClkCounter[26]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~66\ ))
-- \uut|Add3~62\ = CARRY(( \uut|SlaveClkCounter[26]~DUPLICATE_q\ ) + ( VCC ) + ( \uut|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[26]~DUPLICATE_q\,
	cin => \uut|Add3~66\,
	sumout => \uut|Add3~61_sumout\,
	cout => \uut|Add3~62\);

-- Location: LABCELL_X1_Y1_N54
\uut|Selector55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector55~0_combout\ = ( \uut|Add3~61_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~61_sumout\,
	combout => \uut|Selector55~0_combout\);

-- Location: FF_X1_Y1_N55
\uut|SlaveClkCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector55~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(26));

-- Location: LABCELL_X1_Y1_N21
\uut|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~29_sumout\ = SUM(( \uut|SlaveClkCounter\(27) ) + ( VCC ) + ( \uut|Add3~62\ ))
-- \uut|Add3~30\ = CARRY(( \uut|SlaveClkCounter\(27) ) + ( VCC ) + ( \uut|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(27),
	cin => \uut|Add3~62\,
	sumout => \uut|Add3~29_sumout\,
	cout => \uut|Add3~30\);

-- Location: LABCELL_X1_Y1_N51
\uut|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector54~0_combout\ = ( \uut|Add3~29_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~29_sumout\,
	combout => \uut|Selector54~0_combout\);

-- Location: FF_X1_Y1_N52
\uut|SlaveClkCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector54~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(27));

-- Location: LABCELL_X1_Y1_N24
\uut|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~57_sumout\ = SUM(( \uut|SlaveClkCounter\(28) ) + ( VCC ) + ( \uut|Add3~30\ ))
-- \uut|Add3~58\ = CARRY(( \uut|SlaveClkCounter\(28) ) + ( VCC ) + ( \uut|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter\(28),
	cin => \uut|Add3~30\,
	sumout => \uut|Add3~57_sumout\,
	cout => \uut|Add3~58\);

-- Location: LABCELL_X2_Y1_N12
\uut|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector53~0_combout\ = ( \uut|Add3~57_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~57_sumout\,
	combout => \uut|Selector53~0_combout\);

-- Location: FF_X2_Y1_N14
\uut|SlaveClkCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector53~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(28));

-- Location: LABCELL_X1_Y1_N27
\uut|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~53_sumout\ = SUM(( \uut|SlaveClkCounter\(29) ) + ( VCC ) + ( \uut|Add3~58\ ))
-- \uut|Add3~54\ = CARRY(( \uut|SlaveClkCounter\(29) ) + ( VCC ) + ( \uut|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(29),
	cin => \uut|Add3~58\,
	sumout => \uut|Add3~53_sumout\,
	cout => \uut|Add3~54\);

-- Location: MLABCELL_X3_Y1_N57
\uut|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector52~0_combout\ = ( \uut|Add3~53_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~53_sumout\,
	combout => \uut|Selector52~0_combout\);

-- Location: FF_X3_Y1_N59
\uut|SlaveClkCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector52~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(29));

-- Location: LABCELL_X1_Y1_N30
\uut|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~49_sumout\ = SUM(( \uut|SlaveClkCounter\(30) ) + ( VCC ) + ( \uut|Add3~54\ ))
-- \uut|Add3~50\ = CARRY(( \uut|SlaveClkCounter\(30) ) + ( VCC ) + ( \uut|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(30),
	cin => \uut|Add3~54\,
	sumout => \uut|Add3~49_sumout\,
	cout => \uut|Add3~50\);

-- Location: LABCELL_X2_Y1_N51
\uut|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector51~0_combout\ = ( \uut|Add3~49_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~49_sumout\,
	combout => \uut|Selector51~0_combout\);

-- Location: FF_X2_Y1_N53
\uut|SlaveClkCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector51~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(30));

-- Location: LABCELL_X2_Y1_N30
\uut|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~2_combout\ = ( !\uut|SlaveClkCounter\(25) & ( !\uut|SlaveClkCounter\(17) & ( (!\uut|SlaveClkCounter\(26) & (!\uut|SlaveClkCounter\(29) & (!\uut|SlaveClkCounter\(30) & !\uut|SlaveClkCounter\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter\(26),
	datab => \uut|ALT_INV_SlaveClkCounter\(29),
	datac => \uut|ALT_INV_SlaveClkCounter\(30),
	datad => \uut|ALT_INV_SlaveClkCounter\(28),
	datae => \uut|ALT_INV_SlaveClkCounter\(25),
	dataf => \uut|ALT_INV_SlaveClkCounter\(17),
	combout => \uut|Equal2~2_combout\);

-- Location: LABCELL_X2_Y1_N54
\uut|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~1_combout\ = ( !\uut|SlaveClkCounter\(21) & ( !\uut|SlaveClkCounter\(24) & ( (!\uut|SlaveClkCounter\(23) & (!\uut|SlaveClkCounter\(22) & (!\uut|SlaveClkCounter\(27) & !\uut|SlaveClkCounter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter\(23),
	datab => \uut|ALT_INV_SlaveClkCounter\(22),
	datac => \uut|ALT_INV_SlaveClkCounter\(27),
	datad => \uut|ALT_INV_SlaveClkCounter\(16),
	datae => \uut|ALT_INV_SlaveClkCounter\(21),
	dataf => \uut|ALT_INV_SlaveClkCounter\(24),
	combout => \uut|Equal2~1_combout\);

-- Location: FF_X3_Y1_N2
\uut|SlaveClkCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector62~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(19));

-- Location: FF_X3_Y1_N23
\uut|SlaveClkCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector63~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(18));

-- Location: MLABCELL_X3_Y1_N30
\uut|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~0_combout\ = ( !\uut|SlaveClkCounter\(18) & ( !\uut|SlaveClkCounter\(15) & ( !\uut|SlaveClkCounter\(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(19),
	datae => \uut|ALT_INV_SlaveClkCounter\(18),
	dataf => \uut|ALT_INV_SlaveClkCounter\(15),
	combout => \uut|Equal2~0_combout\);

-- Location: MLABCELL_X3_Y1_N9
\uut|Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~6_combout\ = ( \uut|Equal2~5_combout\ & ( \uut|Equal2~0_combout\ & ( (\uut|Equal2~4_combout\ & (\uut|Equal2~3_combout\ & (\uut|Equal2~2_combout\ & \uut|Equal2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal2~4_combout\,
	datab => \uut|ALT_INV_Equal2~3_combout\,
	datac => \uut|ALT_INV_Equal2~2_combout\,
	datad => \uut|ALT_INV_Equal2~1_combout\,
	datae => \uut|ALT_INV_Equal2~5_combout\,
	dataf => \uut|ALT_INV_Equal2~0_combout\,
	combout => \uut|Equal2~6_combout\);

-- Location: FF_X3_Y4_N53
\uut|State.WaitAfterReset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector1~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitAfterReset~q\);

-- Location: MLABCELL_X3_Y4_N42
\uut|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|WideOr1~0_combout\ = ( \uut|State.DoReset~q\ & ( (!\uut|State.OutputAndWaitForWrite~q\ & (!\uut|State.WaitAfterReset~q\ & !\uut|State.CheckMotionReg~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datac => \uut|ALT_INV_State.WaitAfterReset~q\,
	datad => \uut|ALT_INV_State.CheckMotionReg~q\,
	dataf => \uut|ALT_INV_State.DoReset~q\,
	combout => \uut|WideOr1~0_combout\);

-- Location: MLABCELL_X3_Y3_N57
\uut|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|WideOr1~combout\ = ( \uut|WideOr1~0_combout\ & ( \uut|WideOr1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_WideOr1~1_combout\,
	dataf => \uut|ALT_INV_WideOr1~0_combout\,
	combout => \uut|WideOr1~combout\);

-- Location: MLABCELL_X3_Y1_N51
\uut|SlaveClkCounter[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|SlaveClkCounter[0]~2_combout\ = ( \uut|WideOr1~combout\ & ( (((!\uut|Equal2~6_combout\ & \uut|SlaveClkCounter[0]~0_combout\)) # (\uut|SlaveClkCounter[0]~1_combout\)) # (\uut|Selector6~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110111111101110111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector6~7_combout\,
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	datac => \uut|ALT_INV_Equal2~6_combout\,
	datad => \uut|ALT_INV_SlaveClkCounter[0]~0_combout\,
	dataf => \uut|ALT_INV_WideOr1~combout\,
	combout => \uut|SlaveClkCounter[0]~2_combout\);

-- Location: FF_X4_Y1_N37
\uut|SlaveClkCounter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector81~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter[0]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y1_N36
\uut|Selector81~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector81~0_combout\ = ( !\uut|State.Init~q\ & ( \uut|Selector82~1_combout\ & ( (\uut|Add3~5_sumout\ & ((!\uut|Sel~DUPLICATE_q\) # ((\uut|Selector6~6_combout\) # (\uut|SysClkEnable~DUPLICATE_q\)))) ) ) ) # ( !\uut|State.Init~q\ & ( 
-- !\uut|Selector82~1_combout\ & ( (\uut|Add3~5_sumout\ & (((\uut|Sel~DUPLICATE_q\ & \uut|Selector6~6_combout\)) # (\uut|SysClkEnable~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000000000000000001000101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~5_sumout\,
	datab => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datac => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	datae => \uut|ALT_INV_State.Init~q\,
	dataf => \uut|ALT_INV_Selector82~1_combout\,
	combout => \uut|Selector81~0_combout\);

-- Location: FF_X4_Y1_N38
\uut|SlaveClkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector81~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(0));

-- Location: LABCELL_X1_Y1_N33
\uut|Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add3~125_sumout\ = SUM(( \uut|SlaveClkCounter\(31) ) + ( VCC ) + ( \uut|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SlaveClkCounter\(31),
	cin => \uut|Add3~50\,
	sumout => \uut|Add3~125_sumout\);

-- Location: MLABCELL_X3_Y1_N42
\uut|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector50~0_combout\ = ( \uut|Add3~125_sumout\ & ( !\uut|SlaveClkCounter[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SlaveClkCounter[0]~1_combout\,
	dataf => \uut|ALT_INV_Add3~125_sumout\,
	combout => \uut|Selector50~0_combout\);

-- Location: FF_X3_Y1_N43
\uut|SlaveClkCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector50~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(31));

-- Location: FF_X4_Y1_N56
\uut|SlaveClkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector79~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(2));

-- Location: FF_X4_Y1_N35
\uut|SlaveClkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector80~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	ena => \uut|SlaveClkCounter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SlaveClkCounter\(1));

-- Location: LABCELL_X4_Y1_N24
\uut|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~5_combout\ = ( !\uut|SlaveClkCounter\(3) & ( !\uut|SlaveClkCounter\(1) & ( (!\uut|SlaveClkCounter\(0) & (!\uut|SlaveClkCounter\(31) & !\uut|SlaveClkCounter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter\(0),
	datab => \uut|ALT_INV_SlaveClkCounter\(31),
	datac => \uut|ALT_INV_SlaveClkCounter\(2),
	datae => \uut|ALT_INV_SlaveClkCounter\(3),
	dataf => \uut|ALT_INV_SlaveClkCounter\(1),
	combout => \uut|Equal2~5_combout\);

-- Location: LABCELL_X2_Y1_N48
\uut|Equal2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal2~7_combout\ = ( \uut|Equal2~3_combout\ & ( (\uut|Equal2~1_combout\ & (\uut|Equal2~2_combout\ & (\uut|Equal2~0_combout\ & \uut|Equal2~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal2~1_combout\,
	datab => \uut|ALT_INV_Equal2~2_combout\,
	datac => \uut|ALT_INV_Equal2~0_combout\,
	datad => \uut|ALT_INV_Equal2~4_combout\,
	dataf => \uut|ALT_INV_Equal2~3_combout\,
	combout => \uut|Equal2~7_combout\);

-- Location: LABCELL_X1_Y3_N6
\uut|Selector6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~9_combout\ = ( \uut|Equal2~7_combout\ & ( \uut|SysClkEnable~DUPLICATE_q\ & ( \uut|Equal2~5_combout\ ) ) ) # ( \uut|Equal2~7_combout\ & ( !\uut|SysClkEnable~DUPLICATE_q\ & ( (\uut|Equal2~5_combout\ & ((!\uut|Sel~DUPLICATE_q\ & 
-- (\uut|Selector82~1_combout\)) # (\uut|Sel~DUPLICATE_q\ & ((\uut|Selector6~6_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000011100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datab => \uut|ALT_INV_Selector82~1_combout\,
	datac => \uut|ALT_INV_Equal2~5_combout\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	datae => \uut|ALT_INV_Equal2~7_combout\,
	dataf => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	combout => \uut|Selector6~9_combout\);

-- Location: LABCELL_X4_Y1_N12
\uut|State.DoReset~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|State.DoReset~1_combout\ = ( \uut|Selector6~9_combout\ & ( \uut|Selector6~8_combout\ ) ) # ( !\uut|Selector6~9_combout\ & ( \uut|Selector6~8_combout\ ) ) # ( \uut|Selector6~9_combout\ & ( !\uut|Selector6~8_combout\ & ( 
-- (!\uut|State.DoReset~0_combout\) # (((\uut|SlaveClkCounter[0]~0_combout\ & !\uut|Selector6~7_combout\)) # (\uut|Selector6~11_combout\)) ) ) ) # ( !\uut|Selector6~9_combout\ & ( !\uut|Selector6~8_combout\ & ( (!\uut|State.DoReset~0_combout\) # 
-- (\uut|Selector6~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101110101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State.DoReset~0_combout\,
	datab => \uut|ALT_INV_SlaveClkCounter[0]~0_combout\,
	datac => \uut|ALT_INV_Selector6~7_combout\,
	datad => \uut|ALT_INV_Selector6~11_combout\,
	datae => \uut|ALT_INV_Selector6~9_combout\,
	dataf => \uut|ALT_INV_Selector6~8_combout\,
	combout => \uut|State.DoReset~1_combout\);

-- Location: FF_X4_Y1_N14
\uut|State.DoReset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|State.DoReset~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.DoReset~q\);

-- Location: MLABCELL_X3_Y3_N45
\uut|Selector114~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector114~0_combout\ = ( \uut|State.DoReset~q\ & ( (!\uut|State.CheckMotionReg~q\ & !\uut|State.WaitAfterReset~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_State.CheckMotionReg~q\,
	datad => \uut|ALT_INV_State.WaitAfterReset~DUPLICATE_q\,
	dataf => \uut|ALT_INV_State.DoReset~q\,
	combout => \uut|Selector114~0_combout\);

-- Location: LABCELL_X4_Y3_N57
\uut|CntWaitCycles[29]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[29]~1_combout\ = ( \uut|Selector114~0_combout\ & ( ((!\uut|State.OutputAndWaitForWrite~q\ & \uut|WideOr1~1_combout\)) # (\GenerateStrobeMHz|oStrobe~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datac => \uut|ALT_INV_WideOr1~1_combout\,
	datad => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	dataf => \uut|ALT_INV_Selector114~0_combout\,
	combout => \uut|CntWaitCycles[29]~1_combout\);

-- Location: LABCELL_X2_Y3_N57
\uut|CntWaitCycles[29]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|CntWaitCycles[29]~2_combout\ = ( \uut|Selector6~9_combout\ & ( \uut|Equal1~6_combout\ & ( (\uut|CntWaitCycles[29]~1_combout\ & ((!\uut|SysClk~q\ & ((!\uut|Selector6~6_combout\) # (\uut|Selector82~1_combout\))) # (\uut|SysClk~q\ & 
-- ((!\uut|Selector82~1_combout\) # (\uut|Selector6~6_combout\))))) ) ) ) # ( !\uut|Selector6~9_combout\ & ( \uut|Equal1~6_combout\ & ( (\uut|CntWaitCycles[29]~1_combout\ & (\uut|Selector82~1_combout\ & \uut|Selector6~6_combout\)) ) ) ) # ( 
-- \uut|Selector6~9_combout\ & ( !\uut|Equal1~6_combout\ & ( (\uut|CntWaitCycles[29]~1_combout\ & (\uut|Selector82~1_combout\ & \uut|Selector6~6_combout\)) ) ) ) # ( !\uut|Selector6~9_combout\ & ( !\uut|Equal1~6_combout\ & ( 
-- (\uut|CntWaitCycles[29]~1_combout\ & (\uut|Selector82~1_combout\ & \uut|Selector6~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010101010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles[29]~1_combout\,
	datab => \uut|ALT_INV_SysClk~q\,
	datac => \uut|ALT_INV_Selector82~1_combout\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	datae => \uut|ALT_INV_Selector6~9_combout\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|CntWaitCycles[29]~2_combout\);

-- Location: FF_X2_Y3_N28
\uut|CntWaitCycles[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~65_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(29));

-- Location: LABCELL_X2_Y3_N30
\uut|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~5_sumout\ = SUM(( \uut|CntWaitCycles\(30) ) + ( GND ) + ( \uut|Add2~66\ ))
-- \uut|Add2~6\ = CARRY(( \uut|CntWaitCycles\(30) ) + ( GND ) + ( \uut|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(30),
	cin => \uut|Add2~66\,
	sumout => \uut|Add2~5_sumout\,
	cout => \uut|Add2~6\);

-- Location: FF_X2_Y3_N31
\uut|CntWaitCycles[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~5_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(30));

-- Location: LABCELL_X2_Y3_N33
\uut|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~1_sumout\ = SUM(( \uut|CntWaitCycles\(31) ) + ( GND ) + ( \uut|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(31),
	cin => \uut|Add2~6\,
	sumout => \uut|Add2~1_sumout\);

-- Location: FF_X2_Y3_N34
\uut|CntWaitCycles[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~1_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(31));

-- Location: MLABCELL_X3_Y3_N39
\uut|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~0_combout\ = ( !\uut|CntWaitCycles\(30) & ( (!\uut|CntWaitCycles\(31) & !\uut|CntWaitCycles\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_CntWaitCycles\(31),
	datad => \uut|ALT_INV_CntWaitCycles\(17),
	dataf => \uut|ALT_INV_CntWaitCycles\(30),
	combout => \uut|Equal3~0_combout\);

-- Location: LABCELL_X2_Y3_N36
\uut|Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~4_combout\ = ( !\uut|CntWaitCycles\(22) & ( !\uut|CntWaitCycles\(18) & ( (!\uut|CntWaitCycles\(21) & (!\uut|CntWaitCycles\(24) & (!\uut|CntWaitCycles\(20) & !\uut|CntWaitCycles\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles\(21),
	datab => \uut|ALT_INV_CntWaitCycles\(24),
	datac => \uut|ALT_INV_CntWaitCycles\(20),
	datad => \uut|ALT_INV_CntWaitCycles\(23),
	datae => \uut|ALT_INV_CntWaitCycles\(22),
	dataf => \uut|ALT_INV_CntWaitCycles\(18),
	combout => \uut|Equal3~4_combout\);

-- Location: MLABCELL_X3_Y4_N15
\uut|Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~5_combout\ = ( \uut|CntWaitCycles\(5) & ( (\uut|CntWaitCycles\(2) & (!\uut|CntWaitCycles\(3) & (!\uut|CntWaitCycles\(1) & \uut|CntWaitCycles\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles\(2),
	datab => \uut|ALT_INV_CntWaitCycles\(3),
	datac => \uut|ALT_INV_CntWaitCycles\(1),
	datad => \uut|ALT_INV_CntWaitCycles\(6),
	dataf => \uut|ALT_INV_CntWaitCycles\(5),
	combout => \uut|Equal3~5_combout\);

-- Location: MLABCELL_X3_Y4_N6
\uut|Equal3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~6_combout\ = ( \uut|Equal3~4_combout\ & ( \uut|Equal3~5_combout\ & ( (\uut|Equal3~3_combout\ & (\uut|Equal3~2_combout\ & (\uut|Equal3~1_combout\ & \uut|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal3~3_combout\,
	datab => \uut|ALT_INV_Equal3~2_combout\,
	datac => \uut|ALT_INV_Equal3~1_combout\,
	datad => \uut|ALT_INV_Equal3~0_combout\,
	datae => \uut|ALT_INV_Equal3~4_combout\,
	dataf => \uut|ALT_INV_Equal3~5_combout\,
	combout => \uut|Equal3~6_combout\);

-- Location: MLABCELL_X3_Y4_N45
\uut|MasterOutput~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MasterOutput~0_combout\ = ( \uut|Equal3~6_combout\ & ( \GenerateStrobeMHz|oStrobe~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	dataf => \uut|ALT_INV_Equal3~6_combout\,
	combout => \uut|MasterOutput~0_combout\);

-- Location: FF_X4_Y3_N43
\uut|State.WaitForReadProductID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector4~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadProductID~q\);

-- Location: LABCELL_X1_Y3_N36
\uut|RegAndClockGen~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~0_combout\ = ( !\uut|Sel~DUPLICATE_q\ & ( !\uut|SysClkEnable~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \uut|ALT_INV_Sel~DUPLICATE_q\,
	dataf => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	combout => \uut|RegAndClockGen~0_combout\);

-- Location: LABCELL_X4_Y3_N27
\uut|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector3~0_combout\ = ( \uut|State.SetProductIDReg~q\ & ( \uut|State.Init~q\ ) ) # ( !\uut|State.SetProductIDReg~q\ & ( \uut|State.Init~q\ ) ) # ( \uut|State.SetProductIDReg~q\ & ( !\uut|State.Init~q\ & ( (!\uut|Equal2~6_combout\) # 
-- ((!\uut|Equal1~6_combout\) # ((!\uut|SysClk~q\) # (\uut|RegAndClockGen~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal2~6_combout\,
	datab => \uut|ALT_INV_Equal1~6_combout\,
	datac => \uut|ALT_INV_RegAndClockGen~0_combout\,
	datad => \uut|ALT_INV_SysClk~q\,
	datae => \uut|ALT_INV_State.SetProductIDReg~q\,
	dataf => \uut|ALT_INV_State.Init~q\,
	combout => \uut|Selector3~0_combout\);

-- Location: FF_X4_Y3_N28
\uut|State.SetProductIDReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector3~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetProductIDReg~q\);

-- Location: LABCELL_X4_Y3_N42
\uut|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector4~0_combout\ = ( \uut|State.SetProductIDReg~q\ & ( ((!\uut|MasterOutput~0_combout\ & \uut|State.WaitForReadProductID~q\)) # (\uut|State~38_combout\) ) ) # ( !\uut|State.SetProductIDReg~q\ & ( (!\uut|MasterOutput~0_combout\ & 
-- \uut|State.WaitForReadProductID~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State~38_combout\,
	datac => \uut|ALT_INV_MasterOutput~0_combout\,
	datad => \uut|ALT_INV_State.WaitForReadProductID~q\,
	dataf => \uut|ALT_INV_State.SetProductIDReg~q\,
	combout => \uut|Selector4~0_combout\);

-- Location: FF_X4_Y3_N44
\uut|State.WaitForReadProductID~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector4~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadProductID~DUPLICATE_q\);

-- Location: LABCELL_X4_Y3_N51
\uut|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector7~0_combout\ = ( \uut|State.SetMotionReg~q\ & ( ((!\uut|MasterOutput~0_combout\ & \uut|State.WaitForReadMotion~q\)) # (\uut|State~38_combout\) ) ) # ( !\uut|State.SetMotionReg~q\ & ( (!\uut|MasterOutput~0_combout\ & 
-- \uut|State.WaitForReadMotion~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_MasterOutput~0_combout\,
	datac => \uut|ALT_INV_State~38_combout\,
	datad => \uut|ALT_INV_State.WaitForReadMotion~q\,
	dataf => \uut|ALT_INV_State.SetMotionReg~q\,
	combout => \uut|Selector7~0_combout\);

-- Location: FF_X4_Y3_N53
\uut|State.WaitForReadMotion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector7~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadMotion~q\);

-- Location: FF_X4_Y3_N22
\uut|State.WaitForReadDataX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector11~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadDataX~q\);

-- Location: FF_X4_Y3_N26
\uut|State.SetDataXReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector10~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetDataXReg~q\);

-- Location: IOIBUF_X17_Y0_N75
\iMISO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iMISO,
	o => \iMISO~input_o\);

-- Location: LABCELL_X4_Y1_N21
\uut|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|LessThan0~0_combout\ = ( \uut|SlaveClkCounter\(2) & ( \uut|SlaveClkCounter\(3) ) ) # ( !\uut|SlaveClkCounter\(2) & ( (\uut|SlaveClkCounter\(3) & ((\uut|SlaveClkCounter\(1)) # (\uut|SlaveClkCounter\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000011110000111100000101000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SlaveClkCounter\(0),
	datac => \uut|ALT_INV_SlaveClkCounter\(3),
	datad => \uut|ALT_INV_SlaveClkCounter\(1),
	datae => \uut|ALT_INV_SlaveClkCounter\(2),
	combout => \uut|LessThan0~0_combout\);

-- Location: MLABCELL_X3_Y2_N3
\uut|MotionReg[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[2]~0_combout\ = ( \uut|LessThan0~0_combout\ & ( \uut|Equal2~7_combout\ & ( (!\uut|Equal2~5_combout\ & (\uut|SlaveClkCounter\(31) & ((!\uut|Sel~DUPLICATE_q\) # (\uut|SysClkEnable~DUPLICATE_q\)))) ) ) ) # ( !\uut|LessThan0~0_combout\ & ( 
-- \uut|Equal2~7_combout\ & ( (!\uut|Equal2~5_combout\ & ((!\uut|Sel~DUPLICATE_q\) # (\uut|SysClkEnable~DUPLICATE_q\))) ) ) ) # ( \uut|LessThan0~0_combout\ & ( !\uut|Equal2~7_combout\ & ( (\uut|SlaveClkCounter\(31) & ((!\uut|Sel~DUPLICATE_q\) # 
-- (\uut|SysClkEnable~DUPLICATE_q\))) ) ) ) # ( !\uut|LessThan0~0_combout\ & ( !\uut|Equal2~7_combout\ & ( (\uut|SlaveClkCounter\(31) & ((!\uut|Sel~DUPLICATE_q\) # (\uut|SysClkEnable~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010111000100110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	datab => \uut|ALT_INV_Equal2~5_combout\,
	datac => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datad => \uut|ALT_INV_SlaveClkCounter\(31),
	datae => \uut|ALT_INV_LessThan0~0_combout\,
	dataf => \uut|ALT_INV_Equal2~7_combout\,
	combout => \uut|MotionReg[2]~0_combout\);

-- Location: LABCELL_X2_Y2_N33
\uut|MotionReg[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[2]~1_combout\ = ( !\uut|Add3~1_sumout\ & ( \uut|Equal1~6_combout\ & ( (\uut|MotionReg[2]~0_combout\ & (\uut|State.ReadMotionReg~q\ & !\uut|SysClk~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_MotionReg[2]~0_combout\,
	datab => \uut|ALT_INV_State.ReadMotionReg~q\,
	datac => \uut|ALT_INV_SysClk~q\,
	datae => \uut|ALT_INV_Add3~1_sumout\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|MotionReg[2]~1_combout\);

-- Location: LABCELL_X2_Y2_N48
\uut|MotionReg[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[0]~5_combout\ = ( \uut|MotionReg[2]~1_combout\ & ( (!\uut|Add3~5_sumout\ & ((!\uut|Add3~9_sumout\ & (\iMISO~input_o\)) # (\uut|Add3~9_sumout\ & ((\uut|MotionReg\(0)))))) # (\uut|Add3~5_sumout\ & (((\uut|MotionReg\(0))))) ) ) # ( 
-- !\uut|MotionReg[2]~1_combout\ & ( \uut|MotionReg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~5_sumout\,
	datab => \uut|ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_iMISO~input_o\,
	datad => \uut|ALT_INV_MotionReg\(0),
	dataf => \uut|ALT_INV_MotionReg[2]~1_combout\,
	combout => \uut|MotionReg[0]~5_combout\);

-- Location: FF_X2_Y2_N50
\uut|MotionReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[0]~5_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(0));

-- Location: LABCELL_X2_Y2_N18
\uut|MotionReg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[2]~3_combout\ = ( \uut|MotionReg[2]~1_combout\ & ( (!\uut|Add3~5_sumout\ & ((!\uut|Add3~9_sumout\ & ((\uut|MotionReg\(2)))) # (\uut|Add3~9_sumout\ & (\iMISO~input_o\)))) # (\uut|Add3~5_sumout\ & (((\uut|MotionReg\(2))))) ) ) # ( 
-- !\uut|MotionReg[2]~1_combout\ & ( \uut|MotionReg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~5_sumout\,
	datab => \uut|ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_iMISO~input_o\,
	datad => \uut|ALT_INV_MotionReg\(2),
	dataf => \uut|ALT_INV_MotionReg[2]~1_combout\,
	combout => \uut|MotionReg[2]~3_combout\);

-- Location: FF_X2_Y2_N20
\uut|MotionReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[2]~3_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(2));

-- Location: LABCELL_X2_Y2_N21
\uut|MotionReg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[1]~4_combout\ = ( \uut|MotionReg[2]~1_combout\ & ( (!\uut|Add3~5_sumout\ & (((\uut|MotionReg\(1))))) # (\uut|Add3~5_sumout\ & ((!\uut|Add3~9_sumout\ & (\iMISO~input_o\)) # (\uut|Add3~9_sumout\ & ((\uut|MotionReg\(1)))))) ) ) # ( 
-- !\uut|MotionReg[2]~1_combout\ & ( \uut|MotionReg\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100101111110000010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~5_sumout\,
	datab => \uut|ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_iMISO~input_o\,
	datad => \uut|ALT_INV_MotionReg\(1),
	dataf => \uut|ALT_INV_MotionReg[2]~1_combout\,
	combout => \uut|MotionReg[1]~4_combout\);

-- Location: FF_X2_Y2_N23
\uut|MotionReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[1]~4_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(1));

-- Location: MLABCELL_X3_Y2_N21
\uut|RegAndClockGen~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|RegAndClockGen~1_combout\ = ( \uut|Equal1~6_combout\ & ( !\uut|SysClk~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SysClk~q\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|RegAndClockGen~1_combout\);

-- Location: LABCELL_X2_Y2_N9
\uut|MotionReg[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[7]~6_combout\ = ( \uut|Add3~9_sumout\ & ( (\uut|Add3~5_sumout\ & \uut|Add3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Add3~5_sumout\,
	datad => \uut|ALT_INV_Add3~1_sumout\,
	dataf => \uut|ALT_INV_Add3~9_sumout\,
	combout => \uut|MotionReg[7]~6_combout\);

-- Location: MLABCELL_X3_Y2_N42
\uut|MotionReg[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[7]~7_combout\ = ( \uut|MotionReg\(7) & ( \uut|MotionReg[7]~6_combout\ & ( (!\uut|RegAndClockGen~1_combout\) # (((!\uut|MotionReg[2]~0_combout\) # (!\uut|State.ReadMotionReg~q\)) # (\iMISO~input_o\)) ) ) ) # ( !\uut|MotionReg\(7) & ( 
-- \uut|MotionReg[7]~6_combout\ & ( (\uut|RegAndClockGen~1_combout\ & (\iMISO~input_o\ & (\uut|MotionReg[2]~0_combout\ & \uut|State.ReadMotionReg~q\))) ) ) ) # ( \uut|MotionReg\(7) & ( !\uut|MotionReg[7]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_RegAndClockGen~1_combout\,
	datab => \ALT_INV_iMISO~input_o\,
	datac => \uut|ALT_INV_MotionReg[2]~0_combout\,
	datad => \uut|ALT_INV_State.ReadMotionReg~q\,
	datae => \uut|ALT_INV_MotionReg\(7),
	dataf => \uut|ALT_INV_MotionReg[7]~6_combout\,
	combout => \uut|MotionReg[7]~7_combout\);

-- Location: FF_X3_Y2_N44
\uut|MotionReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[7]~7_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(7));

-- Location: MLABCELL_X3_Y2_N12
\uut|MotionReg[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[2]~8_combout\ = ( \uut|Equal1~6_combout\ & ( (!\uut|SysClk~q\ & (\uut|State.ReadMotionReg~q\ & \uut|MotionReg[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_SysClk~q\,
	datac => \uut|ALT_INV_State.ReadMotionReg~q\,
	datad => \uut|ALT_INV_MotionReg[2]~0_combout\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|MotionReg[2]~8_combout\);

-- Location: LABCELL_X2_Y2_N24
\uut|MotionReg[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[4]~12_combout\ = ( \uut|MotionReg\(4) & ( \uut|MotionReg[2]~8_combout\ & ( (((!\uut|Add3~1_sumout\) # (\uut|Add3~9_sumout\)) # (\iMISO~input_o\)) # (\uut|Add3~5_sumout\) ) ) ) # ( !\uut|MotionReg\(4) & ( \uut|MotionReg[2]~8_combout\ & ( 
-- (!\uut|Add3~5_sumout\ & (\iMISO~input_o\ & (\uut|Add3~1_sumout\ & !\uut|Add3~9_sumout\))) ) ) ) # ( \uut|MotionReg\(4) & ( !\uut|MotionReg[2]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~5_sumout\,
	datab => \ALT_INV_iMISO~input_o\,
	datac => \uut|ALT_INV_Add3~1_sumout\,
	datad => \uut|ALT_INV_Add3~9_sumout\,
	datae => \uut|ALT_INV_MotionReg\(4),
	dataf => \uut|ALT_INV_MotionReg[2]~8_combout\,
	combout => \uut|MotionReg[4]~12_combout\);

-- Location: FF_X2_Y2_N26
\uut|MotionReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[4]~12_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(4));

-- Location: MLABCELL_X3_Y2_N15
\uut|MotionReg[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[5]~10_combout\ = ( \uut|Add3~1_sumout\ & ( (\uut|Add3~5_sumout\ & !\uut|Add3~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Add3~5_sumout\,
	datad => \uut|ALT_INV_Add3~9_sumout\,
	dataf => \uut|ALT_INV_Add3~1_sumout\,
	combout => \uut|MotionReg[5]~10_combout\);

-- Location: MLABCELL_X3_Y2_N45
\uut|MotionReg[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[5]~11_combout\ = ( \uut|MotionReg\(5) & ( \uut|MotionReg[5]~10_combout\ & ( (!\uut|RegAndClockGen~1_combout\) # (((!\uut|State.ReadMotionReg~q\) # (!\uut|MotionReg[2]~0_combout\)) # (\iMISO~input_o\)) ) ) ) # ( !\uut|MotionReg\(5) & ( 
-- \uut|MotionReg[5]~10_combout\ & ( (\uut|RegAndClockGen~1_combout\ & (\iMISO~input_o\ & (\uut|State.ReadMotionReg~q\ & \uut|MotionReg[2]~0_combout\))) ) ) ) # ( \uut|MotionReg\(5) & ( !\uut|MotionReg[5]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_RegAndClockGen~1_combout\,
	datab => \ALT_INV_iMISO~input_o\,
	datac => \uut|ALT_INV_State.ReadMotionReg~q\,
	datad => \uut|ALT_INV_MotionReg[2]~0_combout\,
	datae => \uut|ALT_INV_MotionReg\(5),
	dataf => \uut|ALT_INV_MotionReg[5]~10_combout\,
	combout => \uut|MotionReg[5]~11_combout\);

-- Location: FF_X3_Y2_N47
\uut|MotionReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[5]~11_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(5));

-- Location: LABCELL_X2_Y2_N51
\uut|MotionReg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[3]~2_combout\ = ( \uut|MotionReg[2]~1_combout\ & ( (!\uut|Add3~5_sumout\ & (((\uut|MotionReg\(3))))) # (\uut|Add3~5_sumout\ & ((!\uut|Add3~9_sumout\ & ((\uut|MotionReg\(3)))) # (\uut|Add3~9_sumout\ & (\iMISO~input_o\)))) ) ) # ( 
-- !\uut|MotionReg[2]~1_combout\ & ( \uut|MotionReg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~5_sumout\,
	datab => \uut|ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_iMISO~input_o\,
	datad => \uut|ALT_INV_MotionReg\(3),
	dataf => \uut|ALT_INV_MotionReg[2]~1_combout\,
	combout => \uut|MotionReg[3]~2_combout\);

-- Location: FF_X2_Y2_N53
\uut|MotionReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[3]~2_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(3));

-- Location: MLABCELL_X3_Y2_N24
\uut|MotionReg[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[6]~9_combout\ = ( \uut|MotionReg\(6) & ( \uut|MotionReg[2]~8_combout\ & ( (((!\uut|Add3~9_sumout\) # (!\uut|Add3~1_sumout\)) # (\uut|Add3~5_sumout\)) # (\iMISO~input_o\) ) ) ) # ( !\uut|MotionReg\(6) & ( \uut|MotionReg[2]~8_combout\ & ( 
-- (\iMISO~input_o\ & (!\uut|Add3~5_sumout\ & (\uut|Add3~9_sumout\ & \uut|Add3~1_sumout\))) ) ) ) # ( \uut|MotionReg\(6) & ( !\uut|MotionReg[2]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iMISO~input_o\,
	datab => \uut|ALT_INV_Add3~5_sumout\,
	datac => \uut|ALT_INV_Add3~9_sumout\,
	datad => \uut|ALT_INV_Add3~1_sumout\,
	datae => \uut|ALT_INV_MotionReg\(6),
	dataf => \uut|ALT_INV_MotionReg[2]~8_combout\,
	combout => \uut|MotionReg[6]~9_combout\);

-- Location: FF_X3_Y2_N26
\uut|MotionReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|MotionReg[6]~9_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MotionReg\(6));

-- Location: LABCELL_X4_Y2_N39
\uut|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal4~0_combout\ = ( !\uut|MotionReg\(6) & ( (\uut|MotionReg\(7) & (!\uut|MotionReg\(4) & (!\uut|MotionReg\(5) & !\uut|MotionReg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_MotionReg\(7),
	datab => \uut|ALT_INV_MotionReg\(4),
	datac => \uut|ALT_INV_MotionReg\(5),
	datad => \uut|ALT_INV_MotionReg\(3),
	dataf => \uut|ALT_INV_MotionReg\(6),
	combout => \uut|Equal4~0_combout\);

-- Location: LABCELL_X4_Y2_N18
\uut|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector10~0_combout\ = ( \uut|Equal4~0_combout\ & ( (!\uut|MotionReg\(0) & (!\uut|MotionReg\(2) & (!\uut|MotionReg\(1) & \uut|State.CheckMotionReg~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_MotionReg\(0),
	datab => \uut|ALT_INV_MotionReg\(2),
	datac => \uut|ALT_INV_MotionReg\(1),
	datad => \uut|ALT_INV_State.CheckMotionReg~q\,
	dataf => \uut|ALT_INV_Equal4~0_combout\,
	combout => \uut|Selector10~0_combout\);

-- Location: LABCELL_X4_Y3_N24
\uut|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector10~1_combout\ = ( \uut|State.SetDataXReg~q\ & ( \uut|Selector10~0_combout\ ) ) # ( !\uut|State.SetDataXReg~q\ & ( \uut|Selector10~0_combout\ ) ) # ( \uut|State.SetDataXReg~q\ & ( !\uut|Selector10~0_combout\ & ( (!\uut|Equal2~6_combout\) # 
-- ((!\uut|Equal1~6_combout\) # ((!\uut|SysClk~q\) # (\uut|RegAndClockGen~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal2~6_combout\,
	datab => \uut|ALT_INV_Equal1~6_combout\,
	datac => \uut|ALT_INV_SysClk~q\,
	datad => \uut|ALT_INV_RegAndClockGen~0_combout\,
	datae => \uut|ALT_INV_State.SetDataXReg~q\,
	dataf => \uut|ALT_INV_Selector10~0_combout\,
	combout => \uut|Selector10~1_combout\);

-- Location: FF_X4_Y3_N25
\uut|State.SetDataXReg~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector10~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetDataXReg~DUPLICATE_q\);

-- Location: LABCELL_X4_Y3_N21
\uut|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector11~0_combout\ = ( \uut|State.SetDataXReg~DUPLICATE_q\ & ( ((!\uut|MasterOutput~0_combout\ & \uut|State.WaitForReadDataX~q\)) # (\uut|State~38_combout\) ) ) # ( !\uut|State.SetDataXReg~DUPLICATE_q\ & ( (!\uut|MasterOutput~0_combout\ & 
-- \uut|State.WaitForReadDataX~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_MasterOutput~0_combout\,
	datab => \uut|ALT_INV_State~38_combout\,
	datad => \uut|ALT_INV_State.WaitForReadDataX~q\,
	dataf => \uut|ALT_INV_State.SetDataXReg~DUPLICATE_q\,
	combout => \uut|Selector11~0_combout\);

-- Location: FF_X4_Y3_N23
\uut|State.WaitForReadDataX~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector11~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadDataX~DUPLICATE_q\);

-- Location: FF_X4_Y3_N14
\uut|State.WaitForReadDataY~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector14~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadDataY~DUPLICATE_q\);

-- Location: LABCELL_X4_Y3_N48
\uut|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|WideOr1~1_combout\ = ( !\uut|State.WaitForReadDataY~DUPLICATE_q\ & ( (!\uut|State.WaitForReadProductID~DUPLICATE_q\ & (!\uut|State.WaitForReadMotion~q\ & !\uut|State.WaitForReadDataX~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.WaitForReadProductID~DUPLICATE_q\,
	datac => \uut|ALT_INV_State.WaitForReadMotion~q\,
	datad => \uut|ALT_INV_State.WaitForReadDataX~DUPLICATE_q\,
	dataf => \uut|ALT_INV_State.WaitForReadDataY~DUPLICATE_q\,
	combout => \uut|WideOr1~1_combout\);

-- Location: LABCELL_X2_Y4_N0
\uut|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~61_sumout\ = SUM(( !\uut|CntWaitCycles\(0) ) + ( VCC ) + ( !VCC ))
-- \uut|Add2~62\ = CARRY(( !\uut|CntWaitCycles\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(0),
	cin => GND,
	sumout => \uut|Add2~61_sumout\,
	cout => \uut|Add2~62\);

-- Location: MLABCELL_X3_Y4_N3
\uut|Selector114~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector114~2_combout\ = ( \uut|Add2~61_sumout\ & ( !\uut|CntWaitCycles\(0) ) ) # ( !\uut|Add2~61_sumout\ & ( (!\uut|CntWaitCycles\(0) & ((!\GenerateStrobeMHz|oStrobe~DUPLICATE_q\) # ((\uut|WideOr1~1_combout\ & 
-- !\uut|State.OutputAndWaitForWrite~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011000000110100001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_WideOr1~1_combout\,
	datab => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	datac => \uut|ALT_INV_CntWaitCycles\(0),
	datad => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	dataf => \uut|ALT_INV_Add2~61_sumout\,
	combout => \uut|Selector114~2_combout\);

-- Location: MLABCELL_X6_Y3_N33
\uut|Selector114~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector114~3_combout\ = ( \GenerateStrobeMHz|oStrobe~q\ & ( \uut|Add2~61_sumout\ & ( \uut|Selector114~0_combout\ ) ) ) # ( !\GenerateStrobeMHz|oStrobe~q\ & ( \uut|Add2~61_sumout\ & ( (\uut|WideOr1~1_combout\ & (!\uut|State.OutputAndWaitForWrite~q\ & 
-- \uut|Selector114~0_combout\)) ) ) ) # ( \GenerateStrobeMHz|oStrobe~q\ & ( !\uut|Add2~61_sumout\ & ( (\uut|WideOr1~1_combout\ & (!\uut|State.OutputAndWaitForWrite~q\ & \uut|Selector114~0_combout\)) ) ) ) # ( !\GenerateStrobeMHz|oStrobe~q\ & ( 
-- !\uut|Add2~61_sumout\ & ( (\uut|WideOr1~1_combout\ & (!\uut|State.OutputAndWaitForWrite~q\ & \uut|Selector114~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_WideOr1~1_combout\,
	datab => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datac => \uut|ALT_INV_Selector114~0_combout\,
	datae => \GenerateStrobeMHz|ALT_INV_oStrobe~q\,
	dataf => \uut|ALT_INV_Add2~61_sumout\,
	combout => \uut|Selector114~3_combout\);

-- Location: MLABCELL_X3_Y3_N42
\uut|Selector114~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector114~1_combout\ = ( \uut|Equal2~6_combout\ & ( (!\uut|Selector82~1_combout\ & (((!\uut|Equal1~6_combout\) # (!\uut|SysClk~q\)) # (\uut|RegAndClockGen~0_combout\))) ) ) # ( !\uut|Equal2~6_combout\ & ( !\uut|Selector82~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110001001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_RegAndClockGen~0_combout\,
	datab => \uut|ALT_INV_Selector82~1_combout\,
	datac => \uut|ALT_INV_Equal1~6_combout\,
	datad => \uut|ALT_INV_SysClk~q\,
	dataf => \uut|ALT_INV_Equal2~6_combout\,
	combout => \uut|Selector114~1_combout\);

-- Location: MLABCELL_X3_Y3_N54
\uut|Selector114~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector114~4_combout\ = ( \uut|Selector114~1_combout\ & ( !\uut|Selector114~2_combout\ ) ) # ( !\uut|Selector114~1_combout\ & ( (!\uut|Selector114~2_combout\ & ((!\uut|Selector114~3_combout\) # ((!\uut|Selector6~6_combout\ & 
-- !\uut|State~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011000000110010001100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector6~6_combout\,
	datab => \uut|ALT_INV_Selector114~2_combout\,
	datac => \uut|ALT_INV_Selector114~3_combout\,
	datad => \uut|ALT_INV_State~39_combout\,
	dataf => \uut|ALT_INV_Selector114~1_combout\,
	combout => \uut|Selector114~4_combout\);

-- Location: FF_X3_Y3_N55
\uut|CntWaitCycles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector114~4_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(0));

-- Location: LABCELL_X2_Y4_N3
\uut|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~121_sumout\ = SUM(( \uut|CntWaitCycles\(1) ) + ( GND ) + ( \uut|Add2~62\ ))
-- \uut|Add2~122\ = CARRY(( \uut|CntWaitCycles\(1) ) + ( GND ) + ( \uut|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(1),
	cin => \uut|Add2~62\,
	sumout => \uut|Add2~121_sumout\,
	cout => \uut|Add2~122\);

-- Location: FF_X2_Y4_N4
\uut|CntWaitCycles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~121_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(1));

-- Location: LABCELL_X2_Y4_N6
\uut|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~117_sumout\ = SUM(( \uut|CntWaitCycles\(2) ) + ( GND ) + ( \uut|Add2~122\ ))
-- \uut|Add2~118\ = CARRY(( \uut|CntWaitCycles\(2) ) + ( GND ) + ( \uut|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(2),
	cin => \uut|Add2~122\,
	sumout => \uut|Add2~117_sumout\,
	cout => \uut|Add2~118\);

-- Location: FF_X2_Y4_N7
\uut|CntWaitCycles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~117_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(2));

-- Location: LABCELL_X2_Y4_N9
\uut|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~125_sumout\ = SUM(( \uut|CntWaitCycles\(3) ) + ( GND ) + ( \uut|Add2~118\ ))
-- \uut|Add2~126\ = CARRY(( \uut|CntWaitCycles\(3) ) + ( GND ) + ( \uut|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(3),
	cin => \uut|Add2~118\,
	sumout => \uut|Add2~125_sumout\,
	cout => \uut|Add2~126\);

-- Location: FF_X2_Y4_N10
\uut|CntWaitCycles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~125_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(3));

-- Location: LABCELL_X2_Y4_N12
\uut|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~29_sumout\ = SUM(( \uut|CntWaitCycles\(4) ) + ( GND ) + ( \uut|Add2~126\ ))
-- \uut|Add2~30\ = CARRY(( \uut|CntWaitCycles\(4) ) + ( GND ) + ( \uut|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(4),
	cin => \uut|Add2~126\,
	sumout => \uut|Add2~29_sumout\,
	cout => \uut|Add2~30\);

-- Location: FF_X2_Y4_N13
\uut|CntWaitCycles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~29_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(4));

-- Location: LABCELL_X2_Y4_N15
\uut|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~113_sumout\ = SUM(( \uut|CntWaitCycles\(5) ) + ( GND ) + ( \uut|Add2~30\ ))
-- \uut|Add2~114\ = CARRY(( \uut|CntWaitCycles\(5) ) + ( GND ) + ( \uut|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(5),
	cin => \uut|Add2~30\,
	sumout => \uut|Add2~113_sumout\,
	cout => \uut|Add2~114\);

-- Location: FF_X2_Y4_N16
\uut|CntWaitCycles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~113_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(5));

-- Location: LABCELL_X2_Y4_N18
\uut|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~109_sumout\ = SUM(( \uut|CntWaitCycles\(6) ) + ( GND ) + ( \uut|Add2~114\ ))
-- \uut|Add2~110\ = CARRY(( \uut|CntWaitCycles\(6) ) + ( GND ) + ( \uut|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(6),
	cin => \uut|Add2~114\,
	sumout => \uut|Add2~109_sumout\,
	cout => \uut|Add2~110\);

-- Location: FF_X2_Y4_N19
\uut|CntWaitCycles[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~109_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(6));

-- Location: LABCELL_X2_Y4_N21
\uut|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~25_sumout\ = SUM(( \uut|CntWaitCycles\(7) ) + ( GND ) + ( \uut|Add2~110\ ))
-- \uut|Add2~26\ = CARRY(( \uut|CntWaitCycles\(7) ) + ( GND ) + ( \uut|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(7),
	cin => \uut|Add2~110\,
	sumout => \uut|Add2~25_sumout\,
	cout => \uut|Add2~26\);

-- Location: FF_X2_Y4_N22
\uut|CntWaitCycles[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~25_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(7));

-- Location: LABCELL_X2_Y4_N24
\uut|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~21_sumout\ = SUM(( \uut|CntWaitCycles\(8) ) + ( GND ) + ( \uut|Add2~26\ ))
-- \uut|Add2~22\ = CARRY(( \uut|CntWaitCycles\(8) ) + ( GND ) + ( \uut|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(8),
	cin => \uut|Add2~26\,
	sumout => \uut|Add2~21_sumout\,
	cout => \uut|Add2~22\);

-- Location: FF_X2_Y4_N25
\uut|CntWaitCycles[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~21_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(8));

-- Location: LABCELL_X2_Y4_N27
\uut|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~17_sumout\ = SUM(( \uut|CntWaitCycles\(9) ) + ( GND ) + ( \uut|Add2~22\ ))
-- \uut|Add2~18\ = CARRY(( \uut|CntWaitCycles\(9) ) + ( GND ) + ( \uut|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(9),
	cin => \uut|Add2~22\,
	sumout => \uut|Add2~17_sumout\,
	cout => \uut|Add2~18\);

-- Location: FF_X2_Y4_N28
\uut|CntWaitCycles[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~17_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(9));

-- Location: LABCELL_X2_Y4_N30
\uut|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~13_sumout\ = SUM(( \uut|CntWaitCycles\(10) ) + ( GND ) + ( \uut|Add2~18\ ))
-- \uut|Add2~14\ = CARRY(( \uut|CntWaitCycles\(10) ) + ( GND ) + ( \uut|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(10),
	cin => \uut|Add2~18\,
	sumout => \uut|Add2~13_sumout\,
	cout => \uut|Add2~14\);

-- Location: FF_X2_Y4_N31
\uut|CntWaitCycles[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~13_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(10));

-- Location: LABCELL_X2_Y4_N33
\uut|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~57_sumout\ = SUM(( \uut|CntWaitCycles\(11) ) + ( GND ) + ( \uut|Add2~14\ ))
-- \uut|Add2~58\ = CARRY(( \uut|CntWaitCycles\(11) ) + ( GND ) + ( \uut|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(11),
	cin => \uut|Add2~14\,
	sumout => \uut|Add2~57_sumout\,
	cout => \uut|Add2~58\);

-- Location: FF_X2_Y4_N34
\uut|CntWaitCycles[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~57_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(11));

-- Location: LABCELL_X2_Y4_N36
\uut|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~53_sumout\ = SUM(( \uut|CntWaitCycles\(12) ) + ( GND ) + ( \uut|Add2~58\ ))
-- \uut|Add2~54\ = CARRY(( \uut|CntWaitCycles\(12) ) + ( GND ) + ( \uut|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(12),
	cin => \uut|Add2~58\,
	sumout => \uut|Add2~53_sumout\,
	cout => \uut|Add2~54\);

-- Location: FF_X2_Y4_N37
\uut|CntWaitCycles[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~53_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(12));

-- Location: LABCELL_X2_Y4_N39
\uut|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~49_sumout\ = SUM(( \uut|CntWaitCycles\(13) ) + ( GND ) + ( \uut|Add2~54\ ))
-- \uut|Add2~50\ = CARRY(( \uut|CntWaitCycles\(13) ) + ( GND ) + ( \uut|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(13),
	cin => \uut|Add2~54\,
	sumout => \uut|Add2~49_sumout\,
	cout => \uut|Add2~50\);

-- Location: FF_X2_Y4_N40
\uut|CntWaitCycles[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~49_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(13));

-- Location: LABCELL_X2_Y4_N42
\uut|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~45_sumout\ = SUM(( \uut|CntWaitCycles\(14) ) + ( GND ) + ( \uut|Add2~50\ ))
-- \uut|Add2~46\ = CARRY(( \uut|CntWaitCycles\(14) ) + ( GND ) + ( \uut|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(14),
	cin => \uut|Add2~50\,
	sumout => \uut|Add2~45_sumout\,
	cout => \uut|Add2~46\);

-- Location: FF_X2_Y4_N43
\uut|CntWaitCycles[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~45_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(14));

-- Location: LABCELL_X2_Y4_N45
\uut|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~41_sumout\ = SUM(( \uut|CntWaitCycles\(15) ) + ( GND ) + ( \uut|Add2~46\ ))
-- \uut|Add2~42\ = CARRY(( \uut|CntWaitCycles\(15) ) + ( GND ) + ( \uut|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(15),
	cin => \uut|Add2~46\,
	sumout => \uut|Add2~41_sumout\,
	cout => \uut|Add2~42\);

-- Location: FF_X2_Y4_N46
\uut|CntWaitCycles[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~41_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(15));

-- Location: LABCELL_X2_Y4_N48
\uut|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~37_sumout\ = SUM(( \uut|CntWaitCycles\(16) ) + ( GND ) + ( \uut|Add2~42\ ))
-- \uut|Add2~38\ = CARRY(( \uut|CntWaitCycles\(16) ) + ( GND ) + ( \uut|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(16),
	cin => \uut|Add2~42\,
	sumout => \uut|Add2~37_sumout\,
	cout => \uut|Add2~38\);

-- Location: FF_X2_Y4_N49
\uut|CntWaitCycles[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~37_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(16));

-- Location: LABCELL_X2_Y4_N51
\uut|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~9_sumout\ = SUM(( \uut|CntWaitCycles\(17) ) + ( GND ) + ( \uut|Add2~38\ ))
-- \uut|Add2~10\ = CARRY(( \uut|CntWaitCycles\(17) ) + ( GND ) + ( \uut|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(17),
	cin => \uut|Add2~38\,
	sumout => \uut|Add2~9_sumout\,
	cout => \uut|Add2~10\);

-- Location: FF_X2_Y4_N53
\uut|CntWaitCycles[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~9_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(17));

-- Location: LABCELL_X2_Y4_N54
\uut|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~105_sumout\ = SUM(( \uut|CntWaitCycles\(18) ) + ( GND ) + ( \uut|Add2~10\ ))
-- \uut|Add2~106\ = CARRY(( \uut|CntWaitCycles\(18) ) + ( GND ) + ( \uut|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(18),
	cin => \uut|Add2~10\,
	sumout => \uut|Add2~105_sumout\,
	cout => \uut|Add2~106\);

-- Location: FF_X2_Y4_N55
\uut|CntWaitCycles[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~105_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(18));

-- Location: LABCELL_X2_Y4_N57
\uut|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~33_sumout\ = SUM(( \uut|CntWaitCycles\(19) ) + ( GND ) + ( \uut|Add2~106\ ))
-- \uut|Add2~34\ = CARRY(( \uut|CntWaitCycles\(19) ) + ( GND ) + ( \uut|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(19),
	cin => \uut|Add2~106\,
	sumout => \uut|Add2~33_sumout\,
	cout => \uut|Add2~34\);

-- Location: FF_X2_Y4_N58
\uut|CntWaitCycles[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~33_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(19));

-- Location: LABCELL_X2_Y3_N0
\uut|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~101_sumout\ = SUM(( \uut|CntWaitCycles\(20) ) + ( GND ) + ( \uut|Add2~34\ ))
-- \uut|Add2~102\ = CARRY(( \uut|CntWaitCycles\(20) ) + ( GND ) + ( \uut|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(20),
	cin => \uut|Add2~34\,
	sumout => \uut|Add2~101_sumout\,
	cout => \uut|Add2~102\);

-- Location: FF_X2_Y3_N2
\uut|CntWaitCycles[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~101_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(20));

-- Location: LABCELL_X2_Y3_N3
\uut|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~97_sumout\ = SUM(( \uut|CntWaitCycles\(21) ) + ( GND ) + ( \uut|Add2~102\ ))
-- \uut|Add2~98\ = CARRY(( \uut|CntWaitCycles\(21) ) + ( GND ) + ( \uut|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(21),
	cin => \uut|Add2~102\,
	sumout => \uut|Add2~97_sumout\,
	cout => \uut|Add2~98\);

-- Location: FF_X2_Y3_N5
\uut|CntWaitCycles[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~97_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(21));

-- Location: LABCELL_X2_Y3_N6
\uut|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~93_sumout\ = SUM(( \uut|CntWaitCycles\(22) ) + ( GND ) + ( \uut|Add2~98\ ))
-- \uut|Add2~94\ = CARRY(( \uut|CntWaitCycles\(22) ) + ( GND ) + ( \uut|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(22),
	cin => \uut|Add2~98\,
	sumout => \uut|Add2~93_sumout\,
	cout => \uut|Add2~94\);

-- Location: FF_X2_Y3_N7
\uut|CntWaitCycles[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~93_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(22));

-- Location: LABCELL_X2_Y3_N9
\uut|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~89_sumout\ = SUM(( \uut|CntWaitCycles\(23) ) + ( GND ) + ( \uut|Add2~94\ ))
-- \uut|Add2~90\ = CARRY(( \uut|CntWaitCycles\(23) ) + ( GND ) + ( \uut|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(23),
	cin => \uut|Add2~94\,
	sumout => \uut|Add2~89_sumout\,
	cout => \uut|Add2~90\);

-- Location: FF_X2_Y3_N11
\uut|CntWaitCycles[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~89_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(23));

-- Location: LABCELL_X2_Y3_N12
\uut|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~85_sumout\ = SUM(( \uut|CntWaitCycles\(24) ) + ( GND ) + ( \uut|Add2~90\ ))
-- \uut|Add2~86\ = CARRY(( \uut|CntWaitCycles\(24) ) + ( GND ) + ( \uut|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(24),
	cin => \uut|Add2~90\,
	sumout => \uut|Add2~85_sumout\,
	cout => \uut|Add2~86\);

-- Location: FF_X2_Y3_N14
\uut|CntWaitCycles[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~85_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(24));

-- Location: LABCELL_X2_Y3_N15
\uut|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~81_sumout\ = SUM(( \uut|CntWaitCycles\(25) ) + ( GND ) + ( \uut|Add2~86\ ))
-- \uut|Add2~82\ = CARRY(( \uut|CntWaitCycles\(25) ) + ( GND ) + ( \uut|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(25),
	cin => \uut|Add2~86\,
	sumout => \uut|Add2~81_sumout\,
	cout => \uut|Add2~82\);

-- Location: FF_X2_Y3_N17
\uut|CntWaitCycles[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~81_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(25));

-- Location: LABCELL_X2_Y3_N18
\uut|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~77_sumout\ = SUM(( \uut|CntWaitCycles\(26) ) + ( GND ) + ( \uut|Add2~82\ ))
-- \uut|Add2~78\ = CARRY(( \uut|CntWaitCycles\(26) ) + ( GND ) + ( \uut|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(26),
	cin => \uut|Add2~82\,
	sumout => \uut|Add2~77_sumout\,
	cout => \uut|Add2~78\);

-- Location: FF_X2_Y3_N20
\uut|CntWaitCycles[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~77_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(26));

-- Location: LABCELL_X2_Y3_N21
\uut|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add2~73_sumout\ = SUM(( \uut|CntWaitCycles\(27) ) + ( GND ) + ( \uut|Add2~78\ ))
-- \uut|Add2~74\ = CARRY(( \uut|CntWaitCycles\(27) ) + ( GND ) + ( \uut|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_CntWaitCycles\(27),
	cin => \uut|Add2~78\,
	sumout => \uut|Add2~73_sumout\,
	cout => \uut|Add2~74\);

-- Location: FF_X2_Y3_N23
\uut|CntWaitCycles[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~73_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(27));

-- Location: FF_X2_Y3_N26
\uut|CntWaitCycles[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add2~69_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|CntWaitCycles[29]~0_combout\,
	ena => \uut|CntWaitCycles[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles\(28));

-- Location: FF_X3_Y3_N56
\uut|CntWaitCycles[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector114~4_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|CntWaitCycles[0]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y3_N42
\uut|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal3~3_combout\ = ( !\uut|CntWaitCycles\(27) & ( !\uut|CntWaitCycles\(29) & ( (!\uut|CntWaitCycles\(28) & (\uut|CntWaitCycles[0]~DUPLICATE_q\ & (!\uut|CntWaitCycles\(26) & !\uut|CntWaitCycles\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles\(28),
	datab => \uut|ALT_INV_CntWaitCycles[0]~DUPLICATE_q\,
	datac => \uut|ALT_INV_CntWaitCycles\(26),
	datad => \uut|ALT_INV_CntWaitCycles\(25),
	datae => \uut|ALT_INV_CntWaitCycles\(27),
	dataf => \uut|ALT_INV_CntWaitCycles\(29),
	combout => \uut|Equal3~3_combout\);

-- Location: MLABCELL_X3_Y4_N12
\uut|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal5~0_combout\ = ( !\uut|CntWaitCycles\(5) & ( (!\uut|CntWaitCycles\(2) & (\uut|CntWaitCycles\(3) & (\uut|CntWaitCycles\(1) & !\uut|CntWaitCycles\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_CntWaitCycles\(2),
	datab => \uut|ALT_INV_CntWaitCycles\(3),
	datac => \uut|ALT_INV_CntWaitCycles\(1),
	datad => \uut|ALT_INV_CntWaitCycles\(6),
	dataf => \uut|ALT_INV_CntWaitCycles\(5),
	combout => \uut|Equal5~0_combout\);

-- Location: MLABCELL_X3_Y4_N9
\uut|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal5~1_combout\ = ( \uut|Equal3~4_combout\ & ( \uut|Equal5~0_combout\ & ( (\uut|Equal3~3_combout\ & (\uut|Equal3~2_combout\ & (\uut|Equal3~0_combout\ & \uut|Equal3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal3~3_combout\,
	datab => \uut|ALT_INV_Equal3~2_combout\,
	datac => \uut|ALT_INV_Equal3~0_combout\,
	datad => \uut|ALT_INV_Equal3~1_combout\,
	datae => \uut|ALT_INV_Equal3~4_combout\,
	dataf => \uut|ALT_INV_Equal5~0_combout\,
	combout => \uut|Equal5~1_combout\);

-- Location: LABCELL_X4_Y2_N24
\uut|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal4~1_combout\ = ( !\uut|MotionReg\(1) & ( \uut|Equal4~0_combout\ & ( (!\uut|MotionReg\(2) & !\uut|MotionReg\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_MotionReg\(2),
	datac => \uut|ALT_INV_MotionReg\(0),
	datae => \uut|ALT_INV_MotionReg\(1),
	dataf => \uut|ALT_INV_Equal4~0_combout\,
	combout => \uut|Equal4~1_combout\);

-- Location: MLABCELL_X3_Y4_N27
\uut|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector16~0_combout\ = ( \uut|Equal4~1_combout\ & ( (!\uut|State.OutputAndWaitForWrite~q\) # ((\GenerateStrobeMHz|oStrobe~DUPLICATE_q\ & \uut|Equal5~1_combout\)) ) ) # ( !\uut|Equal4~1_combout\ & ( (!\uut|State.CheckMotionReg~q\ & 
-- ((!\uut|State.OutputAndWaitForWrite~q\) # ((\GenerateStrobeMHz|oStrobe~DUPLICATE_q\ & \uut|Equal5~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000100000000111100010000000011110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	datab => \uut|ALT_INV_Equal5~1_combout\,
	datac => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datad => \uut|ALT_INV_State.CheckMotionReg~q\,
	dataf => \uut|ALT_INV_Equal4~1_combout\,
	combout => \uut|Selector16~0_combout\);

-- Location: LABCELL_X4_Y4_N54
\uut|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector5~0_combout\ = ( \uut|MasterOutput~0_combout\ & ( ((!\uut|State~39_combout\ & \uut|State.ReadProductIDReg~q\)) # (\uut|State.WaitForReadProductID~q\) ) ) # ( !\uut|MasterOutput~0_combout\ & ( (!\uut|State~39_combout\ & 
-- \uut|State.ReadProductIDReg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State~39_combout\,
	datac => \uut|ALT_INV_State.WaitForReadProductID~q\,
	datad => \uut|ALT_INV_State.ReadProductIDReg~q\,
	dataf => \uut|ALT_INV_MasterOutput~0_combout\,
	combout => \uut|Selector5~0_combout\);

-- Location: FF_X4_Y4_N56
\uut|State.ReadProductIDReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector5~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.ReadProductIDReg~q\);

-- Location: MLABCELL_X3_Y4_N57
\uut|Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector16~1_combout\ = ( \uut|State.ReadProductIDReg~q\ & ( ((!\uut|Selector16~0_combout\) # (\uut|State.OutputAndWaitForWrite~q\)) # (\uut|State~39_combout\) ) ) # ( !\uut|State.ReadProductIDReg~q\ & ( (!\uut|Selector16~0_combout\) # 
-- ((\uut|State.ReadDataYReg~q\ & ((\uut|State.OutputAndWaitForWrite~q\) # (\uut|State~39_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000111111111110000011111111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State~39_combout\,
	datab => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	datac => \uut|ALT_INV_State.ReadDataYReg~q\,
	datad => \uut|ALT_INV_Selector16~0_combout\,
	dataf => \uut|ALT_INV_State.ReadProductIDReg~q\,
	combout => \uut|Selector16~1_combout\);

-- Location: FF_X3_Y4_N59
\uut|State.OutputAndWaitForWrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector16~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.OutputAndWaitForWrite~q\);

-- Location: LABCELL_X4_Y2_N21
\uut|Selector6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~8_combout\ = ( \uut|Equal5~1_combout\ & ( (\GenerateStrobeMHz|oStrobe~q\ & \uut|State.OutputAndWaitForWrite~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \GenerateStrobeMHz|ALT_INV_oStrobe~q\,
	datad => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	dataf => \uut|ALT_INV_Equal5~1_combout\,
	combout => \uut|Selector6~8_combout\);

-- Location: LABCELL_X4_Y3_N18
\uut|Selector6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~12_combout\ = ( \uut|Selector6~8_combout\ ) # ( !\uut|Selector6~8_combout\ & ( (!\uut|State~38_combout\ & \uut|State.SetMotionReg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State~38_combout\,
	datad => \uut|ALT_INV_State.SetMotionReg~q\,
	dataf => \uut|ALT_INV_Selector6~8_combout\,
	combout => \uut|Selector6~12_combout\);

-- Location: FF_X4_Y3_N19
\uut|State.SetMotionReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector6~12_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetMotionReg~q\);

-- Location: FF_X4_Y3_N29
\uut|State.SetProductIDReg~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector3~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetProductIDReg~DUPLICATE_q\);

-- Location: FF_X4_Y4_N50
\uut|State.ReadDataXReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector12~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.ReadDataXReg~q\);

-- Location: LABCELL_X4_Y4_N48
\uut|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector12~0_combout\ = ( \uut|State.ReadDataXReg~q\ & ( \uut|MasterOutput~0_combout\ & ( (!\uut|State~39_combout\) # (\uut|State.WaitForReadDataX~q\) ) ) ) # ( !\uut|State.ReadDataXReg~q\ & ( \uut|MasterOutput~0_combout\ & ( 
-- \uut|State.WaitForReadDataX~q\ ) ) ) # ( \uut|State.ReadDataXReg~q\ & ( !\uut|MasterOutput~0_combout\ & ( !\uut|State~39_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001111000011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State~39_combout\,
	datac => \uut|ALT_INV_State.WaitForReadDataX~q\,
	datae => \uut|ALT_INV_State.ReadDataXReg~q\,
	dataf => \uut|ALT_INV_MasterOutput~0_combout\,
	combout => \uut|Selector12~0_combout\);

-- Location: FF_X4_Y4_N49
\uut|State.ReadDataXReg~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector12~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.ReadDataXReg~DUPLICATE_q\);

-- Location: FF_X4_Y3_N17
\uut|State.SetDataYReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector13~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetDataYReg~q\);

-- Location: LABCELL_X4_Y3_N15
\uut|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector13~0_combout\ = ( \uut|State~39_combout\ & ( ((!\uut|State~38_combout\ & \uut|State.SetDataYReg~q\)) # (\uut|State.ReadDataXReg~DUPLICATE_q\) ) ) # ( !\uut|State~39_combout\ & ( (!\uut|State~38_combout\ & \uut|State.SetDataYReg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111110011110000111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State~38_combout\,
	datac => \uut|ALT_INV_State.ReadDataXReg~DUPLICATE_q\,
	datad => \uut|ALT_INV_State.SetDataYReg~q\,
	dataf => \uut|ALT_INV_State~39_combout\,
	combout => \uut|Selector13~0_combout\);

-- Location: FF_X4_Y3_N16
\uut|State.SetDataYReg~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector13~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.SetDataYReg~DUPLICATE_q\);

-- Location: LABCELL_X4_Y3_N54
\uut|Selector82~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector82~1_combout\ = ( !\uut|State.SetDataYReg~DUPLICATE_q\ & ( (!\uut|State.SetMotionReg~q\ & (!\uut|State.SetDataXReg~q\ & !\uut|State.SetProductIDReg~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.SetMotionReg~q\,
	datac => \uut|ALT_INV_State.SetDataXReg~q\,
	datad => \uut|ALT_INV_State.SetProductIDReg~DUPLICATE_q\,
	dataf => \uut|ALT_INV_State.SetDataYReg~DUPLICATE_q\,
	combout => \uut|Selector82~1_combout\);

-- Location: LABCELL_X4_Y3_N9
\uut|Selector82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector82~0_combout\ = ( !\uut|SysClk~q\ & ( (\uut|Equal1~6_combout\ & \uut|Equal2~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_Equal1~6_combout\,
	datad => \uut|ALT_INV_Equal2~6_combout\,
	dataf => \uut|ALT_INV_SysClk~q\,
	combout => \uut|Selector82~0_combout\);

-- Location: LABCELL_X4_Y3_N0
\uut|Selector82~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector82~2_combout\ = ( \uut|Sel~q\ & ( \uut|SysClkEnable~DUPLICATE_q\ & ( (!\uut|Selector82~1_combout\) # ((!\uut|WideOr1~combout\) # ((!\uut|Selector82~0_combout\ & !\uut|Selector6~6_combout\))) ) ) ) # ( \uut|Sel~q\ & ( 
-- !\uut|SysClkEnable~DUPLICATE_q\ & ( (!\uut|Selector82~1_combout\) # ((!\uut|Selector6~6_combout\) # (!\uut|WideOr1~combout\)) ) ) ) # ( !\uut|Sel~q\ & ( !\uut|SysClkEnable~DUPLICATE_q\ & ( !\uut|Selector82~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111101000000000000000001111111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector82~1_combout\,
	datab => \uut|ALT_INV_Selector82~0_combout\,
	datac => \uut|ALT_INV_Selector6~6_combout\,
	datad => \uut|ALT_INV_WideOr1~combout\,
	datae => \uut|ALT_INV_Sel~q\,
	dataf => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	combout => \uut|Selector82~2_combout\);

-- Location: FF_X4_Y3_N2
\uut|Sel~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector82~2_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|Sel~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y3_N9
\uut|SysClkGenCounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter~1_combout\ = ( \uut|SysClkEnable~q\ & ( (!\uut|Add0~81_sumout\ & (!\uut|State.Init~q\ & \uut|Sel~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add0~81_sumout\,
	datab => \uut|ALT_INV_State.Init~q\,
	datac => \uut|ALT_INV_Sel~DUPLICATE_q\,
	dataf => \uut|ALT_INV_SysClkEnable~q\,
	combout => \uut|SysClkGenCounter~1_combout\);

-- Location: FF_X3_Y3_N10
\uut|SysClkGenCounter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|SysClkGenCounter~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter[0]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y5_N3
\uut|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~85_sumout\ = SUM(( \uut|SysClkGenCounter\(1) ) + ( GND ) + ( \uut|Add0~82\ ))
-- \uut|Add0~86\ = CARRY(( \uut|SysClkGenCounter\(1) ) + ( GND ) + ( \uut|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(1),
	cin => \uut|Add0~82\,
	sumout => \uut|Add0~85_sumout\,
	cout => \uut|Add0~86\);

-- Location: MLABCELL_X3_Y3_N48
\uut|SysClkGenCounter[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|SysClkGenCounter[1]~0_combout\ = ( \uut|Sel~DUPLICATE_q\ & ( ((!\uut|SysClkEnable~q\) # (\uut|State.Init~q\)) # (\uut|Equal1~6_combout\) ) ) # ( !\uut|Sel~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal1~6_combout\,
	datac => \uut|ALT_INV_SysClkEnable~q\,
	datad => \uut|ALT_INV_State.Init~q\,
	dataf => \uut|ALT_INV_Sel~DUPLICATE_q\,
	combout => \uut|SysClkGenCounter[1]~0_combout\);

-- Location: FF_X4_Y5_N4
\uut|SysClkGenCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~85_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(1));

-- Location: LABCELL_X4_Y5_N6
\uut|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~5_sumout\ = SUM(( \uut|SysClkGenCounter\(2) ) + ( GND ) + ( \uut|Add0~86\ ))
-- \uut|Add0~6\ = CARRY(( \uut|SysClkGenCounter\(2) ) + ( GND ) + ( \uut|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(2),
	cin => \uut|Add0~86\,
	sumout => \uut|Add0~5_sumout\,
	cout => \uut|Add0~6\);

-- Location: FF_X4_Y5_N8
\uut|SysClkGenCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~5_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(2));

-- Location: LABCELL_X4_Y5_N9
\uut|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~1_sumout\ = SUM(( \uut|SysClkGenCounter\(3) ) + ( GND ) + ( \uut|Add0~6\ ))
-- \uut|Add0~2\ = CARRY(( \uut|SysClkGenCounter\(3) ) + ( GND ) + ( \uut|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(3),
	cin => \uut|Add0~6\,
	sumout => \uut|Add0~1_sumout\,
	cout => \uut|Add0~2\);

-- Location: FF_X4_Y5_N10
\uut|SysClkGenCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~1_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(3));

-- Location: MLABCELL_X3_Y3_N0
\uut|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~0_combout\ = ( \uut|SysClkGenCounter\(2) & ( !\uut|SysClkGenCounter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(3),
	dataf => \uut|ALT_INV_SysClkGenCounter\(2),
	combout => \uut|Equal1~0_combout\);

-- Location: LABCELL_X4_Y5_N12
\uut|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~29_sumout\ = SUM(( \uut|SysClkGenCounter\(4) ) + ( GND ) + ( \uut|Add0~2\ ))
-- \uut|Add0~30\ = CARRY(( \uut|SysClkGenCounter\(4) ) + ( GND ) + ( \uut|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(4),
	cin => \uut|Add0~2\,
	sumout => \uut|Add0~29_sumout\,
	cout => \uut|Add0~30\);

-- Location: FF_X4_Y5_N14
\uut|SysClkGenCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~29_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(4));

-- Location: LABCELL_X4_Y5_N15
\uut|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~109_sumout\ = SUM(( \uut|SysClkGenCounter\(5) ) + ( GND ) + ( \uut|Add0~30\ ))
-- \uut|Add0~110\ = CARRY(( \uut|SysClkGenCounter\(5) ) + ( GND ) + ( \uut|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(5),
	cin => \uut|Add0~30\,
	sumout => \uut|Add0~109_sumout\,
	cout => \uut|Add0~110\);

-- Location: FF_X4_Y5_N16
\uut|SysClkGenCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~109_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(5));

-- Location: LABCELL_X4_Y5_N18
\uut|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~25_sumout\ = SUM(( \uut|SysClkGenCounter\(6) ) + ( GND ) + ( \uut|Add0~110\ ))
-- \uut|Add0~26\ = CARRY(( \uut|SysClkGenCounter\(6) ) + ( GND ) + ( \uut|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(6),
	cin => \uut|Add0~110\,
	sumout => \uut|Add0~25_sumout\,
	cout => \uut|Add0~26\);

-- Location: FF_X4_Y5_N19
\uut|SysClkGenCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~25_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(6));

-- Location: LABCELL_X4_Y5_N21
\uut|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~101_sumout\ = SUM(( \uut|SysClkGenCounter\(7) ) + ( GND ) + ( \uut|Add0~26\ ))
-- \uut|Add0~102\ = CARRY(( \uut|SysClkGenCounter\(7) ) + ( GND ) + ( \uut|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(7),
	cin => \uut|Add0~26\,
	sumout => \uut|Add0~101_sumout\,
	cout => \uut|Add0~102\);

-- Location: FF_X4_Y5_N23
\uut|SysClkGenCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~101_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(7));

-- Location: LABCELL_X4_Y5_N24
\uut|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~21_sumout\ = SUM(( \uut|SysClkGenCounter\(8) ) + ( GND ) + ( \uut|Add0~102\ ))
-- \uut|Add0~22\ = CARRY(( \uut|SysClkGenCounter\(8) ) + ( GND ) + ( \uut|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(8),
	cin => \uut|Add0~102\,
	sumout => \uut|Add0~21_sumout\,
	cout => \uut|Add0~22\);

-- Location: FF_X4_Y5_N25
\uut|SysClkGenCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~21_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(8));

-- Location: LABCELL_X4_Y5_N27
\uut|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~17_sumout\ = SUM(( \uut|SysClkGenCounter\(9) ) + ( GND ) + ( \uut|Add0~22\ ))
-- \uut|Add0~18\ = CARRY(( \uut|SysClkGenCounter\(9) ) + ( GND ) + ( \uut|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(9),
	cin => \uut|Add0~22\,
	sumout => \uut|Add0~17_sumout\,
	cout => \uut|Add0~18\);

-- Location: FF_X4_Y5_N28
\uut|SysClkGenCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~17_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(9));

-- Location: LABCELL_X4_Y5_N30
\uut|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~13_sumout\ = SUM(( \uut|SysClkGenCounter\(10) ) + ( GND ) + ( \uut|Add0~18\ ))
-- \uut|Add0~14\ = CARRY(( \uut|SysClkGenCounter\(10) ) + ( GND ) + ( \uut|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(10),
	cin => \uut|Add0~18\,
	sumout => \uut|Add0~13_sumout\,
	cout => \uut|Add0~14\);

-- Location: FF_X4_Y5_N31
\uut|SysClkGenCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~13_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(10));

-- Location: LABCELL_X4_Y5_N33
\uut|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~9_sumout\ = SUM(( \uut|SysClkGenCounter\(11) ) + ( GND ) + ( \uut|Add0~14\ ))
-- \uut|Add0~10\ = CARRY(( \uut|SysClkGenCounter\(11) ) + ( GND ) + ( \uut|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(11),
	cin => \uut|Add0~14\,
	sumout => \uut|Add0~9_sumout\,
	cout => \uut|Add0~10\);

-- Location: FF_X4_Y5_N35
\uut|SysClkGenCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~9_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(11));

-- Location: LABCELL_X4_Y5_N36
\uut|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~53_sumout\ = SUM(( \uut|SysClkGenCounter\(12) ) + ( GND ) + ( \uut|Add0~10\ ))
-- \uut|Add0~54\ = CARRY(( \uut|SysClkGenCounter\(12) ) + ( GND ) + ( \uut|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(12),
	cin => \uut|Add0~10\,
	sumout => \uut|Add0~53_sumout\,
	cout => \uut|Add0~54\);

-- Location: FF_X4_Y5_N38
\uut|SysClkGenCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~53_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(12));

-- Location: LABCELL_X4_Y5_N39
\uut|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~49_sumout\ = SUM(( \uut|SysClkGenCounter\(13) ) + ( GND ) + ( \uut|Add0~54\ ))
-- \uut|Add0~50\ = CARRY(( \uut|SysClkGenCounter\(13) ) + ( GND ) + ( \uut|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(13),
	cin => \uut|Add0~54\,
	sumout => \uut|Add0~49_sumout\,
	cout => \uut|Add0~50\);

-- Location: FF_X4_Y5_N41
\uut|SysClkGenCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~49_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(13));

-- Location: LABCELL_X4_Y5_N42
\uut|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~45_sumout\ = SUM(( \uut|SysClkGenCounter\(14) ) + ( GND ) + ( \uut|Add0~50\ ))
-- \uut|Add0~46\ = CARRY(( \uut|SysClkGenCounter\(14) ) + ( GND ) + ( \uut|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(14),
	cin => \uut|Add0~50\,
	sumout => \uut|Add0~45_sumout\,
	cout => \uut|Add0~46\);

-- Location: FF_X4_Y5_N44
\uut|SysClkGenCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~45_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(14));

-- Location: LABCELL_X4_Y5_N45
\uut|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~41_sumout\ = SUM(( \uut|SysClkGenCounter\(15) ) + ( GND ) + ( \uut|Add0~46\ ))
-- \uut|Add0~42\ = CARRY(( \uut|SysClkGenCounter\(15) ) + ( GND ) + ( \uut|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(15),
	cin => \uut|Add0~46\,
	sumout => \uut|Add0~41_sumout\,
	cout => \uut|Add0~42\);

-- Location: FF_X4_Y5_N47
\uut|SysClkGenCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~41_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(15));

-- Location: LABCELL_X4_Y5_N48
\uut|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~37_sumout\ = SUM(( \uut|SysClkGenCounter\(16) ) + ( GND ) + ( \uut|Add0~42\ ))
-- \uut|Add0~38\ = CARRY(( \uut|SysClkGenCounter\(16) ) + ( GND ) + ( \uut|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(16),
	cin => \uut|Add0~42\,
	sumout => \uut|Add0~37_sumout\,
	cout => \uut|Add0~38\);

-- Location: FF_X4_Y5_N50
\uut|SysClkGenCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~37_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(16));

-- Location: LABCELL_X4_Y5_N51
\uut|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~33_sumout\ = SUM(( \uut|SysClkGenCounter\(17) ) + ( GND ) + ( \uut|Add0~38\ ))
-- \uut|Add0~34\ = CARRY(( \uut|SysClkGenCounter\(17) ) + ( GND ) + ( \uut|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(17),
	cin => \uut|Add0~38\,
	sumout => \uut|Add0~33_sumout\,
	cout => \uut|Add0~34\);

-- Location: FF_X4_Y5_N53
\uut|SysClkGenCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~33_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(17));

-- Location: LABCELL_X4_Y5_N54
\uut|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~77_sumout\ = SUM(( \uut|SysClkGenCounter\(18) ) + ( GND ) + ( \uut|Add0~34\ ))
-- \uut|Add0~78\ = CARRY(( \uut|SysClkGenCounter\(18) ) + ( GND ) + ( \uut|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(18),
	cin => \uut|Add0~34\,
	sumout => \uut|Add0~77_sumout\,
	cout => \uut|Add0~78\);

-- Location: FF_X4_Y5_N55
\uut|SysClkGenCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~77_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(18));

-- Location: LABCELL_X4_Y5_N57
\uut|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~73_sumout\ = SUM(( \uut|SysClkGenCounter\(19) ) + ( GND ) + ( \uut|Add0~78\ ))
-- \uut|Add0~74\ = CARRY(( \uut|SysClkGenCounter\(19) ) + ( GND ) + ( \uut|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(19),
	cin => \uut|Add0~78\,
	sumout => \uut|Add0~73_sumout\,
	cout => \uut|Add0~74\);

-- Location: FF_X4_Y5_N59
\uut|SysClkGenCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~73_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(19));

-- Location: LABCELL_X4_Y4_N0
\uut|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~69_sumout\ = SUM(( \uut|SysClkGenCounter\(20) ) + ( GND ) + ( \uut|Add0~74\ ))
-- \uut|Add0~70\ = CARRY(( \uut|SysClkGenCounter\(20) ) + ( GND ) + ( \uut|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(20),
	cin => \uut|Add0~74\,
	sumout => \uut|Add0~69_sumout\,
	cout => \uut|Add0~70\);

-- Location: FF_X4_Y4_N1
\uut|SysClkGenCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~69_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(20));

-- Location: LABCELL_X4_Y4_N3
\uut|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~105_sumout\ = SUM(( \uut|SysClkGenCounter\(21) ) + ( GND ) + ( \uut|Add0~70\ ))
-- \uut|Add0~106\ = CARRY(( \uut|SysClkGenCounter\(21) ) + ( GND ) + ( \uut|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(21),
	cin => \uut|Add0~70\,
	sumout => \uut|Add0~105_sumout\,
	cout => \uut|Add0~106\);

-- Location: FF_X4_Y4_N5
\uut|SysClkGenCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~105_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(21));

-- Location: LABCELL_X4_Y4_N6
\uut|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~65_sumout\ = SUM(( \uut|SysClkGenCounter\(22) ) + ( GND ) + ( \uut|Add0~106\ ))
-- \uut|Add0~66\ = CARRY(( \uut|SysClkGenCounter\(22) ) + ( GND ) + ( \uut|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(22),
	cin => \uut|Add0~106\,
	sumout => \uut|Add0~65_sumout\,
	cout => \uut|Add0~66\);

-- Location: FF_X4_Y4_N7
\uut|SysClkGenCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~65_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(22));

-- Location: LABCELL_X4_Y4_N9
\uut|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~61_sumout\ = SUM(( \uut|SysClkGenCounter\(23) ) + ( GND ) + ( \uut|Add0~66\ ))
-- \uut|Add0~62\ = CARRY(( \uut|SysClkGenCounter\(23) ) + ( GND ) + ( \uut|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(23),
	cin => \uut|Add0~66\,
	sumout => \uut|Add0~61_sumout\,
	cout => \uut|Add0~62\);

-- Location: FF_X4_Y4_N10
\uut|SysClkGenCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~61_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(23));

-- Location: LABCELL_X4_Y4_N12
\uut|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~57_sumout\ = SUM(( \uut|SysClkGenCounter\(24) ) + ( GND ) + ( \uut|Add0~62\ ))
-- \uut|Add0~58\ = CARRY(( \uut|SysClkGenCounter\(24) ) + ( GND ) + ( \uut|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(24),
	cin => \uut|Add0~62\,
	sumout => \uut|Add0~57_sumout\,
	cout => \uut|Add0~58\);

-- Location: FF_X4_Y4_N13
\uut|SysClkGenCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~57_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(24));

-- Location: LABCELL_X4_Y4_N15
\uut|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~125_sumout\ = SUM(( \uut|SysClkGenCounter\(25) ) + ( GND ) + ( \uut|Add0~58\ ))
-- \uut|Add0~126\ = CARRY(( \uut|SysClkGenCounter\(25) ) + ( GND ) + ( \uut|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(25),
	cin => \uut|Add0~58\,
	sumout => \uut|Add0~125_sumout\,
	cout => \uut|Add0~126\);

-- Location: FF_X4_Y4_N17
\uut|SysClkGenCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~125_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(25));

-- Location: LABCELL_X4_Y4_N18
\uut|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~121_sumout\ = SUM(( \uut|SysClkGenCounter\(26) ) + ( GND ) + ( \uut|Add0~126\ ))
-- \uut|Add0~122\ = CARRY(( \uut|SysClkGenCounter\(26) ) + ( GND ) + ( \uut|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(26),
	cin => \uut|Add0~126\,
	sumout => \uut|Add0~121_sumout\,
	cout => \uut|Add0~122\);

-- Location: FF_X4_Y4_N20
\uut|SysClkGenCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~121_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(26));

-- Location: LABCELL_X4_Y4_N21
\uut|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~117_sumout\ = SUM(( \uut|SysClkGenCounter\(27) ) + ( GND ) + ( \uut|Add0~122\ ))
-- \uut|Add0~118\ = CARRY(( \uut|SysClkGenCounter\(27) ) + ( GND ) + ( \uut|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(27),
	cin => \uut|Add0~122\,
	sumout => \uut|Add0~117_sumout\,
	cout => \uut|Add0~118\);

-- Location: FF_X4_Y4_N22
\uut|SysClkGenCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~117_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(27));

-- Location: LABCELL_X4_Y4_N24
\uut|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~93_sumout\ = SUM(( \uut|SysClkGenCounter\(28) ) + ( GND ) + ( \uut|Add0~118\ ))
-- \uut|Add0~94\ = CARRY(( \uut|SysClkGenCounter\(28) ) + ( GND ) + ( \uut|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(28),
	cin => \uut|Add0~118\,
	sumout => \uut|Add0~93_sumout\,
	cout => \uut|Add0~94\);

-- Location: FF_X4_Y4_N26
\uut|SysClkGenCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~93_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(28));

-- Location: FF_X3_Y3_N11
\uut|SysClkGenCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|SysClkGenCounter~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(0));

-- Location: LABCELL_X4_Y4_N27
\uut|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~97_sumout\ = SUM(( \uut|SysClkGenCounter\(29) ) + ( GND ) + ( \uut|Add0~94\ ))
-- \uut|Add0~98\ = CARRY(( \uut|SysClkGenCounter\(29) ) + ( GND ) + ( \uut|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(29),
	cin => \uut|Add0~94\,
	sumout => \uut|Add0~97_sumout\,
	cout => \uut|Add0~98\);

-- Location: FF_X4_Y4_N28
\uut|SysClkGenCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~97_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(29));

-- Location: LABCELL_X4_Y4_N30
\uut|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~89_sumout\ = SUM(( \uut|SysClkGenCounter\(30) ) + ( GND ) + ( \uut|Add0~98\ ))
-- \uut|Add0~90\ = CARRY(( \uut|SysClkGenCounter\(30) ) + ( GND ) + ( \uut|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(30),
	cin => \uut|Add0~98\,
	sumout => \uut|Add0~89_sumout\,
	cout => \uut|Add0~90\);

-- Location: FF_X4_Y4_N31
\uut|SysClkGenCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~89_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(30));

-- Location: MLABCELL_X3_Y3_N12
\uut|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~4_combout\ = ( !\uut|SysClkGenCounter\(1) & ( !\uut|SysClkGenCounter\(29) & ( (!\uut|SysClkGenCounter\(28) & (\uut|SysClkGenCounter\(0) & (!\uut|SysClkGenCounter\(30) & !\uut|SysClkGenCounter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkGenCounter\(28),
	datab => \uut|ALT_INV_SysClkGenCounter\(0),
	datac => \uut|ALT_INV_SysClkGenCounter\(30),
	datad => \uut|ALT_INV_SysClkGenCounter\(7),
	datae => \uut|ALT_INV_SysClkGenCounter\(1),
	dataf => \uut|ALT_INV_SysClkGenCounter\(29),
	combout => \uut|Equal1~4_combout\);

-- Location: MLABCELL_X3_Y3_N24
\uut|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~3_combout\ = ( !\uut|SysClkGenCounter\(18) & ( !\uut|SysClkGenCounter\(19) & ( (!\uut|SysClkGenCounter\(24) & (!\uut|SysClkGenCounter\(22) & (!\uut|SysClkGenCounter\(20) & !\uut|SysClkGenCounter\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkGenCounter\(24),
	datab => \uut|ALT_INV_SysClkGenCounter\(22),
	datac => \uut|ALT_INV_SysClkGenCounter\(20),
	datad => \uut|ALT_INV_SysClkGenCounter\(23),
	datae => \uut|ALT_INV_SysClkGenCounter\(18),
	dataf => \uut|ALT_INV_SysClkGenCounter\(19),
	combout => \uut|Equal1~3_combout\);

-- Location: MLABCELL_X3_Y3_N30
\uut|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~1_combout\ = ( !\uut|SysClkGenCounter\(10) & ( !\uut|SysClkGenCounter\(9) & ( (\uut|SysClkGenCounter\(6) & (!\uut|SysClkGenCounter\(11) & (!\uut|SysClkGenCounter\(8) & !\uut|SysClkGenCounter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkGenCounter\(6),
	datab => \uut|ALT_INV_SysClkGenCounter\(11),
	datac => \uut|ALT_INV_SysClkGenCounter\(8),
	datad => \uut|ALT_INV_SysClkGenCounter\(4),
	datae => \uut|ALT_INV_SysClkGenCounter\(10),
	dataf => \uut|ALT_INV_SysClkGenCounter\(9),
	combout => \uut|Equal1~1_combout\);

-- Location: LABCELL_X4_Y4_N33
\uut|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add0~113_sumout\ = SUM(( \uut|SysClkGenCounter\(31) ) + ( GND ) + ( \uut|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_SysClkGenCounter\(31),
	cin => \uut|Add0~90\,
	sumout => \uut|Add0~113_sumout\);

-- Location: FF_X4_Y4_N35
\uut|SysClkGenCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add0~113_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|SysClkGenCounter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkGenCounter\(31));

-- Location: LABCELL_X4_Y4_N36
\uut|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~5_combout\ = ( \uut|SysClkGenCounter\(5) & ( !\uut|SysClkGenCounter\(26) & ( (!\uut|SysClkGenCounter\(21) & (!\uut|SysClkGenCounter\(27) & (!\uut|SysClkGenCounter\(31) & !\uut|SysClkGenCounter\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkGenCounter\(21),
	datab => \uut|ALT_INV_SysClkGenCounter\(27),
	datac => \uut|ALT_INV_SysClkGenCounter\(31),
	datad => \uut|ALT_INV_SysClkGenCounter\(25),
	datae => \uut|ALT_INV_SysClkGenCounter\(5),
	dataf => \uut|ALT_INV_SysClkGenCounter\(26),
	combout => \uut|Equal1~5_combout\);

-- Location: MLABCELL_X3_Y5_N42
\uut|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~2_combout\ = ( !\uut|SysClkGenCounter\(12) & ( !\uut|SysClkGenCounter\(15) & ( (!\uut|SysClkGenCounter\(17) & (!\uut|SysClkGenCounter\(14) & (!\uut|SysClkGenCounter\(13) & !\uut|SysClkGenCounter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkGenCounter\(17),
	datab => \uut|ALT_INV_SysClkGenCounter\(14),
	datac => \uut|ALT_INV_SysClkGenCounter\(13),
	datad => \uut|ALT_INV_SysClkGenCounter\(16),
	datae => \uut|ALT_INV_SysClkGenCounter\(12),
	dataf => \uut|ALT_INV_SysClkGenCounter\(15),
	combout => \uut|Equal1~2_combout\);

-- Location: MLABCELL_X3_Y3_N18
\uut|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal1~6_combout\ = ( \uut|Equal1~5_combout\ & ( \uut|Equal1~2_combout\ & ( (\uut|Equal1~0_combout\ & (\uut|Equal1~4_combout\ & (\uut|Equal1~3_combout\ & \uut|Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal1~0_combout\,
	datab => \uut|ALT_INV_Equal1~4_combout\,
	datac => \uut|ALT_INV_Equal1~3_combout\,
	datad => \uut|ALT_INV_Equal1~1_combout\,
	datae => \uut|ALT_INV_Equal1~5_combout\,
	dataf => \uut|ALT_INV_Equal1~2_combout\,
	combout => \uut|Equal1~6_combout\);

-- Location: MLABCELL_X3_Y3_N36
\uut|SysClk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|SysClk~0_combout\ = ( \uut|Sel~DUPLICATE_q\ & ( (!\uut|SysClkEnable~q\) # (!\uut|Equal1~6_combout\ $ (!\uut|SysClk~q\)) ) ) # ( !\uut|Sel~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111110101111010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal1~6_combout\,
	datac => \uut|ALT_INV_SysClkEnable~q\,
	datad => \uut|ALT_INV_SysClk~q\,
	dataf => \uut|ALT_INV_Sel~DUPLICATE_q\,
	combout => \uut|SysClk~0_combout\);

-- Location: FF_X3_Y3_N37
\uut|SysClk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|SysClk~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|State.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClk~q\);

-- Location: LABCELL_X4_Y3_N45
\uut|State~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|State~38_combout\ = ( \uut|Equal1~6_combout\ & ( (\uut|SysClk~q\ & (!\uut|RegAndClockGen~0_combout\ & \uut|Equal2~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClk~q\,
	datac => \uut|ALT_INV_RegAndClockGen~0_combout\,
	datad => \uut|ALT_INV_Equal2~6_combout\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|State~38_combout\);

-- Location: LABCELL_X4_Y3_N12
\uut|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector14~0_combout\ = ( \uut|State.SetDataYReg~DUPLICATE_q\ & ( ((!\uut|MasterOutput~0_combout\ & \uut|State.WaitForReadDataY~q\)) # (\uut|State~38_combout\) ) ) # ( !\uut|State.SetDataYReg~DUPLICATE_q\ & ( (!\uut|MasterOutput~0_combout\ & 
-- \uut|State.WaitForReadDataY~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State~38_combout\,
	datac => \uut|ALT_INV_MasterOutput~0_combout\,
	datad => \uut|ALT_INV_State.WaitForReadDataY~q\,
	dataf => \uut|ALT_INV_State.SetDataYReg~DUPLICATE_q\,
	combout => \uut|Selector14~0_combout\);

-- Location: FF_X4_Y3_N13
\uut|State.WaitForReadDataY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector14~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadDataY~q\);

-- Location: LABCELL_X4_Y4_N57
\uut|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector15~0_combout\ = ( \uut|MasterOutput~0_combout\ & ( ((!\uut|State~39_combout\ & \uut|State.ReadDataYReg~q\)) # (\uut|State.WaitForReadDataY~q\) ) ) # ( !\uut|MasterOutput~0_combout\ & ( (!\uut|State~39_combout\ & \uut|State.ReadDataYReg~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State~39_combout\,
	datac => \uut|ALT_INV_State.WaitForReadDataY~q\,
	datad => \uut|ALT_INV_State.ReadDataYReg~q\,
	dataf => \uut|ALT_INV_MasterOutput~0_combout\,
	combout => \uut|Selector15~0_combout\);

-- Location: FF_X4_Y4_N59
\uut|State.ReadDataYReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector15~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.ReadDataYReg~q\);

-- Location: LABCELL_X4_Y4_N42
\uut|Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector6~6_combout\ = ( !\uut|State.ReadDataXReg~q\ & ( (!\uut|State.ReadDataYReg~q\ & (!\uut|State.ReadProductIDReg~q\ & !\uut|State.ReadMotionReg~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.ReadDataYReg~q\,
	datac => \uut|ALT_INV_State.ReadProductIDReg~q\,
	datad => \uut|ALT_INV_State.ReadMotionReg~q\,
	dataf => \uut|ALT_INV_State.ReadDataXReg~q\,
	combout => \uut|Selector6~6_combout\);

-- Location: MLABCELL_X3_Y2_N54
\uut|Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector49~0_combout\ = ( \uut|SysClk~q\ & ( \uut|Equal1~6_combout\ & ( (!\uut|Selector82~1_combout\ & ((!\uut|SysClkEnable~DUPLICATE_q\ & ((!\uut|Sel~DUPLICATE_q\))) # (\uut|SysClkEnable~DUPLICATE_q\ & (!\uut|Equal2~6_combout\)))) ) ) ) # ( 
-- !\uut|SysClk~q\ & ( \uut|Equal1~6_combout\ & ( (!\uut|Selector82~1_combout\ & ((!\uut|Sel~DUPLICATE_q\) # (\uut|SysClkEnable~DUPLICATE_q\))) ) ) ) # ( \uut|SysClk~q\ & ( !\uut|Equal1~6_combout\ & ( (!\uut|Selector82~1_combout\ & ((!\uut|Sel~DUPLICATE_q\) 
-- # (\uut|SysClkEnable~DUPLICATE_q\))) ) ) ) # ( !\uut|SysClk~q\ & ( !\uut|Equal1~6_combout\ & ( (!\uut|Selector82~1_combout\ & ((!\uut|Sel~DUPLICATE_q\) # (\uut|SysClkEnable~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000001100001110000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal2~6_combout\,
	datab => \uut|ALT_INV_SysClkEnable~DUPLICATE_q\,
	datac => \uut|ALT_INV_Selector82~1_combout\,
	datad => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datae => \uut|ALT_INV_SysClk~q\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|Selector49~0_combout\);

-- Location: LABCELL_X4_Y3_N30
\uut|Selector49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector49~1_combout\ = ( \uut|SysClkEnable~q\ & ( \uut|Sel~q\ & ( ((!\uut|WideOr1~combout\) # ((!\uut|Selector6~6_combout\ & !\uut|Selector82~0_combout\))) # (\uut|Selector49~0_combout\) ) ) ) # ( !\uut|SysClkEnable~q\ & ( \uut|Sel~q\ & ( 
-- (!\uut|Selector6~6_combout\) # (\uut|Selector49~0_combout\) ) ) ) # ( \uut|SysClkEnable~q\ & ( !\uut|Sel~q\ & ( ((!\uut|WideOr1~combout\) # ((!\uut|Selector6~6_combout\ & !\uut|Selector82~0_combout\))) # (\uut|Selector49~0_combout\) ) ) ) # ( 
-- !\uut|SysClkEnable~q\ & ( !\uut|Sel~q\ & ( \uut|Selector49~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111000111110101111101011111111111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector6~6_combout\,
	datab => \uut|ALT_INV_Selector82~0_combout\,
	datac => \uut|ALT_INV_Selector49~0_combout\,
	datad => \uut|ALT_INV_WideOr1~combout\,
	datae => \uut|ALT_INV_SysClkEnable~q\,
	dataf => \uut|ALT_INV_Sel~q\,
	combout => \uut|Selector49~1_combout\);

-- Location: FF_X4_Y3_N32
\uut|SysClkEnable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector49~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|SysClkEnable~q\);

-- Location: MLABCELL_X3_Y3_N3
\uut|State~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|State~39_combout\ = ( \uut|Equal1~6_combout\ & ( (\uut|Equal2~6_combout\ & (!\uut|SysClk~q\ & ((!\uut|Sel~DUPLICATE_q\) # (\uut|SysClkEnable~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110001000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_SysClkEnable~q\,
	datab => \uut|ALT_INV_Equal2~6_combout\,
	datac => \uut|ALT_INV_Sel~DUPLICATE_q\,
	datad => \uut|ALT_INV_SysClk~q\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|State~39_combout\);

-- Location: FF_X4_Y3_N52
\uut|State.WaitForReadMotion~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector7~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitForReadMotion~DUPLICATE_q\);

-- Location: LABCELL_X4_Y4_N45
\uut|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector8~0_combout\ = ( \uut|MasterOutput~0_combout\ & ( ((!\uut|State~39_combout\ & \uut|State.ReadMotionReg~q\)) # (\uut|State.WaitForReadMotion~DUPLICATE_q\) ) ) # ( !\uut|MasterOutput~0_combout\ & ( (!\uut|State~39_combout\ & 
-- \uut|State.ReadMotionReg~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State~39_combout\,
	datac => \uut|ALT_INV_State.WaitForReadMotion~DUPLICATE_q\,
	datad => \uut|ALT_INV_State.ReadMotionReg~q\,
	dataf => \uut|ALT_INV_MasterOutput~0_combout\,
	combout => \uut|Selector8~0_combout\);

-- Location: FF_X4_Y4_N47
\uut|State.ReadMotionReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector8~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.ReadMotionReg~q\);

-- Location: LABCELL_X4_Y3_N36
\uut|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector9~0_combout\ = ( \uut|Sel~DUPLICATE_q\ & ( !\uut|SysClk~q\ & ( (\uut|State.ReadMotionReg~q\ & (\uut|Equal1~6_combout\ & (\uut|Equal2~6_combout\ & \uut|SysClkEnable~q\))) ) ) ) # ( !\uut|Sel~DUPLICATE_q\ & ( !\uut|SysClk~q\ & ( 
-- (\uut|State.ReadMotionReg~q\ & (\uut|Equal1~6_combout\ & \uut|Equal2~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State.ReadMotionReg~q\,
	datab => \uut|ALT_INV_Equal1~6_combout\,
	datac => \uut|ALT_INV_Equal2~6_combout\,
	datad => \uut|ALT_INV_SysClkEnable~q\,
	datae => \uut|ALT_INV_Sel~DUPLICATE_q\,
	dataf => \uut|ALT_INV_SysClk~q\,
	combout => \uut|Selector9~0_combout\);

-- Location: FF_X4_Y3_N37
\uut|State.CheckMotionReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector9~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.CheckMotionReg~q\);

-- Location: MLABCELL_X3_Y4_N51
\uut|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector1~0_combout\ = ( \uut|State.WaitAfterReset~q\ & ( \uut|Equal0~6_combout\ & ( (!\GenerateStrobeKHz|oStrobe~q\ & (!\uut|State.Init~q\ & !\uut|State.CheckMotionReg~q\)) ) ) ) # ( !\uut|State.WaitAfterReset~q\ & ( \uut|Equal0~6_combout\ & ( 
-- (\GenerateStrobeKHz|oStrobe~q\ & (!\uut|State.Init~q\ & (!\uut|State.CheckMotionReg~q\ & !\uut|State.DoReset~q\))) ) ) ) # ( \uut|State.WaitAfterReset~q\ & ( !\uut|Equal0~6_combout\ & ( (!\uut|State.Init~q\ & !\uut|State.CheckMotionReg~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000001000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeKHz|ALT_INV_oStrobe~q\,
	datab => \uut|ALT_INV_State.Init~q\,
	datac => \uut|ALT_INV_State.CheckMotionReg~q\,
	datad => \uut|ALT_INV_State.DoReset~q\,
	datae => \uut|ALT_INV_State.WaitAfterReset~q\,
	dataf => \uut|ALT_INV_Equal0~6_combout\,
	combout => \uut|Selector1~0_combout\);

-- Location: FF_X3_Y4_N52
\uut|State.WaitAfterReset~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector1~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.WaitAfterReset~DUPLICATE_q\);

-- Location: LABCELL_X2_Y5_N39
\uut|ResetCnt[30]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ResetCnt[30]~0_combout\ = ( \uut|State.DoReset~q\ & ( \GenerateStrobeKHz|oStrobe~q\ & ( \uut|State.WaitAfterReset~DUPLICATE_q\ ) ) ) # ( !\uut|State.DoReset~q\ & ( \GenerateStrobeKHz|oStrobe~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_State.WaitAfterReset~DUPLICATE_q\,
	datae => \uut|ALT_INV_State.DoReset~q\,
	dataf => \GenerateStrobeKHz|ALT_INV_oStrobe~q\,
	combout => \uut|ResetCnt[30]~0_combout\);

-- Location: FF_X2_Y6_N1
\uut|ResetCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~37_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(0));

-- Location: LABCELL_X2_Y6_N3
\uut|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~33_sumout\ = SUM(( \uut|ResetCnt\(1) ) + ( GND ) + ( \uut|Add1~38\ ))
-- \uut|Add1~34\ = CARRY(( \uut|ResetCnt\(1) ) + ( GND ) + ( \uut|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(1),
	cin => \uut|Add1~38\,
	sumout => \uut|Add1~33_sumout\,
	cout => \uut|Add1~34\);

-- Location: FF_X2_Y6_N4
\uut|ResetCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~33_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(1));

-- Location: LABCELL_X2_Y6_N6
\uut|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~77_sumout\ = SUM(( \uut|ResetCnt\(2) ) + ( GND ) + ( \uut|Add1~34\ ))
-- \uut|Add1~78\ = CARRY(( \uut|ResetCnt\(2) ) + ( GND ) + ( \uut|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(2),
	cin => \uut|Add1~34\,
	sumout => \uut|Add1~77_sumout\,
	cout => \uut|Add1~78\);

-- Location: FF_X2_Y6_N7
\uut|ResetCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~77_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(2));

-- Location: LABCELL_X2_Y6_N9
\uut|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~73_sumout\ = SUM(( \uut|ResetCnt\(3) ) + ( GND ) + ( \uut|Add1~78\ ))
-- \uut|Add1~74\ = CARRY(( \uut|ResetCnt\(3) ) + ( GND ) + ( \uut|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(3),
	cin => \uut|Add1~78\,
	sumout => \uut|Add1~73_sumout\,
	cout => \uut|Add1~74\);

-- Location: FF_X2_Y6_N10
\uut|ResetCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~73_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(3));

-- Location: LABCELL_X2_Y6_N12
\uut|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~69_sumout\ = SUM(( \uut|ResetCnt\(4) ) + ( GND ) + ( \uut|Add1~74\ ))
-- \uut|Add1~70\ = CARRY(( \uut|ResetCnt\(4) ) + ( GND ) + ( \uut|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(4),
	cin => \uut|Add1~74\,
	sumout => \uut|Add1~69_sumout\,
	cout => \uut|Add1~70\);

-- Location: FF_X2_Y6_N13
\uut|ResetCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~69_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(4));

-- Location: LABCELL_X2_Y6_N15
\uut|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~65_sumout\ = SUM(( \uut|ResetCnt\(5) ) + ( GND ) + ( \uut|Add1~70\ ))
-- \uut|Add1~66\ = CARRY(( \uut|ResetCnt\(5) ) + ( GND ) + ( \uut|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(5),
	cin => \uut|Add1~70\,
	sumout => \uut|Add1~65_sumout\,
	cout => \uut|Add1~66\);

-- Location: FF_X2_Y6_N16
\uut|ResetCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~65_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(5));

-- Location: LABCELL_X2_Y6_N18
\uut|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~61_sumout\ = SUM(( \uut|ResetCnt\(6) ) + ( GND ) + ( \uut|Add1~66\ ))
-- \uut|Add1~62\ = CARRY(( \uut|ResetCnt\(6) ) + ( GND ) + ( \uut|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(6),
	cin => \uut|Add1~66\,
	sumout => \uut|Add1~61_sumout\,
	cout => \uut|Add1~62\);

-- Location: FF_X2_Y6_N19
\uut|ResetCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~61_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(6));

-- Location: LABCELL_X2_Y6_N21
\uut|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~57_sumout\ = SUM(( \uut|ResetCnt\(7) ) + ( GND ) + ( \uut|Add1~62\ ))
-- \uut|Add1~58\ = CARRY(( \uut|ResetCnt\(7) ) + ( GND ) + ( \uut|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(7),
	cin => \uut|Add1~62\,
	sumout => \uut|Add1~57_sumout\,
	cout => \uut|Add1~58\);

-- Location: FF_X2_Y6_N22
\uut|ResetCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~57_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(7));

-- Location: LABCELL_X2_Y6_N24
\uut|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~125_sumout\ = SUM(( \uut|ResetCnt\(8) ) + ( GND ) + ( \uut|Add1~58\ ))
-- \uut|Add1~126\ = CARRY(( \uut|ResetCnt\(8) ) + ( GND ) + ( \uut|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(8),
	cin => \uut|Add1~58\,
	sumout => \uut|Add1~125_sumout\,
	cout => \uut|Add1~126\);

-- Location: FF_X2_Y6_N25
\uut|ResetCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~125_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(8));

-- Location: LABCELL_X2_Y6_N27
\uut|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~121_sumout\ = SUM(( \uut|ResetCnt\(9) ) + ( GND ) + ( \uut|Add1~126\ ))
-- \uut|Add1~122\ = CARRY(( \uut|ResetCnt\(9) ) + ( GND ) + ( \uut|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(9),
	cin => \uut|Add1~126\,
	sumout => \uut|Add1~121_sumout\,
	cout => \uut|Add1~122\);

-- Location: FF_X2_Y6_N28
\uut|ResetCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~121_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(9));

-- Location: LABCELL_X2_Y6_N30
\uut|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~117_sumout\ = SUM(( \uut|ResetCnt\(10) ) + ( GND ) + ( \uut|Add1~122\ ))
-- \uut|Add1~118\ = CARRY(( \uut|ResetCnt\(10) ) + ( GND ) + ( \uut|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(10),
	cin => \uut|Add1~122\,
	sumout => \uut|Add1~117_sumout\,
	cout => \uut|Add1~118\);

-- Location: FF_X2_Y6_N31
\uut|ResetCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~117_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(10));

-- Location: LABCELL_X2_Y6_N33
\uut|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~113_sumout\ = SUM(( \uut|ResetCnt\(11) ) + ( GND ) + ( \uut|Add1~118\ ))
-- \uut|Add1~114\ = CARRY(( \uut|ResetCnt\(11) ) + ( GND ) + ( \uut|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(11),
	cin => \uut|Add1~118\,
	sumout => \uut|Add1~113_sumout\,
	cout => \uut|Add1~114\);

-- Location: FF_X2_Y6_N34
\uut|ResetCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~113_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(11));

-- Location: LABCELL_X2_Y6_N36
\uut|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~109_sumout\ = SUM(( \uut|ResetCnt\(12) ) + ( GND ) + ( \uut|Add1~114\ ))
-- \uut|Add1~110\ = CARRY(( \uut|ResetCnt\(12) ) + ( GND ) + ( \uut|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(12),
	cin => \uut|Add1~114\,
	sumout => \uut|Add1~109_sumout\,
	cout => \uut|Add1~110\);

-- Location: FF_X2_Y6_N37
\uut|ResetCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~109_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(12));

-- Location: LABCELL_X2_Y6_N39
\uut|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~105_sumout\ = SUM(( \uut|ResetCnt\(13) ) + ( GND ) + ( \uut|Add1~110\ ))
-- \uut|Add1~106\ = CARRY(( \uut|ResetCnt\(13) ) + ( GND ) + ( \uut|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(13),
	cin => \uut|Add1~110\,
	sumout => \uut|Add1~105_sumout\,
	cout => \uut|Add1~106\);

-- Location: FF_X2_Y6_N40
\uut|ResetCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~105_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(13));

-- Location: LABCELL_X2_Y6_N42
\uut|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~101_sumout\ = SUM(( \uut|ResetCnt\(14) ) + ( GND ) + ( \uut|Add1~106\ ))
-- \uut|Add1~102\ = CARRY(( \uut|ResetCnt\(14) ) + ( GND ) + ( \uut|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(14),
	cin => \uut|Add1~106\,
	sumout => \uut|Add1~101_sumout\,
	cout => \uut|Add1~102\);

-- Location: FF_X2_Y6_N43
\uut|ResetCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~101_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(14));

-- Location: LABCELL_X2_Y6_N45
\uut|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~97_sumout\ = SUM(( \uut|ResetCnt\(15) ) + ( GND ) + ( \uut|Add1~102\ ))
-- \uut|Add1~98\ = CARRY(( \uut|ResetCnt\(15) ) + ( GND ) + ( \uut|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(15),
	cin => \uut|Add1~102\,
	sumout => \uut|Add1~97_sumout\,
	cout => \uut|Add1~98\);

-- Location: FF_X2_Y6_N46
\uut|ResetCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~97_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(15));

-- Location: LABCELL_X2_Y6_N48
\uut|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~93_sumout\ = SUM(( \uut|ResetCnt\(16) ) + ( GND ) + ( \uut|Add1~98\ ))
-- \uut|Add1~94\ = CARRY(( \uut|ResetCnt\(16) ) + ( GND ) + ( \uut|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(16),
	cin => \uut|Add1~98\,
	sumout => \uut|Add1~93_sumout\,
	cout => \uut|Add1~94\);

-- Location: FF_X2_Y6_N49
\uut|ResetCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~93_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(16));

-- Location: LABCELL_X2_Y6_N51
\uut|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~89_sumout\ = SUM(( \uut|ResetCnt\(17) ) + ( GND ) + ( \uut|Add1~94\ ))
-- \uut|Add1~90\ = CARRY(( \uut|ResetCnt\(17) ) + ( GND ) + ( \uut|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(17),
	cin => \uut|Add1~94\,
	sumout => \uut|Add1~89_sumout\,
	cout => \uut|Add1~90\);

-- Location: FF_X2_Y6_N52
\uut|ResetCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~89_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(17));

-- Location: LABCELL_X2_Y6_N54
\uut|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~85_sumout\ = SUM(( \uut|ResetCnt\(18) ) + ( GND ) + ( \uut|Add1~90\ ))
-- \uut|Add1~86\ = CARRY(( \uut|ResetCnt\(18) ) + ( GND ) + ( \uut|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(18),
	cin => \uut|Add1~90\,
	sumout => \uut|Add1~85_sumout\,
	cout => \uut|Add1~86\);

-- Location: FF_X2_Y6_N55
\uut|ResetCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~85_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(18));

-- Location: LABCELL_X2_Y6_N57
\uut|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~5_sumout\ = SUM(( \uut|ResetCnt\(19) ) + ( GND ) + ( \uut|Add1~86\ ))
-- \uut|Add1~6\ = CARRY(( \uut|ResetCnt\(19) ) + ( GND ) + ( \uut|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(19),
	cin => \uut|Add1~86\,
	sumout => \uut|Add1~5_sumout\,
	cout => \uut|Add1~6\);

-- Location: FF_X2_Y6_N58
\uut|ResetCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~5_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(19));

-- Location: LABCELL_X2_Y5_N0
\uut|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~1_sumout\ = SUM(( \uut|ResetCnt\(20) ) + ( GND ) + ( \uut|Add1~6\ ))
-- \uut|Add1~2\ = CARRY(( \uut|ResetCnt\(20) ) + ( GND ) + ( \uut|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(20),
	cin => \uut|Add1~6\,
	sumout => \uut|Add1~1_sumout\,
	cout => \uut|Add1~2\);

-- Location: FF_X2_Y5_N1
\uut|ResetCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~1_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(20));

-- Location: LABCELL_X2_Y5_N3
\uut|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~29_sumout\ = SUM(( \uut|ResetCnt\(21) ) + ( GND ) + ( \uut|Add1~2\ ))
-- \uut|Add1~30\ = CARRY(( \uut|ResetCnt\(21) ) + ( GND ) + ( \uut|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(21),
	cin => \uut|Add1~2\,
	sumout => \uut|Add1~29_sumout\,
	cout => \uut|Add1~30\);

-- Location: FF_X2_Y5_N5
\uut|ResetCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~29_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(21));

-- Location: LABCELL_X2_Y5_N6
\uut|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~25_sumout\ = SUM(( \uut|ResetCnt\(22) ) + ( GND ) + ( \uut|Add1~30\ ))
-- \uut|Add1~26\ = CARRY(( \uut|ResetCnt\(22) ) + ( GND ) + ( \uut|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(22),
	cin => \uut|Add1~30\,
	sumout => \uut|Add1~25_sumout\,
	cout => \uut|Add1~26\);

-- Location: FF_X2_Y5_N7
\uut|ResetCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~25_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(22));

-- Location: LABCELL_X2_Y5_N9
\uut|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~21_sumout\ = SUM(( \uut|ResetCnt\(23) ) + ( GND ) + ( \uut|Add1~26\ ))
-- \uut|Add1~22\ = CARRY(( \uut|ResetCnt\(23) ) + ( GND ) + ( \uut|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(23),
	cin => \uut|Add1~26\,
	sumout => \uut|Add1~21_sumout\,
	cout => \uut|Add1~22\);

-- Location: FF_X2_Y5_N11
\uut|ResetCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~21_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(23));

-- Location: LABCELL_X2_Y5_N12
\uut|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~17_sumout\ = SUM(( \uut|ResetCnt\(24) ) + ( GND ) + ( \uut|Add1~22\ ))
-- \uut|Add1~18\ = CARRY(( \uut|ResetCnt\(24) ) + ( GND ) + ( \uut|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(24),
	cin => \uut|Add1~22\,
	sumout => \uut|Add1~17_sumout\,
	cout => \uut|Add1~18\);

-- Location: FF_X2_Y5_N14
\uut|ResetCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~17_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(24));

-- Location: LABCELL_X2_Y5_N15
\uut|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~13_sumout\ = SUM(( \uut|ResetCnt\(25) ) + ( GND ) + ( \uut|Add1~18\ ))
-- \uut|Add1~14\ = CARRY(( \uut|ResetCnt\(25) ) + ( GND ) + ( \uut|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(25),
	cin => \uut|Add1~18\,
	sumout => \uut|Add1~13_sumout\,
	cout => \uut|Add1~14\);

-- Location: FF_X2_Y5_N17
\uut|ResetCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~13_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(25));

-- Location: LABCELL_X2_Y5_N18
\uut|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~9_sumout\ = SUM(( \uut|ResetCnt\(26) ) + ( GND ) + ( \uut|Add1~14\ ))
-- \uut|Add1~10\ = CARRY(( \uut|ResetCnt\(26) ) + ( GND ) + ( \uut|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(26),
	cin => \uut|Add1~14\,
	sumout => \uut|Add1~9_sumout\,
	cout => \uut|Add1~10\);

-- Location: FF_X2_Y5_N20
\uut|ResetCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~9_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(26));

-- Location: LABCELL_X2_Y5_N21
\uut|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~53_sumout\ = SUM(( \uut|ResetCnt\(27) ) + ( GND ) + ( \uut|Add1~10\ ))
-- \uut|Add1~54\ = CARRY(( \uut|ResetCnt\(27) ) + ( GND ) + ( \uut|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(27),
	cin => \uut|Add1~10\,
	sumout => \uut|Add1~53_sumout\,
	cout => \uut|Add1~54\);

-- Location: FF_X2_Y5_N22
\uut|ResetCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~53_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(27));

-- Location: LABCELL_X2_Y5_N24
\uut|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~49_sumout\ = SUM(( \uut|ResetCnt\(28) ) + ( GND ) + ( \uut|Add1~54\ ))
-- \uut|Add1~50\ = CARRY(( \uut|ResetCnt\(28) ) + ( GND ) + ( \uut|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(28),
	cin => \uut|Add1~54\,
	sumout => \uut|Add1~49_sumout\,
	cout => \uut|Add1~50\);

-- Location: FF_X2_Y5_N25
\uut|ResetCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~49_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(28));

-- Location: LABCELL_X2_Y5_N27
\uut|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~45_sumout\ = SUM(( \uut|ResetCnt\(29) ) + ( GND ) + ( \uut|Add1~50\ ))
-- \uut|Add1~46\ = CARRY(( \uut|ResetCnt\(29) ) + ( GND ) + ( \uut|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(29),
	cin => \uut|Add1~50\,
	sumout => \uut|Add1~45_sumout\,
	cout => \uut|Add1~46\);

-- Location: FF_X2_Y5_N29
\uut|ResetCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~45_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(29));

-- Location: LABCELL_X2_Y5_N30
\uut|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~81_sumout\ = SUM(( \uut|ResetCnt\(30) ) + ( GND ) + ( \uut|Add1~46\ ))
-- \uut|Add1~82\ = CARRY(( \uut|ResetCnt\(30) ) + ( GND ) + ( \uut|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(30),
	cin => \uut|Add1~46\,
	sumout => \uut|Add1~81_sumout\,
	cout => \uut|Add1~82\);

-- Location: FF_X2_Y5_N31
\uut|ResetCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~81_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(30));

-- Location: MLABCELL_X3_Y6_N48
\uut|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~4_combout\ = ( !\uut|ResetCnt\(14) & ( !\uut|ResetCnt\(30) & ( (!\uut|ResetCnt\(17) & (!\uut|ResetCnt\(16) & (!\uut|ResetCnt\(15) & !\uut|ResetCnt\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ResetCnt\(17),
	datab => \uut|ALT_INV_ResetCnt\(16),
	datac => \uut|ALT_INV_ResetCnt\(15),
	datad => \uut|ALT_INV_ResetCnt\(18),
	datae => \uut|ALT_INV_ResetCnt\(14),
	dataf => \uut|ALT_INV_ResetCnt\(30),
	combout => \uut|Equal0~4_combout\);

-- Location: MLABCELL_X3_Y6_N30
\uut|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~5_combout\ = ( \uut|ResetCnt\(9) & ( !\uut|ResetCnt\(13) & ( (!\uut|ResetCnt\(10) & (!\uut|ResetCnt\(11) & (!\uut|ResetCnt\(12) & \uut|ResetCnt\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ResetCnt\(10),
	datab => \uut|ALT_INV_ResetCnt\(11),
	datac => \uut|ALT_INV_ResetCnt\(12),
	datad => \uut|ALT_INV_ResetCnt\(8),
	datae => \uut|ALT_INV_ResetCnt\(9),
	dataf => \uut|ALT_INV_ResetCnt\(13),
	combout => \uut|Equal0~5_combout\);

-- Location: MLABCELL_X3_Y6_N18
\uut|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~3_combout\ = ( !\uut|ResetCnt\(2) & ( \uut|ResetCnt\(3) & ( (!\uut|ResetCnt\(4) & (\uut|ResetCnt\(5) & (\uut|ResetCnt\(7) & \uut|ResetCnt\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ResetCnt\(4),
	datab => \uut|ALT_INV_ResetCnt\(5),
	datac => \uut|ALT_INV_ResetCnt\(7),
	datad => \uut|ALT_INV_ResetCnt\(6),
	datae => \uut|ALT_INV_ResetCnt\(2),
	dataf => \uut|ALT_INV_ResetCnt\(3),
	combout => \uut|Equal0~3_combout\);

-- Location: MLABCELL_X3_Y6_N12
\uut|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~0_combout\ = ( !\uut|ResetCnt\(19) & ( !\uut|ResetCnt\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \uut|ALT_INV_ResetCnt\(19),
	dataf => \uut|ALT_INV_ResetCnt\(20),
	combout => \uut|Equal0~0_combout\);

-- Location: LABCELL_X2_Y5_N33
\uut|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Add1~41_sumout\ = SUM(( \uut|ResetCnt\(31) ) + ( GND ) + ( \uut|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uut|ALT_INV_ResetCnt\(31),
	cin => \uut|Add1~82\,
	sumout => \uut|Add1~41_sumout\);

-- Location: FF_X2_Y5_N35
\uut|ResetCnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Add1~41_sumout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	sclr => \uut|Equal0~6_combout\,
	ena => \uut|ResetCnt[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetCnt\(31));

-- Location: LABCELL_X2_Y5_N54
\uut|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~2_combout\ = ( !\uut|ResetCnt\(1) & ( !\uut|ResetCnt\(0) & ( (!\uut|ResetCnt\(29) & (!\uut|ResetCnt\(27) & (!\uut|ResetCnt\(31) & !\uut|ResetCnt\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ResetCnt\(29),
	datab => \uut|ALT_INV_ResetCnt\(27),
	datac => \uut|ALT_INV_ResetCnt\(31),
	datad => \uut|ALT_INV_ResetCnt\(28),
	datae => \uut|ALT_INV_ResetCnt\(1),
	dataf => \uut|ALT_INV_ResetCnt\(0),
	combout => \uut|Equal0~2_combout\);

-- Location: LABCELL_X2_Y5_N48
\uut|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~1_combout\ = ( !\uut|ResetCnt\(21) & ( !\uut|ResetCnt\(25) & ( (!\uut|ResetCnt\(22) & (!\uut|ResetCnt\(23) & (!\uut|ResetCnt\(26) & !\uut|ResetCnt\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ResetCnt\(22),
	datab => \uut|ALT_INV_ResetCnt\(23),
	datac => \uut|ALT_INV_ResetCnt\(26),
	datad => \uut|ALT_INV_ResetCnt\(24),
	datae => \uut|ALT_INV_ResetCnt\(21),
	dataf => \uut|ALT_INV_ResetCnt\(25),
	combout => \uut|Equal0~1_combout\);

-- Location: MLABCELL_X3_Y6_N24
\uut|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Equal0~6_combout\ = ( \uut|Equal0~2_combout\ & ( \uut|Equal0~1_combout\ & ( (\uut|Equal0~4_combout\ & (\uut|Equal0~5_combout\ & (\uut|Equal0~3_combout\ & \uut|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal0~4_combout\,
	datab => \uut|ALT_INV_Equal0~5_combout\,
	datac => \uut|ALT_INV_Equal0~3_combout\,
	datad => \uut|ALT_INV_Equal0~0_combout\,
	datae => \uut|ALT_INV_Equal0~2_combout\,
	dataf => \uut|ALT_INV_Equal0~1_combout\,
	combout => \uut|Equal0~6_combout\);

-- Location: MLABCELL_X3_Y5_N48
\uut|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector2~0_combout\ = ( \uut|State.WaitAfterReset~DUPLICATE_q\ & ( (\uut|Equal0~6_combout\ & \GenerateStrobeKHz|oStrobe~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal0~6_combout\,
	datab => \GenerateStrobeKHz|ALT_INV_oStrobe~q\,
	dataf => \uut|ALT_INV_State.WaitAfterReset~DUPLICATE_q\,
	combout => \uut|Selector2~0_combout\);

-- Location: FF_X3_Y5_N50
\uut|State.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector2~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.Init~q\);

-- Location: LABCELL_X2_Y2_N0
\uut|Selector119~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector119~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(5),
	combout => \uut|Selector119~0_combout\);

-- Location: FF_X2_Y2_N2
\uut|oMotion[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector119~0_combout\,
	asdata => \uut|MotionReg\(5),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(5));

-- Location: MLABCELL_X3_Y4_N24
\uut|Selector116~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector116~0_combout\ = ( \uut|State.OutputAndWaitForWrite~q\ & ( (!\GenerateStrobeMHz|oStrobe~DUPLICATE_q\ & ((\uut|DataValid~q\))) # (\GenerateStrobeMHz|oStrobe~DUPLICATE_q\ & (!\uut|Equal5~1_combout\)) ) ) # ( !\uut|State.OutputAndWaitForWrite~q\ 
-- & ( (!\uut|State.Init~q\ & \uut|DataValid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001000100111011100100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	datab => \uut|ALT_INV_Equal5~1_combout\,
	datac => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_DataValid~q\,
	dataf => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	combout => \uut|Selector116~0_combout\);

-- Location: FF_X3_Y4_N25
\uut|DataValid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector116~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|DataValid~q\);

-- Location: LABCELL_X2_Y2_N3
\uut|Selector120~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector120~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(4),
	combout => \uut|Selector120~0_combout\);

-- Location: FF_X2_Y2_N5
\uut|oMotion[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector120~0_combout\,
	asdata => \uut|MotionReg\(4),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(4));

-- Location: LABCELL_X2_Y2_N54
\uut|Selector117~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector117~0_combout\ = ( \uut|oMotion\(7) & ( !\uut|State.Init~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datae => \uut|ALT_INV_oMotion\(7),
	combout => \uut|Selector117~0_combout\);

-- Location: FF_X2_Y2_N56
\uut|oMotion[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector117~0_combout\,
	asdata => \uut|MotionReg\(7),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(7));

-- Location: LABCELL_X2_Y2_N39
\uut|Selector118~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector118~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(6),
	combout => \uut|Selector118~0_combout\);

-- Location: FF_X2_Y2_N41
\uut|oMotion[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector118~0_combout\,
	asdata => \uut|MotionReg\(6),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(6));

-- Location: LABCELL_X2_Y2_N12
\CheckValidData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CheckValidData~0_combout\ = ( !\uut|oMotion\(6) & ( (!\uut|oMotion\(5) & (\uut|DataValid~q\ & (!\uut|oMotion\(4) & \uut|oMotion\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_oMotion\(5),
	datab => \uut|ALT_INV_DataValid~q\,
	datac => \uut|ALT_INV_oMotion\(4),
	datad => \uut|ALT_INV_oMotion\(7),
	dataf => \uut|ALT_INV_oMotion\(6),
	combout => \CheckValidData~0_combout\);

-- Location: LABCELL_X2_Y2_N42
\uut|Selector122~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector122~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(2),
	combout => \uut|Selector122~0_combout\);

-- Location: FF_X2_Y2_N44
\uut|oMotion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector122~0_combout\,
	asdata => \uut|MotionReg\(2),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(2));

-- Location: LABCELL_X2_Y2_N36
\uut|Selector124~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector124~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(0),
	combout => \uut|Selector124~0_combout\);

-- Location: FF_X2_Y2_N38
\uut|oMotion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector124~0_combout\,
	asdata => \uut|MotionReg\(0),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(0));

-- Location: LABCELL_X2_Y2_N45
\uut|Selector123~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector123~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(1),
	combout => \uut|Selector123~0_combout\);

-- Location: FF_X2_Y2_N47
\uut|oMotion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector123~0_combout\,
	asdata => \uut|MotionReg\(1),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(1));

-- Location: LABCELL_X2_Y2_N15
\uut|Selector121~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector121~0_combout\ = (!\uut|State.Init~q\ & \uut|oMotion\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_State.Init~q\,
	datad => \uut|ALT_INV_oMotion\(3),
	combout => \uut|Selector121~0_combout\);

-- Location: FF_X2_Y2_N16
\uut|oMotion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector121~0_combout\,
	asdata => \uut|MotionReg\(3),
	sload => \uut|State.OutputAndWaitForWrite~q\,
	ena => \inResetAsync~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oMotion\(3));

-- Location: LABCELL_X2_Y2_N6
\CheckValidData~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CheckValidData~1_combout\ = ( \uut|oMotion\(3) ) # ( !\uut|oMotion\(3) & ( (!\CheckValidData~0_combout\) # (((\uut|oMotion\(1)) # (\uut|oMotion\(0))) # (\uut|oMotion\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CheckValidData~0_combout\,
	datab => \uut|ALT_INV_oMotion\(2),
	datac => \uut|ALT_INV_oMotion\(0),
	datad => \uut|ALT_INV_oMotion\(1),
	dataf => \uut|ALT_INV_oMotion\(3),
	combout => \CheckValidData~1_combout\);

-- Location: FF_X2_Y2_N7
\oDataValid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \CheckValidData~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oDataValid~reg0_q\);

-- Location: MLABCELL_X3_Y4_N0
\uut|Selector115~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector115~1_combout\ = ( \uut|Equal3~6_combout\ & ( (\uut|WideOr1~0_combout\ & (\uut|Selector6~6_combout\ & ((\GenerateStrobeMHz|oStrobe~DUPLICATE_q\) # (\uut|WideOr1~1_combout\)))) ) ) # ( !\uut|Equal3~6_combout\ & ( (\uut|WideOr1~1_combout\ & 
-- (\uut|WideOr1~0_combout\ & \uut|Selector6~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_WideOr1~1_combout\,
	datab => \GenerateStrobeMHz|ALT_INV_oStrobe~DUPLICATE_q\,
	datac => \uut|ALT_INV_WideOr1~0_combout\,
	datad => \uut|ALT_INV_Selector6~6_combout\,
	dataf => \uut|ALT_INV_Equal3~6_combout\,
	combout => \uut|Selector115~1_combout\);

-- Location: LABCELL_X1_Y3_N18
\uut|Selector115~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector115~0_combout\ = ( \uut|SlaveClkCounter\(31) & ( \uut|Equal1~6_combout\ & ( (!\uut|RegAndClockGen~0_combout\ & \uut|SysClk~q\) ) ) ) # ( !\uut|SlaveClkCounter\(31) & ( \uut|Equal1~6_combout\ & ( (!\uut|LessThan0~0_combout\ & 
-- (!\uut|RegAndClockGen~0_combout\ & (\uut|SysClk~q\ & \uut|Equal2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_LessThan0~0_combout\,
	datab => \uut|ALT_INV_RegAndClockGen~0_combout\,
	datac => \uut|ALT_INV_SysClk~q\,
	datad => \uut|ALT_INV_Equal2~7_combout\,
	datae => \uut|ALT_INV_SlaveClkCounter\(31),
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|Selector115~0_combout\);

-- Location: LABCELL_X1_Y3_N15
\uut|Selector115~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector115~2_combout\ = ( \uut|Add3~5_sumout\ & ( !\uut|Add3~1_sumout\ & ( (!\uut|Add3~9_sumout\ & ((\uut|State.SetDataXReg~DUPLICATE_q\) # (\uut|State.SetMotionReg~q\))) ) ) ) # ( !\uut|Add3~5_sumout\ & ( !\uut|Add3~1_sumout\ & ( 
-- (!\uut|Add3~9_sumout\ & ((\uut|State.SetDataXReg~DUPLICATE_q\))) # (\uut|Add3~9_sumout\ & (\uut|State.SetDataYReg~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_State.SetDataYReg~q\,
	datab => \uut|ALT_INV_State.SetMotionReg~q\,
	datac => \uut|ALT_INV_State.SetDataXReg~DUPLICATE_q\,
	datad => \uut|ALT_INV_Add3~9_sumout\,
	datae => \uut|ALT_INV_Add3~5_sumout\,
	dataf => \uut|ALT_INV_Add3~1_sumout\,
	combout => \uut|Selector115~2_combout\);

-- Location: LABCELL_X2_Y3_N48
\uut|Selector115~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|Selector115~3_combout\ = ( \uut|MasterOutput~q\ & ( \uut|Selector115~2_combout\ & ( (!\uut|Selector115~1_combout\) # ((!\uut|Selector82~1_combout\) # (\uut|Selector115~0_combout\)) ) ) ) # ( !\uut|MasterOutput~q\ & ( \uut|Selector115~2_combout\ & ( 
-- ((!\uut|Selector82~1_combout\ & \uut|State~38_combout\)) # (\uut|Selector115~0_combout\) ) ) ) # ( \uut|MasterOutput~q\ & ( !\uut|Selector115~2_combout\ & ( (!\uut|Selector115~1_combout\) # ((!\uut|Selector82~1_combout\ & ((!\uut|Selector115~0_combout\) # 
-- (\uut|State~38_combout\)))) ) ) ) # ( !\uut|MasterOutput~q\ & ( !\uut|Selector115~2_combout\ & ( (!\uut|Selector82~1_combout\ & \uut|State~38_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111011101010111000001100111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Selector115~1_combout\,
	datab => \uut|ALT_INV_Selector82~1_combout\,
	datac => \uut|ALT_INV_State~38_combout\,
	datad => \uut|ALT_INV_Selector115~0_combout\,
	datae => \uut|ALT_INV_MasterOutput~q\,
	dataf => \uut|ALT_INV_Selector115~2_combout\,
	combout => \uut|Selector115~3_combout\);

-- Location: FF_X2_Y3_N49
\uut|MasterOutput\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector115~3_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|MasterOutput~q\);

-- Location: MLABCELL_X3_Y5_N51
\uut|ResetSensor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ResetSensor~0_combout\ = ( \uut|State.DoReset~q\ & ( \uut|ResetSensor~q\ ) ) # ( !\uut|State.DoReset~q\ & ( (!\GenerateStrobeKHz|oStrobe~q\ & ((\uut|ResetSensor~q\))) # (\GenerateStrobeKHz|oStrobe~q\ & (\uut|Equal0~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal0~6_combout\,
	datab => \GenerateStrobeKHz|ALT_INV_oStrobe~q\,
	datad => \uut|ALT_INV_ResetSensor~q\,
	dataf => \uut|ALT_INV_State.DoReset~q\,
	combout => \uut|ResetSensor~0_combout\);

-- Location: FF_X3_Y5_N52
\uut|ResetSensor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ResetSensor~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ResetSensor~q\);

-- Location: FF_X4_Y4_N55
\uut|State.ReadProductIDReg~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|Selector5~0_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|State.ReadProductIDReg~DUPLICATE_q\);

-- Location: MLABCELL_X3_Y2_N18
\uut|ProductIDReg[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[2]~0_combout\ = ( \uut|State.ReadProductIDReg~DUPLICATE_q\ & ( (\uut|Equal1~6_combout\ & (!\uut|SysClk~q\ & (\inResetAsync~input_o\ & \uut|MotionReg[2]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Equal1~6_combout\,
	datab => \uut|ALT_INV_SysClk~q\,
	datac => \ALT_INV_inResetAsync~input_o\,
	datad => \uut|ALT_INV_MotionReg[2]~0_combout\,
	dataf => \uut|ALT_INV_State.ReadProductIDReg~DUPLICATE_q\,
	combout => \uut|ProductIDReg[2]~0_combout\);

-- Location: MLABCELL_X3_Y2_N48
\uut|ProductIDReg[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[5]~9_combout\ = ( \uut|ProductIDReg\(5) & ( \uut|Add3~1_sumout\ & ( (!\uut|ProductIDReg[2]~0_combout\) # (((!\uut|Add3~5_sumout\) # (\uut|Add3~9_sumout\)) # (\iMISO~input_o\)) ) ) ) # ( !\uut|ProductIDReg\(5) & ( \uut|Add3~1_sumout\ & ( 
-- (\uut|ProductIDReg[2]~0_combout\ & (\iMISO~input_o\ & (!\uut|Add3~9_sumout\ & \uut|Add3~5_sumout\))) ) ) ) # ( \uut|ProductIDReg\(5) & ( !\uut|Add3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ProductIDReg[2]~0_combout\,
	datab => \ALT_INV_iMISO~input_o\,
	datac => \uut|ALT_INV_Add3~9_sumout\,
	datad => \uut|ALT_INV_Add3~5_sumout\,
	datae => \uut|ALT_INV_ProductIDReg\(5),
	dataf => \uut|ALT_INV_Add3~1_sumout\,
	combout => \uut|ProductIDReg[5]~9_combout\);

-- Location: FF_X3_Y2_N49
\uut|ProductIDReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(5));

-- Location: MLABCELL_X6_Y3_N27
\uut|oProductID[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|oProductID[5]~feeder_combout\ = ( \uut|ProductIDReg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut|ALT_INV_ProductIDReg\(5),
	combout => \uut|oProductID[5]~feeder_combout\);

-- Location: LABCELL_X4_Y2_N12
\uut|oProductID[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|oProductID[0]~0_combout\ = ( \inResetAsync~input_o\ & ( \uut|State.OutputAndWaitForWrite~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inResetAsync~input_o\,
	dataf => \uut|ALT_INV_State.OutputAndWaitForWrite~q\,
	combout => \uut|oProductID[0]~0_combout\);

-- Location: FF_X6_Y3_N29
\uut|oProductID[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|oProductID[5]~feeder_combout\,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(5));

-- Location: LABCELL_X4_Y2_N3
\uut|ProductIDReg[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[0]~5_combout\ = ( \uut|ProductIDReg\(0) & ( \uut|ProductIDReg[2]~0_combout\ & ( (((\uut|Add3~9_sumout\) # (\iMISO~input_o\)) # (\uut|Add3~5_sumout\)) # (\uut|Add3~1_sumout\) ) ) ) # ( !\uut|ProductIDReg\(0) & ( 
-- \uut|ProductIDReg[2]~0_combout\ & ( (!\uut|Add3~1_sumout\ & (!\uut|Add3~5_sumout\ & (\iMISO~input_o\ & !\uut|Add3~9_sumout\))) ) ) ) # ( \uut|ProductIDReg\(0) & ( !\uut|ProductIDReg[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~1_sumout\,
	datab => \uut|ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_iMISO~input_o\,
	datad => \uut|ALT_INV_Add3~9_sumout\,
	datae => \uut|ALT_INV_ProductIDReg\(0),
	dataf => \uut|ALT_INV_ProductIDReg[2]~0_combout\,
	combout => \uut|ProductIDReg[0]~5_combout\);

-- Location: FF_X4_Y2_N4
\uut|ProductIDReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(0));

-- Location: FF_X6_Y5_N58
\uut|oProductID[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \uut|ProductIDReg\(0),
	sload => VCC,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(0));

-- Location: MLABCELL_X3_Y2_N9
\uut|MotionReg[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|MotionReg[2]~13_combout\ = ( \uut|Equal1~6_combout\ & ( (!\uut|SysClk~q\ & \uut|MotionReg[2]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uut|ALT_INV_SysClk~q\,
	datad => \uut|ALT_INV_MotionReg[2]~0_combout\,
	dataf => \uut|ALT_INV_Equal1~6_combout\,
	combout => \uut|MotionReg[2]~13_combout\);

-- Location: MLABCELL_X3_Y2_N6
\uut|ProductIDReg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[6]~7_combout\ = ( \uut|Add3~1_sumout\ & ( (!\uut|Add3~5_sumout\ & \uut|Add3~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_Add3~5_sumout\,
	datad => \uut|ALT_INV_Add3~9_sumout\,
	dataf => \uut|ALT_INV_Add3~1_sumout\,
	combout => \uut|ProductIDReg[6]~7_combout\);

-- Location: MLABCELL_X3_Y2_N33
\uut|ProductIDReg[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[6]~8_combout\ = ( \uut|ProductIDReg\(6) & ( \uut|ProductIDReg[6]~7_combout\ & ( ((!\uut|MotionReg[2]~13_combout\) # ((!\uut|State.ReadProductIDReg~DUPLICATE_q\) # (!\inResetAsync~input_o\))) # (\iMISO~input_o\) ) ) ) # ( 
-- !\uut|ProductIDReg\(6) & ( \uut|ProductIDReg[6]~7_combout\ & ( (\iMISO~input_o\ & (\uut|MotionReg[2]~13_combout\ & (\uut|State.ReadProductIDReg~DUPLICATE_q\ & \inResetAsync~input_o\))) ) ) ) # ( \uut|ProductIDReg\(6) & ( !\uut|ProductIDReg[6]~7_combout\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iMISO~input_o\,
	datab => \uut|ALT_INV_MotionReg[2]~13_combout\,
	datac => \uut|ALT_INV_State.ReadProductIDReg~DUPLICATE_q\,
	datad => \ALT_INV_inResetAsync~input_o\,
	datae => \uut|ALT_INV_ProductIDReg\(6),
	dataf => \uut|ALT_INV_ProductIDReg[6]~7_combout\,
	combout => \uut|ProductIDReg[6]~8_combout\);

-- Location: FF_X3_Y2_N35
\uut|ProductIDReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(6));

-- Location: MLABCELL_X6_Y5_N39
\uut|oProductID[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|oProductID[6]~feeder_combout\ = ( \uut|ProductIDReg\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut|ALT_INV_ProductIDReg\(6),
	combout => \uut|oProductID[6]~feeder_combout\);

-- Location: FF_X6_Y5_N41
\uut|oProductID[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|oProductID[6]~feeder_combout\,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(6));

-- Location: MLABCELL_X3_Y2_N30
\uut|ProductIDReg[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[7]~6_combout\ = ( \uut|ProductIDReg\(7) & ( \uut|MotionReg[7]~6_combout\ & ( ((!\uut|MotionReg[2]~13_combout\) # ((!\inResetAsync~input_o\) # (!\uut|State.ReadProductIDReg~DUPLICATE_q\))) # (\iMISO~input_o\) ) ) ) # ( 
-- !\uut|ProductIDReg\(7) & ( \uut|MotionReg[7]~6_combout\ & ( (\iMISO~input_o\ & (\uut|MotionReg[2]~13_combout\ & (\inResetAsync~input_o\ & \uut|State.ReadProductIDReg~DUPLICATE_q\))) ) ) ) # ( \uut|ProductIDReg\(7) & ( !\uut|MotionReg[7]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_iMISO~input_o\,
	datab => \uut|ALT_INV_MotionReg[2]~13_combout\,
	datac => \ALT_INV_inResetAsync~input_o\,
	datad => \uut|ALT_INV_State.ReadProductIDReg~DUPLICATE_q\,
	datae => \uut|ALT_INV_ProductIDReg\(7),
	dataf => \uut|ALT_INV_MotionReg[7]~6_combout\,
	combout => \uut|ProductIDReg[7]~6_combout\);

-- Location: FF_X3_Y2_N31
\uut|ProductIDReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(7));

-- Location: FF_X6_Y5_N56
\uut|oProductID[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \uut|ProductIDReg\(7),
	sload => VCC,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(7));

-- Location: MLABCELL_X6_Y5_N54
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\uut|oProductID\(7) & ( (!\uut|oProductID\(5) & (\uut|oProductID\(0) & !\uut|oProductID\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000001100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uut|ALT_INV_oProductID\(5),
	datac => \uut|ALT_INV_oProductID\(0),
	datad => \uut|ALT_INV_oProductID\(6),
	datae => \uut|ALT_INV_oProductID\(7),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X4_Y2_N57
\uut|ProductIDReg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[2]~3_combout\ = ( \uut|ProductIDReg\(2) & ( \uut|ProductIDReg[2]~0_combout\ & ( (((!\uut|Add3~9_sumout\) # (\iMISO~input_o\)) # (\uut|Add3~5_sumout\)) # (\uut|Add3~1_sumout\) ) ) ) # ( !\uut|ProductIDReg\(2) & ( 
-- \uut|ProductIDReg[2]~0_combout\ & ( (!\uut|Add3~1_sumout\ & (!\uut|Add3~5_sumout\ & (\iMISO~input_o\ & \uut|Add3~9_sumout\))) ) ) ) # ( \uut|ProductIDReg\(2) & ( !\uut|ProductIDReg[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~1_sumout\,
	datab => \uut|ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_iMISO~input_o\,
	datad => \uut|ALT_INV_Add3~9_sumout\,
	datae => \uut|ALT_INV_ProductIDReg\(2),
	dataf => \uut|ALT_INV_ProductIDReg[2]~0_combout\,
	combout => \uut|ProductIDReg[2]~3_combout\);

-- Location: FF_X4_Y2_N59
\uut|ProductIDReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(2));

-- Location: FF_X4_Y2_N31
\uut|oProductID[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \uut|ProductIDReg\(2),
	sload => VCC,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(2));

-- Location: LABCELL_X4_Y2_N42
\uut|ProductIDReg[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[4]~1_combout\ = ( \uut|ProductIDReg\(4) & ( \uut|ProductIDReg[2]~0_combout\ & ( (((!\uut|Add3~1_sumout\) # (\uut|Add3~5_sumout\)) # (\iMISO~input_o\)) # (\uut|Add3~9_sumout\) ) ) ) # ( !\uut|ProductIDReg\(4) & ( 
-- \uut|ProductIDReg[2]~0_combout\ & ( (!\uut|Add3~9_sumout\ & (\iMISO~input_o\ & (\uut|Add3~1_sumout\ & !\uut|Add3~5_sumout\))) ) ) ) # ( \uut|ProductIDReg\(4) & ( !\uut|ProductIDReg[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_iMISO~input_o\,
	datac => \uut|ALT_INV_Add3~1_sumout\,
	datad => \uut|ALT_INV_Add3~5_sumout\,
	datae => \uut|ALT_INV_ProductIDReg\(4),
	dataf => \uut|ALT_INV_ProductIDReg[2]~0_combout\,
	combout => \uut|ProductIDReg[4]~1_combout\);

-- Location: FF_X4_Y2_N44
\uut|ProductIDReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(4));

-- Location: FF_X4_Y2_N40
\uut|oProductID[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	asdata => \uut|ProductIDReg\(4),
	sload => VCC,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(4));

-- Location: LABCELL_X4_Y1_N42
\uut|ProductIDReg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[1]~4_combout\ = ( \uut|ProductIDReg\(1) & ( \uut|ProductIDReg[2]~0_combout\ & ( (((!\uut|Add3~5_sumout\) # (\iMISO~input_o\)) # (\uut|Add3~9_sumout\)) # (\uut|Add3~1_sumout\) ) ) ) # ( !\uut|ProductIDReg\(1) & ( 
-- \uut|ProductIDReg[2]~0_combout\ & ( (!\uut|Add3~1_sumout\ & (!\uut|Add3~9_sumout\ & (\uut|Add3~5_sumout\ & \iMISO~input_o\))) ) ) ) # ( \uut|ProductIDReg\(1) & ( !\uut|ProductIDReg[2]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_Add3~1_sumout\,
	datab => \uut|ALT_INV_Add3~9_sumout\,
	datac => \uut|ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_iMISO~input_o\,
	datae => \uut|ALT_INV_ProductIDReg\(1),
	dataf => \uut|ALT_INV_ProductIDReg[2]~0_combout\,
	combout => \uut|ProductIDReg[1]~4_combout\);

-- Location: FF_X4_Y1_N43
\uut|ProductIDReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(1));

-- Location: MLABCELL_X6_Y5_N27
\uut|oProductID[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|oProductID[1]~feeder_combout\ = ( \uut|ProductIDReg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut|ALT_INV_ProductIDReg\(1),
	combout => \uut|oProductID[1]~feeder_combout\);

-- Location: FF_X6_Y5_N29
\uut|oProductID[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|oProductID[1]~feeder_combout\,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(1));

-- Location: MLABCELL_X3_Y2_N36
\uut|ProductIDReg[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|ProductIDReg[3]~2_combout\ = ( \uut|ProductIDReg\(3) & ( \uut|Add3~1_sumout\ ) ) # ( \uut|ProductIDReg\(3) & ( !\uut|Add3~1_sumout\ & ( (!\uut|ProductIDReg[2]~0_combout\) # (((!\uut|Add3~9_sumout\) # (!\uut|Add3~5_sumout\)) # (\iMISO~input_o\)) ) ) ) 
-- # ( !\uut|ProductIDReg\(3) & ( !\uut|Add3~1_sumout\ & ( (\uut|ProductIDReg[2]~0_combout\ & (\iMISO~input_o\ & (\uut|Add3~9_sumout\ & \uut|Add3~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111101100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uut|ALT_INV_ProductIDReg[2]~0_combout\,
	datab => \ALT_INV_iMISO~input_o\,
	datac => \uut|ALT_INV_Add3~9_sumout\,
	datad => \uut|ALT_INV_Add3~5_sumout\,
	datae => \uut|ALT_INV_ProductIDReg\(3),
	dataf => \uut|ALT_INV_Add3~1_sumout\,
	combout => \uut|ProductIDReg[3]~2_combout\);

-- Location: FF_X3_Y2_N37
\uut|ProductIDReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|ProductIDReg[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|ProductIDReg\(3));

-- Location: MLABCELL_X6_Y5_N30
\uut|oProductID[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uut|oProductID[3]~feeder_combout\ = ( \uut|ProductIDReg\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uut|ALT_INV_ProductIDReg\(3),
	combout => \uut|oProductID[3]~feeder_combout\);

-- Location: FF_X6_Y5_N31
\uut|oProductID[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \uut|oProductID[3]~feeder_combout\,
	ena => \uut|oProductID[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|oProductID\(3));

-- Location: MLABCELL_X6_Y5_N12
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \uut|oProductID\(1) & ( !\uut|oProductID\(3) & ( (\Equal1~0_combout\ & (\uut|oProductID\(2) & \uut|oProductID\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \uut|ALT_INV_oProductID\(2),
	datac => \uut|ALT_INV_oProductID\(4),
	datae => \uut|ALT_INV_oProductID\(1),
	dataf => \uut|ALT_INV_oProductID\(3),
	combout => \Equal1~1_combout\);

-- Location: FF_X6_Y5_N13
\oInitializedLED~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iClk~inputCLKENA0_outclk\,
	d => \Equal1~1_combout\,
	clrn => \inResetAsync~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oInitializedLED~reg0_q\);

-- Location: LABCELL_X23_Y48_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


