-- CarreraProtocolDecoder.vhd

-- This file was auto-generated as a prototype implementation of a module
-- created in component editor.  It ties off all outputs to ground and
-- ignores all inputs.  It needs to be edited to make it do something
-- useful.
-- 
-- This file will not be automatically regenerated.  You should check it in
-- to your version control system if you want to keep it.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.Global.all;

entity CarreraProtocolDecoder is
  generic (
    ParamClkFrequency : natural := 50E6;    -- system clock speed in Hz
    ParamBaudrate     : natural := 1E4;     -- data baud rate
    ParamDataWidth    : natural := 16;      -- parallel output data width
    ParamIDWidth      : natural := 32);     -- ID counter width

	port (
		avs_s0_address   : in  std_logic_vector(1 downto 0)  := (others => '0'); --      avs_s0.address
		avs_s0_read      : in  std_logic                     := '0';             --            .read
		avs_s0_readdata  : out std_logic_vector(31 downto 0);                    --            .readdata
		avs_s0_write     : in  std_logic                     := '0';             --            .write
		avs_s0_writedata : in  std_logic_vector(31 downto 0) := (others => '0'); --            .writedata
		clock_clk        : in  std_logic                     := '0';             --       clock.clk
		reset_reset      : in  std_logic                     := '0';             --       reset.reset_n
		RailSignal       : in  std_logic                     := '0'              -- conduit_end.RailSignal
	);
end entity CarreraProtocolDecoder;


architecture rtl of CarreraProtocolDecoder is

  ------ Register mapping:
  signal Reg0_ID : unsigned(31 downto 0); -- Telegram ID
  signal Reg1_Data: std_ulogic_vector(ParamDataWidth-1 downto 0); -- Telegram Data
  signal Reg2_Status_BitLen: std_ulogic_vector(31 downto 0); -- Telegram Data
	constant Reg2_NewData : natural :=8; -- Bit 0: new data available
	constant Reg2_Error : natural :=9; -- Bit 1: error detected (auto reset)
  signal TempBitLen : natural range 0 to ParamDataWidth-1;
  constant cBitLenBitWidth : natural := logDualis(ParamDataWidth);
  

  -- QSYS unresolved signals for wrapper
  signal savs_s0_address   : std_ulogic_vector(1 downto 0);  --   avs_s0.address
  signal savs_s0_read      : std_ulogic;  --         .read
  signal savs_s0_readdata  : std_ulogic_vector(31 downto 0);  --         .readdata
  signal savs_s0_write     : std_ulogic;  --         .write
  signal savs_s0_writedata : std_ulogic_vector(31 downto 0);
  signal sclock_clk        : std_ulogic;  --    clock.clk
  signal sreset_n          : std_ulogic;  --    reset.reset
  signal sRailSignal       : std_ulogic;  --    sensor signal
 

begin

  -- wrapper for std_ulogic (to avoid tristate buffers ...)
  savs_s0_address   <= std_ulogic_vector(avs_s0_address);
  savs_s0_read      <= std_ulogic(avs_s0_read);
  avs_s0_readdata   <= std_logic_vector(savs_s0_readdata);
  savs_s0_write     <= std_ulogic(avs_s0_write);
  savs_s0_writedata <= std_ulogic_vector(avs_s0_writedata);
  sclock_clk        <= std_ulogic(clock_clk);
  sreset_n          <= std_ulogic(reset_reset);
  sRailSignal       <= std_ulogic(RailSignal);

	  dataexchange : process(sclock_clk, sreset_n) is

  begin
    if (sreset_n = '0') then
	--clear write registers
    elsif (sclock_clk'event and sclock_clk = '1') then
      case savs_s0_address is
        when "00" =>                   -- REG0
          if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg0_ID);
          end if;
          if (savs_s0_write = '1') then
          -- nothing to write, so far
          end if;
        when "01" =>                   -- REG1
          if (savs_s0_read = '1') then
            savs_s0_readdata <= (31 downto ParamDataWidth => '0') & Reg1_Data;
          end if;
          if (savs_s0_write = '1') then
            -- nothing to write, so far
          end if;
        when "10" =>                   -- REG2
          if (savs_s0_read = '1') then
            savs_s0_readdata <= Reg2_Status_BitLen;
          end if;
          if (savs_s0_write = '1') then
            -- nothing to write, so far
          end if;
        when "11" =>                   -- REG3
          if (savs_s0_read = '1') then
          -- nothing to read, so far
          end if;
          if (savs_s0_write = '1') then
          -- nothing to write, so far
          end if;
        when others =>
      -- nothing to do
      end case;

    end if;
  end process;
  
  Reg2_Status_BitLen(cBitLenBitWidth-1 downto 0) <= std_ulogic_vector(to_unsigned(tempBitLen,cBitLenBitWidth));
  
    Reader : entity work.CarreraProtocol(Rtl)
    generic map (
      gClkFrequency => ParamClkFrequency,
      gBaudrate     => ParamBaudrate,
      gDataWidth    => ParamDataWidth,
	  gIDWidth      => ParamIDWidth
      )
    port map (
      iClk         => sclock_clk,    -- system clock
      inResetAsync => sreset_n,      -- system reset (asynchronous)
      iDataAsync   => sRailSignal,   -- data signal 
	  oID          => Reg0_ID,       -- telegram id 
      oNewData     => Reg2_Status_BitLen(Reg2_NewData),   -- new data received flag 
      oError       => Reg2_Status_BitLen(Reg2_Error),     -- error flag
      oBitLen      => TempBitLen,    -- number of received bits
      oData        => Reg1_Data      -- received data
      );

end architecture rtl; -- of CarreraProtocolDecoder
