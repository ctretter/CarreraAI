-------------------------------------------------------------------------------
-- Title      : Testbench for design "PWM Motor Control"
-- Project    : SoCGhostCar
-------------------------------------------------------------------------------
-- Author     : Lukas Rappel, Hagenberg/A, Copyright (c) 2003-2005
-- RevCtrl    : $Id: tbRectGen-Bhv-ea.vhd 196 2012-09-18 22:01:38Z mroland $
-- UsrNames   : RaL - Lukas Rappel
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_STD.all;
use work.Global.all;

entity tbWheelEncoderTimer is
end entity tbWheelEncoderTimer;

architecture Bhv of tbWheelEncoderTimer is
  constant cClkFrequency               : natural := 50E6;  -- system clock frequency
  constant cIsLowPercentageOfDutyCycle : natural := 50;
  constant cInResetDuration            : time    := 140 ns;
  constant cTicks               : time    := 1 us;  -- sampling time for counter
  constant cTimeOut             : time    := 4 ms;  -- sampling time for counter
  constant cValidSamples        : natural := 20;

  signal Clk         : std_ulogic := '0';  -- system clock
  signal nResetAsync : std_ulogic := '0';  -- system reset

  signal wheelsensor : std_ulogic := '0';  -- wheel sensor signal

  signal Output    : unsigned(31 downto 0);  -- output 
  signal CumOutput : unsigned(31 downto 0);  -- Cumulated Output
  signal setvalue  : unsigned(31 downto 0);  -- Cumulated Output
  signal set       : std_ulogic := '0';
  
begin  -- architecture Bhv


  DUT : entity work.WheelEncoderTimer(RTL)
    generic map (
      gClkFrequency  => cClkFrequency,
      gTimerResolution  => cTicks,  -- sampling periode time for sensor pulses
      gTimeOut => cTimeOut,   -- debounce periode for sensor signal
	  gValidSamples => cValidSamples
      )
    port map (
      iClk          => Clk,             -- system clock
      inResetAsync  => nResetAsync,     -- system reset (asynchron)
      iSensor       => wheelsensor,     -- sensor signal (pulses)
	  iSetPulses    => set,             -- set command	  
	  iValue        => setvalue,        -- set value
      oCountPSample => Output,  -- counter value of last sampling periode (current speed value)
	  oPulses       => CumOutput
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
    -- debounce test

	wait for 5 us;
	set <= cActivated;
	setvalue <= to_unsigned(100,32);
	wait for 5 us;
	set <= cInactivated;
	wait for 5 us;
	
    for i in 0 to 50 loop
      wheelsensor <= not Wheelsensor; 
	  wait for 300 us;
    end loop;
	
	wait for 5 us;
	set <= cActivated;
	setvalue <= to_unsigned(0,32);
	wait for 5 us;
	set <= cInactivated;
	wait for 5 us;
	
	for i in 0 to 50 loop
		for j in 0 to 8 loop
			wheelsensor <= not Wheelsensor;
			wait for 2 us;
		end loop;
		wait for 100 us;
    end loop;

    for i in 0 to 50 loop
      wheelsensor <= not Wheelsensor;
      wait for cTimeOut;
      wheelsensor <= not Wheelsensor;
      wait for cTimeOut;
    end loop;
	
    wait;

  end process;

end architecture Bhv;
