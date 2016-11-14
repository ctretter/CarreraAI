-------------------------------------------------------------------------------
-- Title      : Testbench for design "Example 1"
-- Project    : Examples
-------------------------------------------------------------------------------
-- Author     : Michael Roland, Hagenberg/A, Copyright (c) 2014
-- RevCtrl    : $Id: tbExample1-Bhv-ea.vhd 356 2014-09-28 18:28:33Z mroland $
-- UsrNames   : mroland - Michael Roland
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Global.all;

--------------------------------------------------------------------------------

entity tbExample1 is
end entity tbExample1;

--------------------------------------------------------------------------------

architecture Bhv of tbExample1 is

  constant cClkFrequency               : natural := 24E6;
  constant cIsLowPercentageOfDutyCycle : natural := 65;
  constant cInResetDuration            : time    := 200 ns;

  -- component ports
  signal Clk                    : std_ulogic;
  signal nResetAsync            : std_ulogic;
  signal SEG0, SEG1, SEG2, SEG3 : std_ulogic_vector(6 downto 0);

begin  -- architecture Bhv

  DUT : entity work.Example1
    port map (
      iClk          => Clk,
      inResetAsync  => nResetAsync,
      oSEG0         => SEG0,
      oSEG1         => SEG1,
      oSEG2         => SEG2,
      oSEG3         => SEG3);


  -- clock generation
  ClkGen : entity work.Oscillator
    generic map (
      gFrequency                  => cClkFrequency,
      gIsLowPercentageOfDutyCycle => cIsLowPercentageOfDutyCycle)
    port map (
      oRectangleWave => Clk);

  -- reset generation
  PwrOnResetSource : entity work.PwrOnReset
    generic map (
      gInResetDuration => cInResetDuration)
    port map (
      onResetAsync => nResetAsync);

end architecture Bhv;
