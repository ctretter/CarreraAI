library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.fixed_generic_pkg.all;
library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

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
signal Throttle2  :  sfixed(cDataWidth-1 downto (0-cFractionWidth)):= (others => '0');

begin

clk <=  not(clk) after 5 ns;

NN: entity work.NeuralNetwork(RTL5)
port map(
	iclk		=> clk,
    inReset 	=> Reset,
    iSpeed		=> speed,
    iGyro		=> gyro,
    iRelation 	=> Relation,
    iPos		=> position,
    iNxtCurve		=> NextCurve,
	iEnable		=> ,
	oRdy		=> ,
    oThrottle	=>  Throttle);
	
	
--NN2: entity work.NeuralNetwork(RTL4)
--port map(
--	iclk		=> clk,
 --   inReset 	=> Reset,
--    iSpeed		=> speed,
 --   iGyro		=> gyro,
  --  iRelation 	=> Relation,
  ---  iPos		=> position,
  ---  iNxtCurve		=> NextCurve,
  --  oThrottle	=>  Throttle2);
	
	
stimuli: process is
begin
	Reset <= '1';
	wait for 2 ns;
	Reset <= '0';
	wait for 45 ns;
	Reset <= '1';
	
	
	speed <= x"000CCCCCCCCCCCCC";
	gyro <= x"0008000000000000";
	Relation <= x"0008000000000000";
	position <= x"0000000000000000";
	
	wait for 2000 ns;
	
	speed <= x"000CCCCCCCCCCCCC";
	gyro <= x"0008000000000000";
	Relation <= x"0008000000000000";
	position <= x"0000CCCCCCCCCCCC";
	
	wait for 2000 ns;
	
	speed <= x"000C000000000000";
	gyro <= x"0008000000000000";
	Relation <= x"0008000000000000";
	position <= x"0001C28F5C28F5C2";
	NextCurve <= x"0010000000000000";
	
	wait for 2000 ns;
	
	speed <= x"000A666666666666";
	gyro <= x"0000000000000000";
	Relation <= x"0008000000000000";
	position <= x"0001EB851EB851EB";
	NextCurve <= x"0010000000000000";
	
	wait for 2000 ns;
	
	speed <= x"000A666666666666";
	gyro <= x"0000000000000000";
	Relation <= x"0008000000000000";
	position <= x"0003AE147AE147AE";
	NextCurve <= x"0010000000000000";
	
	wait for 2000 ns;
	
	speed <= x"0008CCCCCCCCCCCC";
	gyro <= x"0010000000000000";
	Relation <= x"0008000000000000";
	position <= x"0003D70A3D70A3D7";
	NextCurve <= x"0010000000000000";
	
	wait for 2000 ns;
	
	speed <= x"0008000000000000";
	gyro <= x"0010000000000000";
	Relation <= x"0008000000000000";
	position <= x"0005999999999999";
	NextCurve <= x"0010000000000000";
	
		wait for 2000 ns;
	
	speed <= x"0007333333333333";
	gyro <= x"0000000000000000";
	Relation <= x"0008000000000000";
	position <= x"0005C28F5C28F5C2";
	NextCurve <= x"0010000000000000";
	
	wait for 2000 ns;
	
	--first test
	speed <= x"000E666666666666";
	gyro  <= x"0008000000000000";
	Relation <= x"0008000000000000";
	position <= x"0009999999999999";
	NextCurve <= x"0000000000000000";
	
	wait for 2000 ns;
	
	--second test
	speed <= x"0007333333333333";
	gyro  <= x"0000000000000000";
	Relation <= x"0008000000000000";
	position <= x"0005C28F5C28F5C2";
	NextCurve <= x"0010000000000000";
	wait;
	
end process;
	
end architecture Bhv;