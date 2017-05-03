library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.fixed_generic_pkg.all;
use work.fixed_pkg.all;

package NN is
	constant cDataWidth : integer;
	constant cFractionWidth : integer;

	subtype stDendrites is sfixed(11 downto (0-52));
	type tDendrites_0 is array(4 downto 0) of stDendrites;
	type tDendrites_1 is array(2 downto 0) of stDendrites;
	
	type tSynapse_0 is array(2 downto 0, 4 downto 0) of sfixed(11 downto (0-52));
	type tSynapse_1 is array(2 downto 0) of sfixed(11 downto (0-52));
	
	constant cTrainedWeigth0 : tSynapse_0;
	constant cTrainedWeigth1 : tSynapse_1;
	
	constant c_FP_one : sfixed(11 downto (0-52));
	
	constant cnActivated: std_ulogic;
	
end package NN;

package body NN is
	constant cDataWidth : integer := 12;
	constant cFractionWidth : integer := 52;

	constant c_FP_one : sfixed(11 downto (0-52)) := to_sfixed(std_ulogic_vector(to_signed(1,64)), 11, -52);
	
	constant cTrainedWeigth0 : tSynapse_0 := ((x"FF8C3620EE8D10F5",x"FF8CB9170D62BF11",x"FFEE416DF3F96180",x"FFF916F86A098915",x"0011BC60029F16B1"),
											  (x"0009400431BDE82D",x"002A9D4E8FB00BCB",x"0008AE978D4FDF3B",x"FF8C8426351DEEFE",x"0018A705C896DD26"),
											  (x"FFBDFD6E8AF81626",x"006EB10342AA9F7B",x"001E77E2C55C9603",x"FF9F7F077CCC0379",x"0003896AAD1D041C"));
											  
	constant cTrainedWeigth1 : tSynapse_1 := (x"005E71476AF89C5E",x"FFCC1D9F4D37C137",x"003D79496249A133");
	
	constant cnActivated: std_ulogic := '0';
end NN;