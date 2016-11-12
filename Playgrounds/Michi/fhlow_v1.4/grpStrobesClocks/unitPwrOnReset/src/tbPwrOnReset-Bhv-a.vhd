-------------------------------------------------------------------------------
-- Title      : Testbench for design "PwrOnReset"
-- Project    : 
-------------------------------------------------------------------------------
-- $Id: tbPwrOnReset-Bhv-a.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------

architecture Bhv of tbPwrOnReset is

  -- component generics
  constant cInResetDuration : time := 140 ns;

  -- component ports
  signal ResetAsync : std_ulogic := cnActivated;

begin  -- architecture Bhv

  -- component instantiation
  DUT: entity work.PwrOnReset
    generic map (
      gInResetDuration => cInResetDuration)
    port map (
      onResetAsync => ResetAsync);

end architecture Bhv;
