-------------------------------------------------------------------------------
-- Title      : Testbench for functions in global project package
-- Project    : Audio Signal Processing
-------------------------------------------------------------------------------
-- $Id: tbGlobal-Bhv-a.vhd 3 2011-09-10 08:35:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------


architecture Bhv of tbGlobal is

begin  -- architecture Bhv

  TickleLogDualis : process is
    type     aIntArray is array (natural range <>) of integer;
    variable LogDualisOf : aIntArray(0 to 100) := (others => 0);
  begin
    for idx in LogDualisOf'range loop
      LogDualisOf(idx) := LogDualis(idx);
    end loop;  -- idx
    wait;
  end process TickleLogDualis;

end architecture Bhv;

