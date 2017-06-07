-------------------------------------------------------------------------------
-- Title      : Testbench for design "CarreraProtocol"
-- Project    : SoCGhostCar
-------------------------------------------------------------------------------
-- Author     : Lukas Rappel, Hagenberg/A, Copyright (c) 2015
-- RevCtrl    : $Id: tbCarreraProtocol.vhd 97 2015-12-27 14:16:19Z s1510567014 $
-- UsrNames   : RaL - Lukas Rappel
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_STD.all;
use work.Global.all;

entity tbCarreraProtocol is
end entity tbCarreraProtocol;

architecture Bhv of tbCarreraProtocol is
  constant cClkFrequency               : natural := 50E6;  -- system clock frequency
  constant cBaudrate                   : natural := 1E4;
  constant cIsLowPercentageOfDutyCycle : natural := 50;
  constant cInResetDuration            : time    := 140 ns;
  constant cBitWidth                   : natural := 16;
  constant cIDWidth                    : natural := 32;
  
-- signal time constants
  constant cPeriod        : time := 1 sec / cBaudrate;
  constant cHalfPeriod    : time := 1 sec / cBaudrate / 2;
  constant cQuarterPeriod : time := 1 sec / cBaudrate / 4;
-- system signals
  signal Clk         : std_ulogic := '0';  -- system clock
  signal nResetAsync : std_ulogic := '0';  -- system reset
-- input signal: data signal (information on carrera rail)
  signal DataPin : std_ulogic := '1';   -- data signal (high on idle)
-- output signals from CarreraProtocol
  signal ErrorPin   : std_ulogic := '0'; -- error flag
  signal NewDataPin : std_ulogic := '0'; -- new data available (1 cycle high)
  signal BitLen     : natural range 0 to cBitWidth-1; -- Bit Length of new telegram
  signal ID         : unsigned (cIDWidth-1 downto 0); -- telegram id (counter)
  signal Output     : std_ulogic_vector(cBitWidth-1 downto 0);  -- data  (information)  
  constant cTelegram1Len : natural := 9;
  signal Telegram1 : std_ulogic_vector(cTelegram1Len-1 downto 0) := "000000000";
  constant cTelegram2Len : natural := 8;
  signal Telegram2 : std_ulogic_vector(cTelegram2Len-1 downto 0) := "11111111";
  constant cTelegram3Len : natural := 12;
  signal Telegram3 : std_ulogic_vector(cTelegram3Len-1 downto 0) := "010100110010";
  
begin  -- architecture Bhv

  DUT : entity work.CarreraProtocol(RTL)
    generic map (
      gClkFrequency => cClkFrequency,
      gBaudrate     => cBaudrate,
      gDataWidth    => cBitWidth,
	  gIDWidth      => cIDWidth
      )
    port map (
      iClk         => Clk,              -- system clock
      inResetAsync => nResetAsync,      -- system reset (asynchron)
      iDataAsync   => DataPin,          -- data signal (pulses)
	  oID          => ID,               -- telegram id (counter)
      oNewData     => NewDataPin,       -- new data received (flag) 
      oError       => ErrorPin,         -- error flag
      oBitLen      => BitLen,           -- number of received bits
      oData        => Output            -- received data
      );

  
  ClkGen : entity work.Oscillator
    generic map (
      gFrequency                  => cClkFrequency,
      gIsLowPercentageOfDutyCycle => cIsLowPercentageOfDutyCycle)
    port map (
      oRectangleWave => Clk);

  PwrOnResetSource : entity work.PwrOnReset
    generic map (
      gInResetDuration => cInResetDuration)
    port map (
      onResetAsync => nResetAsync);

  Stimuli : process

  begin
    wait for cInResetDuration;

    wait for 50 us;
	
------ invalid telegram #2
    -- start bit (low)
    DataPin <= cInactivated;
    wait for 1us; --short spike

    DataPin <= cActivated;
    wait for 1us; --short spike
    --- pause time
    wait for 20 us;
	
	
------ invalid telegram #2
    -- start bit (low)
    DataPin <= cInactivated;
    wait for 2*cPeriod;

    DataPin <= cActivated;
    wait for cPeriod;
    --- pause time
    wait for 20 us;

------ first telegram	
    -- start bit (low)
    DataPin <= cInactivated;
    wait until Clk'event and Clk = '0';
	wait for cQuarterPeriod;
	
	for i in 0 to cTelegram1Len-1 loop
		DataPin <= Telegram1(i);
		wait for cQuarterPeriod;
		DataPin <= not Telegram1(i);
		wait for cQuarterPeriod;
	end loop;
    DataPin <= cActivated;
	wait for cPeriod;
	for i in 0 to cTelegram1Len-1 loop	
		assert (Output(i) = Telegram1(i)) report "data missmatch" severity failure;
	end loop;
------second telegram	
    -- start bit (low)
    DataPin <= cInactivated;
    wait until Clk'event and Clk = '0';
	wait for cQuarterPeriod;
	
	for i in 0 to cTelegram2Len-1 loop
		DataPin <= Telegram2(i);
		wait for cQuarterPeriod;
		DataPin <= not Telegram2(i);
		wait for cQuarterPeriod;
	end loop;
    DataPin <= cActivated;

	wait for cPeriod;
		for i in 0 to cTelegram2Len-1 loop	
		assert (Output(i) = Telegram2(i)) report "data missmatch" severity failure;
	end loop;
------third telegram	
    -- start bit (low)
    DataPin <= cInactivated;
    wait until Clk'event and Clk = '0';
	wait for cQuarterPeriod;
	
	for i in 0 to cTelegram3Len-1 loop
		DataPin <= Telegram3(i);
		wait for cQuarterPeriod;
		DataPin <= not Telegram3(i);
		wait for cQuarterPeriod;
	end loop;
    DataPin <= cActivated;

	wait for cPeriod;
		for i in 0 to cTelegram3Len-1 loop	
		assert (Output(i) = Telegram3(i)) report "data missmatch" severity failure;
	end loop;
    wait;

  end process;

end architecture Bhv;
