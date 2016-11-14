-------------------------------------------------------------------------------
-- Title      : Example 1
-- Project    : Examples
-------------------------------------------------------------------------------
-- Author     : Michael Roland, Hagenberg/A, Copyright (c) 2014
-- RevCtrl    : $Id: Example1-e.vhd 356 2014-09-28 18:28:33Z mroland $
-- UsrNames   : mroland - Michael Roland
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.global.all;

entity Example1 is
  
  port (
    iClk         : in std_ulogic;
    inResetAsync : in std_ulogic;

    oSEG0        : out std_ulogic_vector(6 downto 0);
    oSEG1        : out std_ulogic_vector(6 downto 0);
    oSEG2        : out std_ulogic_vector(6 downto 0);
    oSEG3        : out std_ulogic_vector(6 downto 0));

end Example1;
