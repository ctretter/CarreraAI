-------------------------------------------------------------------------------
-- Title      : Example 1
-- Project    : Examples
-------------------------------------------------------------------------------
-- Author     : Michael Roland, Hagenberg/A, Copyright (c) 2014
-- RevCtrl    : $Id: Example1-Rtl-a.vhd 357 2014-09-28 19:29:56Z mroland $
-- UsrNames   : mroland - Michael Roland
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------

architecture Rtl of Example1 is

  constant cClkFrequency      : natural := 24E6;

  constant cClkCycPerCyc      : natural := cClkFrequency / 1;
  constant cClkCounterBits    : natural := LogDualis(cClkCycPerCyc);

  type aSegDigits is array (natural range <>) of std_ulogic_vector(6 downto 0);
  constant cSeg               : aSegDigits := (
          0 => "1000000",
          1 => "1111001",
          2 => "0100100",
          3 => "0110000",
          4 => "0011001",
          5 => "0010010",
          6 => "0000010",
          7 => "1111000",
          8 => "0000000",
          9 => "0011000",
         10 => "0001000",
         11 => "0000011",
         12 => "1000110",
         13 => "0100001",
         14 => "0000110",
         15 => "0001110");

  subtype aSegCounter is natural range 0 to 9;

  signal ClkCounter           : unsigned(cClkCounterBits-1 downto 0);
  signal Counter0, Counter1   : aSegCounter;

  signal Seg0, Seg1           : std_ulogic_vector(6 downto 0);

begin  -- architecture Rtl

  Count : process (iClk, inResetAsync) is
  begin
    if (inResetAsync = cnActivated) then
      ClkCounter <= (others => '0');
      Counter0 <= 0;
      Counter1 <= 0;
      Seg0 <= "1111111";
      Seg1 <= "1111111";

    elsif (rising_edge(iClk)) then  -- rising clock edge
      if (ClkCounter = cClkCycPerCyc) then
        ClkCounter <= (others => '0');

        if (Counter0 = 9) then
          Counter0 <= 0;

          if (Counter1 = 9) then
            Counter1 <= 0;

          else
            Counter1 <= Counter1 + 1;
          end if;
        else
          Counter0 <= Counter0 + 1;
        end if;
      else
        ClkCounter <= ClkCounter + 1;
      end if;

      Seg1 <= cSeg(Counter1);
      Seg0 <= cSeg(Counter0);
    end if;
  end process Count;


  -- How to use 7-SEG:
  --   oLEDx : std_ulogic_vector(6 downto 0)
  -- 
  --   +--0--+
  --   |     |
  --   5     1
  --   |     |
  --   +--6--+
  --   |     |
  --   4     2
  --   |     |
  --   +--3--+
  -- 
  oSEG3 <= "0000110"; -- E
  oSEG2 <= "1111001"; -- 1
  oSEG1 <= Seg0;
  oSEG0 <= Seg1;
end architecture Rtl;
