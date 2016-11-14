-------------------------------------------------------------------------------
-- Title      : <Short title for this testbench>
-- Project    : <Name of the design project>
-------------------------------------------------------------------------------
-- RevCtrl    : $Id: tbTemplate-Bhv-ea.vhd 63 2011-11-05 14:02:00Z mroland $
-- Author     : <Author(s) of this file>
-------------------------------------------------------------------------------
-- Description: <Detailed description of this testbench's purpose>
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Global.all;

--------------------------------------------------------------------------------

entity tbTemplate is
end entity tbTemplate;

--------------------------------------------------------------------------------

architecture Bhv of tbTemplate is

  -- component ports
  signal Clk                    : std_ulogic;
  signal nResetAsync            : std_ulogic;

begin  -- architecture Behavioral

  DUT : entity work.Template
    port map (
      iClk                    => Clk,
      inResetAsync            => nResetAsync,
      
      -- Your port mapping here!
      
      );


  -- Your code here!


end architecture Bhv;

