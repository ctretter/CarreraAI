-------------------------------------------------------------------------------
-- Created	   :	24.01.2017
-- Author	   :	Michael Bierig
-- File        :	tbOpticalSensorCommunicator-Bhv-ea.vhd
-- Description : 	testbench for module OpticalSensorCommunicator
-------------------------------------------------------------------------------
-- Latest update:	27.01.2017
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library std;
use std.textio.all;

use work.Global.all;

entity tbOpticalSensorCommunicator is
end entity;


architecture Bhv of tbOpticalSensorCommunicator is

	-- component constants
	constant cDataWidth			: integer  										:= 8;
	constant cBurstRegWidth 	: integer  										:= 56;
	constant cClkFreq			: integer 										:= 25;
	constant cClkPeriod			: time 	   										:= 20 ns;		-- 50MHz clock
	constant cOneMHzClkPeriod	: time 	   										:= 1 us;		--  1MHz clock
	constant cExampleData		: std_ulogic_vector(cBurstRegWidth-1 downto 0)	:= "00000000101111111111110100000000000000000000000000000000";
	
	-- component signals port map
	signal iClk					: std_ulogic  									:= '0';
	signal inResetAsync 		: std_ulogic  									:= '0';
	signal iMISO				: std_ulogic  									:= '0';
	signal oMOSI				: std_ulogic  									:= '0';
	signal oSelect				: std_ulogic  									:= '0';
	signal oSysClk				: std_ulogic  									:= '0';
	signal oDataValid			: std_ulogic 									:= '0';	
	signal oMotion				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oDataX				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oDataY				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oSQUAL				: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oShutterUpper		: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oShutterLower		: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal oMaximumPixel		: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	
	-- component signals
	signal OneMHzStrobe			: std_ulogic 									:= '0';
	signal DataFromFPGA			: std_ulogic_vector(cDataWidth-1 downto 0) 		:= (others => '0');
	signal DataToFPGA			: std_ulogic_vector(cBurstRegWidth-1 downto 0) 	:= (others => '0');
	
	-- component declaration of OpticalSensorCommunicator
	component OpticalSensorCommunicator
		generic (
			gDataWidth			: integer := cDataWidth;									-- bit width of optical sensor values
			gBurstRegWidth		: integer := cBurstRegWidth;								-- bit width of optical sensor burst register
			gClkDivider			: integer := cClkFreq
		);
		port (
			iClk 				: in std_ulogic;								-- clk 50MHz
			inResetAsync		: in std_ulogic;								-- reset
			iOneMHzStrobe		: in std_ulogic;								-- 1MHz strobe for wait cycles of sensor
			iMISO				: in std_ulogic;								-- MasterInSlaveOut
			oMOSI				: out std_ulogic;								-- MasterOutSlaveIn
			oSelect				: out std_ulogic;								-- select input bit
			oSysClk				: out std_ulogic;								-- slave clk 1 MHz	
			oDataValid			: out std_ulogic;								-- valid bit for further usage in other components
			
			-- sensor data from burst register:
			oMotion				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oDataX				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oDataY				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oSQUAL				: out std_ulogic_vector (gDataWidth-1 downto 0);
			oShutterUpper		: out std_ulogic_vector (gDataWidth-1 downto 0);
			oShutterLower		: out std_ulogic_vector (gDataWidth-1 downto 0);
			oMaximumPixel		: out std_ulogic_vector (gDataWidth-1 downto 0)
		);
    end component;

begin
	-- #################################################
	-- Instantiation: Unit Under Test - OpticalSensorCommunicator
	-- #################################################
	uut : OpticalSensorCommunicator 
	generic map (
		gDataWidth 		=> cDataWidth,
		gBurstRegWidth 	=> cBurstRegWidth,
		gClkDivider		=> cClkFreq
	)
	port map (
		iClk			=> iClk,
		inResetAsync 	=> inResetAsync,
		iOneMHzStrobe	=> OneMHzStrobe,
		iMISO			=> iMISO,
		oMOSI			=> oMOSI,
		oSelect 		=> oSelect,
		oSysClk			=> oSysClk,
		oDataValid		=> oDataValid,
		oMotion			=> oMotion,
		oDataX			=> oDataX,
		oDataY			=> oDataY,
		oSQUAL			=> oSQUAL,
		oShutterUpper	=> oShutterUpper,
		oShutterLower	=> oShutterLower,
		oMaximumPixel	=> oMaximumPixel
	);
	
	-- ##########################################
	-- Process : Generate main clock 	 (50 MHz)
	-- ##########################################
	GenerateClock : process
	begin
		iClk <= '0';
		wait for cClkPeriod/2;
		iClk <= '1';
		wait for cClkPeriod/2;
	end process;
	
	-- ##########################################
	-- Process : Generate sample clock 	 (1 MHz)
	-- ##########################################
	GenerateSampleClock : process
	begin
		OneMHzStrobe <= '1';
		wait for cClkPeriod;
		OneMHzStrobe <= '0';
		wait for cOneMHzClkPeriod-cClkPeriod;
	end process;
	
	
	-- ##########################################
	-- Process : detect directon to see in sim
	-- ##########################################
	Detect_Direction : process  (oDataValid, OneMHzStrobe)
	begin
	
		-- only detect if reset is disabled
		if (rising_edge(OneMHzStrobe)) then
			if (oDataValid = '1') then
				report "New data received ..." severity note;
			end if;
		end if;
	end process;
	
	
	-- ##########################################
	-- Process : Test OpticalSensorCommunicator
	-- ##########################################
	Test_OpticalSensorCommunicator : process
		variable i : integer := 7;
		variable j : integer := 55;
		variable n : integer := 0;
	begin
	
		-- init and reset
		iMISO <= '0';
		inResetAsync <= cnActivated;
		wait for 1 ns;
		inResetAsync <= cnInactivated;

		-- perform read/write ten times
		while (n < 10) loop	
		
			wait until (oSelect = cnActivated and oSysClk = '1');
			
			-- receive data from OpticalSensorCommunicator
			while (i > 0) loop
			
				wait until (oSysClk'event and oSysClk = '1');
				DataFromFPGA(i) <= oMOSI;
				
				i := i - 1;
			end loop;
			i := 7;
			
			-- wait until write to sensor is done
			wait until (oSysClk = '1' and oSelect = cnActivated);
			
			-- wait 75 us
			DataToFPGA <= cExampleData;
			wait for 75 us;
			
			
			wait until (oSelect = cnActivated);
			
			-- send data to OpticalSensorCommunicator
			
			while (j > 0) loop
			
				wait until (iClk'event and iClk = '1' and oSysClk = '0');
				iMISO <= DataToFPGA(j);
				
				j := j - 1;
				wait until (oSysClk = '1');
			end loop;
			j := 55;
			
			-- wait until read from sensor is done
			DataFromFPGA <= (others => '0');
			
			wait until (oSysClk = '1' and oSelect = cnInactivated);
			
			n := n + 1;
		end loop;
		
		report "Finished!" severity error;
		wait;
			
	end process;
	
end Bhv;