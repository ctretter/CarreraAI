-------------------------------------------------------------------------------
-- Title      : PLL Instantiation
-------------------------------------------------------------------------------
-- File       : tbExample2-Bhv-ea.vhd
-- Author     : Michael Bierig
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: IP core instantiation of AlteraPLL in common design
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Global.all;

--------------------------------------------------------------------------------

entity tbExample2 is
end entity tbExample2;

--------------------------------------------------------------------------------

architecture Bhv of tbExample2 is

  constant cClkFrequency               : natural := 24E6;
  constant cIsLowPercentageOfDutyCycle : natural := 65;
  constant cInResetDuration            : time    := 200 ns;

  -- component ports
  signal Clk                    : std_ulogic;
  signal ResetAsync             : std_ulogic;
  signal SEG0, SEG1				: std_ulogic;

begin  -- architecture Bhv

  DUT : entity work.Example2
    port map (
      iClk          	=> Clk,
      iResetAsync  		=> ResetAsync,
      oLED_Ack         	=> SEG0,
      oLED_Locked     	=> SEG1);


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
      onResetAsync => ResetAsync);

end architecture Bhv;
