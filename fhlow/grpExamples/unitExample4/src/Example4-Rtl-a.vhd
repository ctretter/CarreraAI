-------------------------------------------------------------------------------
-- Title      : PLL Instantiation
-------------------------------------------------------------------------------
-- File       : Example4-Rtl-a.vhd
-- Author     : Michael Bierig
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: IP core instantiation of AlteraPLL in common design
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


architecture Rtl of Example4 is

	-- component signals
	signal Ack			  		: std_logic := '0';
	signal MasterRead			: std_logic := '0';
	signal MasterWrite			: std_logic := '0';
	signal MasterWaitRequest	: std_logic := '0';
	signal MasterReadDataValid	: std_logic := '0';
	signal MasterReset			: std_logic := '0';
	signal MasterByteEnable 	: std_logic_vector (3 downto 0)  := (others => '0');
	signal MasterAddr			: std_logic_vector (31 downto 0) := (others => '0');
	signal MasterReadData		: std_logic_vector (31 downto 0) := (others => '0');
	signal MasterWriteData		: std_logic_vector (31 downto 0) := (others => '0');
	
begin

	-- component AvalonJTAG2Memory instantiation
	avalon_jtag : entity work.AvalonJTAG2Memory(rtl)
	port map (
		clk_clk 				=> iClk,
		clk_reset_reset			=> iResetAsync,
		master_address			=> MasterAddr,
		master_readdata			=> MasterReadData,
		master_read				=> MasterRead,
		master_write			=> MasterWrite,
		master_writedata		=> MasterWriteData,
		master_waitrequest		=> MasterWaitRequest,
		master_readdatavalid	=> MasterReadDataValid,
		master_byteenable 		=> MasterByteEnable,
		master_reset_reset		=> MasterReset
	);

	-- do something
	TriggerSomeLEDs : process (iClk, iResetAsync)
	begin
	
		if (iResetAsync = cnActivated) then
		
			Ack <= '0';
			
		elsif (rising_edge(iClk)) then
	
			Ack <= not(Ack);
		end if;
	end process;
	
	-- concurrent signal assignments
	oLED_Ack <= Ack;
	oLED_Locked <= not(Ack);
	
end architecture Rtl;