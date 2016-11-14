-------------------------------------------------------------------------------
-- Created	   :	11.11.2016
-- Author	   :	Michael Bierig
-- File        :	tbYawInterpreter-Bhv-ea.vhd
-- Description : 	testbench for module YawInterpreter
-------------------------------------------------------------------------------
-- Latest update:	11.11.2016
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Global.all;

entity tbYawInterpreter is
end entity;


architecture Bhv of tbYawInterpreter is


	-- component constants
	constant cDataWidth		: integer := 16;
	constant cFilterSteps	: integer := 5;
	constant cYawRateLeft	: integer := 99;
	constant cYawRateRight	: integer := -99;
	constant cClkPeriod		: time 	  := 20 ns;		-- 50MHz clock
	
	-- component signals
	signal iClk				: std_ulogic := '0';
	signal iSampleClk		: std_ulogic := '0';
	signal inResetAsync 	: std_ulogic := '0';
	signal iCurrentYawRate	: std_ulogic_vector(cDataWidth-1 downto 0);
	signal oDirection		: std_ulogic_vector(1 downto 0);

	-- component declaration of YawInterpreter
	component YawInterpreter
	generic (
		gDataWidth			: integer := 16;								-- bit width of yaw rate sensor
		gFilterSteps		: integer := 5;									-- steps of filters for calculation
		gYawRateLeft 		: integer := 0;									-- set yaw rate value to pass filter (left)
		gYawRateRight 		: integer := 0									-- set yaw rate value to pass filter (right)
	);
	port (
		iClk 				: in std_ulogic;								-- clk 50MHz
		iSampleClk			: in std_ulogic;								-- clk 10kHz
		inResetAsync		: in std_ulogic;								-- reset
		iCurrentYawRate		: in std_ulogic_vector(gDataWidth-1 downto 0);	-- input for current yaw rate
		oDirection			: out std_ulogic_vector(1 downto 0)				-- output for directon (see constants for directons in implementation)
    );
    end component;

begin
	-- #################################################
	-- Instantiation: Unit Under Test - YawInterpreter
	-- #################################################
	uut : YawInterpreter 
	generic map (
		gDataWidth		=> cDataWidth,
		gFilterSteps	=> cFilterSteps,
		gYawRateLeft	=> cYawRateLeft,
		gYawRateRight	=> cYawRateRight	
	)
	port map (
		iClk			=> iClk,
		iSampleClk		=> iSampleClk,
		inResetAsync 	=> inResetAsync,
		iCurrentYawRate => iCurrentYawRate,
		oDirection		=> oDirection
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
	-- Process : Generate sample clock 	 (10 kHz)
	-- ##########################################
	GenerateSampleClock : process
	begin
		iSampleClk <= '0';
		wait for 100 us - cClkPeriod;
		iSampleClk <= '1';
		wait for cClkPeriod;
	end process;
	
	-- ##########################################
	-- Process : detect directon to see in sim
	-- ##########################################
	Detect_Direction : process  (oDirection)
	begin
	
		-- only detect if reset is disabled
		if (inResetAsync = '1') then
			if (oDirection = "00") then
				report "Error! Invalid direction detected!" severity error;
			elsif (oDirection = "01") then
				report "Left direction detected!" severity note;
			elsif (oDirection = "10") then
				report "Right direction detected!" severity note;
			elsif (oDirection = "11") then
				report "Forward direction detected!" severity note;
			end if;
		end if;
	end process;
	
	-- ##########################################
	-- Process : Test YawInterpreter
	-- ##########################################
	Test_YawInterpreter : process 
	begin
		-- initialize module and fill buffer
		inResetAsync <= '0';
		wait for 100 ns;
		inResetAsync <= '1';
		iCurrentYawRate <= (others => '0');
		wait for 500 us;
		
		-- fill buffer with 100 to test direction -> left
		iCurrentYawRate <= std_ulogic_vector(to_signed(100, cDataWidth));
		wait for 500 us;
		
		-- reset buffer to test direction -> forward
		iCurrentYawRate <= (others => '0');
		wait for 500 us;
		
		-- refill buffer to test direction  -> right
		iCurrentYawRate <= std_ulogic_vector(to_signed(-100, cDataWidth));
		wait for 500 us;
		
		-- change yaw rate to switch direction from right to forward and finally to the left
		iCurrentYawRate <= std_ulogic_vector(to_signed(200, cDataWidth));
		wait for 300 us;
		
		-- refill buffer with zeros
		iCurrentYawRate <= (others => '0');
		wait;
	end process;
	
	
end Bhv;