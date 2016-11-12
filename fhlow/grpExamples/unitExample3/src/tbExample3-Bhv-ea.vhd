-------------------------------------------------------------------------------
-- Title      : Avalon SPI Instantiation
-------------------------------------------------------------------------------
-- File       : tbExample3-Bhv-ea.vhd
-- Author     : Michael Bierig
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: IP core instantiation of Altera Avalon SPI in common design
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Global.all;

--------------------------------------------------------------------------------

entity tbExample3 is
end entity tbExample3;

--------------------------------------------------------------------------------

architecture Bhv of tbExample3 is

  constant cClkFrequency               : natural := 24E6;
  constant cIsLowPercentageOfDutyCycle : natural := 65;
  constant cInResetDuration            : time    := 200 ns;

  -- component ports
  signal Clk                    : std_ulogic;
  signal ResetAsync             : std_ulogic;
  signal SEG0, SEG1				: std_ulogic;

begin  -- architecture Bhv

  DUT : entity work.Example3
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
