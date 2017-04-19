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

entity tbRoundSensor is
end entity tbRoundSensor;

architecture Bhv of tbRoundSensor is
  constant cClkFrequency               : natural := 50E6;  -- system clock frequency
  constant cIsLowPercentageOfDutyCycle : natural := 50;
  constant cInResetDuration            : time    := 140 ns;
  constant cSampleTime                 : time    := 1 us;  -- sampling time for counter
  constant cValidSamples               : natural := 50;

  signal Clk         : std_ulogic := '0';  -- system clock
  signal nResetAsync : std_ulogic := '0';  -- system reset

  signal sensor : std_ulogic := '0';  -- wheel sensor signal

  signal NewRound  : std_ulogic;  -- output 
  signal NewRoundToggle  : std_ulogic;  -- output   
  signal set       : std_ulogic := '0';
  
begin  -- architecture Bhv


  DUT : entity work.RoundSensor(RTL)
    generic map (
      gClkFrequency  => cClkFrequency,
      gSampleTime  => cSampleTime,  -- sampling periode time for sensor pulses
	  gValidSamples => cValidSamples
      )
    port map (
      iClk          => Clk,             -- system clock
      inResetAsync  => nResetAsync,     -- system reset (asynchron)
      iSensor       => sensor,     -- sensor signal (pulses)
	  iResetSensor  => set,             -- set command	  
	  oNewRound     => NewRound,        -- set value
	  oNewRoundToggle=> NewRoundToggle  -- new round toggle
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
	wait for 5 us;
	--set <= cInactivated;
	wait for 5 us;
	
    for i in 0 to 10 loop
      sensor <= not sensor; 
	  wait for 500 us;
	  sensor <= not sensor; 
	  wait for 200 us;
    end loop;
	
	wait for 5 us;
	set <= cActivated;
	wait for 5 us;
	--set <= cInactivated;
	wait for 5 us;
	
	for i in 0 to 20 loop
		for j in 0 to 8 loop -- flicker noise
			sensor <= not sensor;
			wait for 2 us;
		end loop;
		wait for 100 us;
    end loop;
	
    wait;

  end process;

end architecture Bhv;
