-------------------------------------------------------------------------------
-- Title      : Power On Reset Generator
-- Project    : 
-------------------------------------------------------------------------------
-- $Id: PwrOnReset-Bhv-a.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
-- For simulation only.
-------------------------------------------------------------------------------

architecture Bhv of PwrOnReset is

begin

  -- Generate the single pulse which starts active from the very beginning.
  -- The pulse will be inactive after the reset duration has elapsed.
  onResetAsync <= cnActivated after 0 ns,
                  cnInactivated after gInResetDuration;

end architecture Bhv;
