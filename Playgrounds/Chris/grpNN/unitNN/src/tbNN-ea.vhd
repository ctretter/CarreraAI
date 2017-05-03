library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.fixed_generic_pkg.all;
use work.fixed_pkg.all;

use work.NN.all;

--use work.Global.all;

entity tbNN is
end tbNN;

architecture Bhv of tbNN is

signal clk :std_ulogic := '0';
signal Reset: std_ulogic := '1';


signal speed     :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');
signal gyro      :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');
signal Relation  :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');
signal position  :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');
signal NextCurve :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');
signal Throttle  :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');

begin

clk <=  not(clk) after 5 ns;

NN: entity work.NeuralNetwork(RTL3)
port map(
	iclk		=> clk,
    inReset 	=> Reset,
    iSpeed		=> speed,
    iGyro		=> gyro,
    iRelation 	=> Relation,
    iPos		=> position,
    iNCurve		=> NextCurve,
    oThrottle	=>  Throttle);
	
	
stimuli: process is
begin
	Reset <= '1';
	wait for 2 ns;
	Reset <= '0';
	wait for 45 ns;
	Reset <= '1';
	
	speed <= x"000E666666666666";
	gyro  <= x"0008000000000000";
	Relation <= x"0008000000000000";
	position <= x"0009999999999999";
	wait;
	
end process;
	
end architecture Bhv;