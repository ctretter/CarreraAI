-------------------------------------------------------------------------------
-- Title      : Testbench for design "Oscillator"
-- Project    : IP
-------------------------------------------------------------------------------
-- $Id: tbOscillator-Bhv-a.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------

architecture Bhv of tbOscillator is

  -- component generics
  constant cFrequency                : natural := 48E6;
  constant cIsLowPercentageOfDutyCycle : natural := 62;

  -- component ports
  signal RectangleWave : std_ulogic;

begin  -- architecture Behavioral

  -- component instantiation
  DUT: entity work.Oscillator
    generic map (
      gFrequency                => cFrequency,
      gIsLowPercentageOfDutyCycle => cIsLowPercentageOfDutyCycle)
    port map (
      oRectangleWave => RectangleWave);

end architecture Bhv;

