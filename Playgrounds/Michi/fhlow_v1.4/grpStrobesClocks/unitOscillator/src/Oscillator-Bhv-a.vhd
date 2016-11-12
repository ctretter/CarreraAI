-------------------------------------------------------------------------------
-- Title      : See entity description.
-------------------------------------------------------------------------------
-- $Id: Oscillator-Bhv-a.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
-- Description for simulation only.
-------------------------------------------------------------------------------

architecture Bhv of Oscillator is

  constant cCycleTime : time := 1 sec / gFrequency;

begin

  GenWave: process is
  begin

      oRectangleWave <= '0';
      wait for (cCycleTime * gIsLowPercentageOfDutyCycle) / 100;
      oRectangleWave <= '1';
      wait for (cCycleTime * (100-gIsLowPercentageOfDutyCycle)) / 100;

  end process GenWave;


end architecture Bhv;
