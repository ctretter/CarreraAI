-------------------------------------------------------------------------------
-- Title      : Strobe Generator
-- Project    : 
-------------------------------------------------------------------------------
-- $Id: StrobeGen-Rtl-a.vhd 1 2006-03-22 16:38:42Z pfaff $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
-- Description for synthesis.
-------------------------------------------------------------------------------

architecture Rtl of StrobeGen is

  constant cClkCycPerStrobeCyc : natural :=
    gClkFrequency / (1 sec / gStrobeCycleTime);
  constant cClkCounterHighIndex : natural := LogDualis(cClkCycPerStrobeCyc);

  signal ClkCounter : unsigned(cClkCounterHighIndex downto 0);

begin  -- architecture Rtl

  -- Count the number of Clk cycles from strobe pulse to strobe pulse.
  GenStrobe : process (iClk, inResetAsync) is
  begin  -- process GenStrobe

    -- Asynchronous reset
    if inResetAsync = cnActivated then

      ClkCounter <= to_unsigned(0, ClkCounter'length);
      oStrobe <= cInactivated;

    -- Rising clk edge
    elsif iClk'event and iClk = '1' then

      if ClkCounter = cClkCycPerStrobeCyc-1 then
        ClkCounter <= (others => '0');
        oStrobe    <= cActivated;
      else
        ClkCounter <= ClkCounter+1;
        oStrobe    <= cInactivated;
      end if;

    end if;
  end process GenStrobe;

end architecture Rtl;
