-------------------------------------------------------------------------------
-- Title      : Avalon SPI Instantiation
-------------------------------------------------------------------------------
-- File       : Example3-Rtl-a.vhd
-- Author     : Michael Bierig
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: IP core instantiation of Altera Avalon SPI in common design
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


architecture Rtl of Example3 is

	-- component constants
	constant cCounterLimit  : integer := 1000;

	-- component signals AlteraPLL
	signal PLL_locked 		: std_ulogic := '0';
	signal PLLClk 			: std_ulogic := '0';
	signal Ack			  	: std_ulogic := '0';
	signal PLL_counter 	  	: integer := 0;
	
	-- component signals Avalon SPI
	signal SinkData			: std_logic_vector (7 downto 0) := (others => '0');
	signal SourceData		: std_logic_vector (7 downto 0) := (others => '0');
	signal SinkValid 		: std_logic := '0';
	signal SinkReady		: std_logic := '0';
	signal SourceReady		: std_logic := '0';
	signal SourceValid		: std_logic := '0';
	signal Mosi				: std_logic := '0';
	signal Nss				: std_logic := '0';
	signal Miso				: std_logic := '0';
	
begin

	-- component PLL instantiation
	altera_pll : entity work.AlteraPLL(rtl)
 	port map (
		refclk   => iClk,             	-- input clock defined to 50 MHz in MegaWizard
		rst      => iResetAsync,  		-- PLL reser
		outclk_0 => PLLClk,           	-- output clock of PLL
		locked   => PLL_locked         	-- output of locked enable/disable
	);
	
	-- component Avalon SPI instantiation
	avalon_spi : entity  work.AvalonSPI(rtl) 
	port map (
		stsinkvalid   	=> SinkValid,           -- avalon_streaming_sink.valid
		stsinkdata    	=> SinkData, 			-- .data
		stsinkready   	=> SinkReady, 			-- .ready
		stsourceready 	=> SourceReady,  		-- avalon_streaming_source.ready
		stsourcevalid 	=> SourceValid,   		-- .valid
		stsourcedata  	=> SourceData, 			-- .data
		sysclk        	=> PLLClk,           	-- clock_sink.clk
		nreset        	=> iResetAsync,       	-- clock_sink_reset.reset_n
		mosi          	=> Mosi,         		-- export_0.mosi
		nss          	=> Nss,            		-- .nss
		miso          	=> Miso,         		-- .miso
		sclk          	=> iClk     			-- .sclk
	);


	-- process to do something ...
	TriggerSomeLEDs : process (iClk, iResetAsync)
	begin
	
		if (iResetAsync = cnActivated) then
		
			Ack <= '0';
			PLL_counter <= 0;
			SinkData <= (others => '0');
			SourceData <= (others => '0');
			SinkReady <= '0';
			SinkValid <= '0';
			SourceReady <= '0';
			SourceValid <= '0';
			Mosi <= '0';
			Miso <= '0';
			Nss <= '0';
			
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