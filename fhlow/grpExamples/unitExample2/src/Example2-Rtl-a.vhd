-------------------------------------------------------------------------------
-- Title      : PLL Instantiation
-------------------------------------------------------------------------------
-- File       : Example2-Rtl-a.vhd
-- Author     : Michael Bierig
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: IP core instantiation of AlteraPLL in common design
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


architecture Rtl of Example2 is

	-- component constants
	constant cCounterLimit  : integer := 1000;

	-- component signals
	signal PLL_locked 		: std_ulogic := '0';
	signal PLLClk 			: std_ulogic := '0';
	signal Ack			  	: std_ulogic := '0';
	signal PLL_counter 	  	: integer := 0;
	
begin

	-- component PLL instantiation
	altera_pll : entity work.AlteraPLL(rtl)
 	port map (
		refclk   => iClk,             	-- input clock defined to 50 MHz in MegaWizard
		rst      => iResetAsync,  		-- PLL reser
		outclk_0 => PLLClk,           	-- output clock of PLL
		locked   => PLL_locked         	-- output of locked enable/disable
	);

	-- process to trigger LEDs by counting high phases of PLL clock being sensitive on internal clock
	TriggerSomeLEDs : process (iClk, iResetAsync)
	begin
	
		if (iResetAsync = cnActivated) then
		
			Ack <= '0';
			PLL_counter <= 0;
			
		elsif (rising_edge(iClk)) then
		
			if (PLLClk = '1') then
				if (PLL_counter >= cCounterLimit) then
					Ack <= not(Ack);
					PLL_counter <= 0;
				else
					PLL_counter <= PLL_counter + 1;
				end if;
			end if;
		end if;
	end process;
	
	-- concurrent signal assignments
	oLED_Ack <= Ack;
	oLED_Locked <= PLL_locked;
	
end architecture Rtl;