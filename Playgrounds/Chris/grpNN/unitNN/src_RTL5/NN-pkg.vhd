library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.fixed_generic_pkg.all;
library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

package NN is
	constant cDataWidth : natural;
	constant cFractionWidth : natural;
	constant cNeurons: natural;
	constant cValues: natural;
	subtype t_sign_conv  is SIGNED(63 downto 0);
	subtype aFPVector is sfixed (11 downto (0-52));
	type tDendrites is array (natural range<>) of sfixed (11 downto (0-52));
	type tSynapseMatrix is array(natural range<>, natural range<>) of sfixed (11 downto (0-52));
	type tSynapse is array(natural range <>) of sfixed (11 downto (0-52));
	
	type tState is (Init,Multi,Inversion,Delay,Output);
	
	
	--subtype stDendrites is sfixed(11 downto (0-52));
	--type tDendrites_0 is array(4 downto 0) of stDendrites;
	---type tDendrites_1 is array(2 downto 0) of stDendrites;
	
--	type tSynapse_0 is array(2 downto 0, 4 downto 0) of sfixed(11 downto (0-52));
--	type tSynapse_1 is array(2 downto 0) of sfixed(11 downto (0-52));
	
	
	constant c_FP_one : sfixed(11 downto (0-52));
	constant cTrainedWeigth0 : tSynapseMatrix(2 downto 0, 4 downto 0);
	constant cTrainedWeigth1 : tSynapse(2 downto 0);
	
	function Syn2SynMa(Val: tSynapse) return tSynapseMatrix;
	
	--	constant cnActivated: std_ulogic;
end package NN;

package body NN is
	constant cDataWidth : natural := 12;
	constant cFractionWidth : natural := 52;
	constant cNeurons: natural := 3;
	constant cValues: natural := 5;

	constant c_FP_one : sfixed(cDataWidth-1 downto (0-cFractionWidth)) := to_sfixed(std_ulogic_vector(to_signed(1,(cDataWidth+cFractionWidth))), (cDataWidth-1), (0-cFractionWidth));
	
	constant cTrainedWeigth0 : tSynapseMatrix(2 downto 0, 4 downto 0) := ((x"FF8C3620EE8D10F5",x"FF8CB9170D62BF11",x"FFEE416DF3F96180",x"FFF916F86A098915",x"0011BC60029F16B1"),
											  (x"0009400431BDE82D",x"002A9D4E8FB00BCB",x"0008AE978D4FDF3B",x"FF8C8426351DEEFE",x"0018A705C896DD26"),
											  (x"FFBDFD6E8AF81626",x"006EB10342AA9F7B",x"001E77E2C55C9603",x"FF9F7F077CCC0379",x"0003896AAD1D041C"));
						
						
	constant cTrainedWeigth1 : tSynapse(2 downto 0):= (x"005E71476AF89C5E", x"FFCC1D9F4D37C137", x"003D79496249A133");
	
	function Syn2SynMa(Val: tSynapse) return tSynapseMatrix is 
		variable tmp: tSynapseMatrix(Val'length-1 downto 0, 0 downto 0);
		begin
			for i in val'length-1 downto 0 loop
				tmp(i, 0) := Val(i);
			end loop;
			return tmp;
		end Syn2SynMa;
---	constant cnActivated: std_ulogic := '0';
end NN;