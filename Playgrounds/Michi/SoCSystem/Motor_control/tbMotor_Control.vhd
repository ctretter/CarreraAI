-------------------------------------------------------------------------------
-- Title      : Testbench for design "PWM Motor Control"
-- Project    : SoCGhostCar
-------------------------------------------------------------------------------
-- Author     : Lukas Rappel, Hagenberg/A, Copyright (c) 2003-2005
-- RevCtrl    : $Id: tbRectGen-Bhv-ea.vhd 196 2012-09-18 22:01:38Z mroland $
-- UsrNames   : RaL - Lukas Rappel
-------------------------------------------------------------------------------
-- Description : 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_STD.all;
use work.Global.all;
use work.PwmGenPack.all;

--------------------------------------------------------------------------------

entity tbPWM_Motor_Control is
end entity tbPWM_Motor_Control;

--------------------------------------------------------------------------------

architecture Bhv of tbPWM_Motor_Control is

  -- component generics
  constant cIsLowPercentageOfDutyCycle : natural := 65;
  constant cInResetDuration            : time    := 140 ns;
  constant cClkFrequency               : natural := 50E6;

  -- component ports
  signal Clk         : std_ulogic;
  signal nResetAsync : std_ulogic;
  signal opwm_out    : std_ulogic;

  signal address        : std_logic_vector(2 downto 0);
  signal doRead         : std_logic := '0';
  signal r_data         : std_logic_vector(31 downto 0);
  signal doWrite        : std_logic := '0';
  signal w_data         : std_logic_vector(31 downto 0);
  signal activate_motor : std_logic;

  signal simSensor      : std_logic := '0';

begin  -- architecture Bhv

  ip_core_car : entity work.Motor_Control(RTL)
    port map (
      avs_s0_address   => address,
      avs_s0_read      => doRead,
      avs_s0_readdata  => r_data,         --         .readdata
      avs_s0_write     => doWrite,
      avs_s0_writedata => w_data,
      clock_clk        => Clk,
      reset_n          => nResetAsync,
      SENSOR           => simSensor,
      PWM_CTRL         => opwm_out,       -- external.name
      ACTIVATE         => activate_motor  --         .new_signal_1
      );

  ClkGen : entity work.Oscillator
    generic map (
      gFrequency                  => cClkFrequency,
      gIsLowPercentageOfDutyCycle => cIsLowPercentageOfDutyCycle)
    port map (
      oRectangleWave => Clk);

  PwrOnResetSource : entity work.PwrOnReset
    generic map (
      gInResetDuration => cInResetDuration)
    port map (
      onResetAsync => nResetAsync);

  stimuli : process
    variable pwmWidth : unsigned(31 downto 0) := to_unsigned(0, 32);
  begin
    wait for cInResetDuration;
    -- address <= "000";
    -- w_data  <= "00000000000000000000000000000011";
    -- wait until (Clk'event and Clk = '1');
    -- wait for (1 sec/cClkFrequency)/2;
    -- doWrite <= '1';
    -- wait until (Clk'event and Clk = '1');
    -- wait for (1 sec/cClkFrequency);
    -- doWrite <= '0';
    -- wait until (Clk'event and Clk = '1');
    -- wait for (1 sec/cClkFrequency)*5;
    -- --for i in 0 to 10 loop
      -- pwmWidth := to_unsigned(i*100, 32);
      -- address  <= "001";
      -- w_data   <= std_logic_vector(pwmWidth);
      -- wait until (Clk'event and Clk = '1');
      -- wait for (1 sec/cClkFrequency)/2;
      -- doWrite  <= '1';
      -- wait until (Clk'event and Clk = '1');
      -- wait for (1 sec/cClkFrequency);
      -- doWrite  <= '0';
      -- wait for 3 ms;
    -- --end loop;
    -- pwmWidth := to_unsigned(1023, 32);
    -- address <= "100";
    -- w_data  <= std_logic_vector(pwmWidth);
    -- wait until (Clk'event and Clk = '1');
    -- wait for (1 sec/cClkFrequency)/2;
    -- doWrite <= '1';
    -- wait until (Clk'event and Clk = '1');
    -- wait for (1 sec/cClkFrequency);
    -- doWrite <= '0';
    -- wait until (Clk'event and Clk = '1');
----- sensor test
    wait for 1 ms;
    for i in 0 to 10 loop
    	address  <= "001";
    	w_data   <= std_logic_vector(pwmWidth);
    	wait until (Clk'event and Clk = '1');
    	wait for (1 sec/cClkFrequency)/2;
    	doRead <= '1';
    	wait until (Clk'event and Clk = '1');
    	wait for (1 sec/cClkFrequency);
    	doRead  <= '0';
    	wait until (Clk'event and Clk = '1');
    	wait for 20 ms;    
    end loop;
    

    wait;
  end process;

  Wheelsensor : process
  begin
	simSensor <= not simSensor;
	wait for 3 ms;
  end process;


end architecture Bhv;




