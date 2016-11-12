-------------------------------------------------------------------------------
-- Title      : Testbench for design "StrobeGen"
-- Project    : 
-------------------------------------------------------------------------------
-- $Id: tbStrobeGen-Bhv-a.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------
architecture Bhv of tbStrobeGen is

  -- component generics
  constant cClkFrequency               : natural := 48E6;
  constant cIsLowPercentageOfDutyCycle : natural := 65;
  constant cInResetDuration            : time    := 140 ns;
  constant cStrobeFrequency            : natural := 6E6;  -- 6 MHz


  -- component ports
  signal Clk        : std_ulogic;
  signal nResetAsync : std_ulogic;
  signal Strobe     : std_ulogic;

begin  -- architecture Bhv

  -- component instantiation
  DUT : entity work.StrobeGen
    generic map (
      gClkFrequency    => cClkFrequency,
      gStrobeFrequency => cStrobeFrequency)
    port map (
      iClk         => Clk,
      inResetAsync => nResetAsync,
      oStrobe      => Strobe);

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

end architecture Bhv;
