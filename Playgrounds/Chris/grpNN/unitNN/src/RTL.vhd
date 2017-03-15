library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use ieee.fixed_generic_pkg.all;


use work.NN.all;

--use work.Global.all;

entity NeuralNetwork is 
	generic (
		gFractionWidth	: integer := cFractionWidth;
		gDataWidth	: integer := cDataWidth;	
		gSynWeigth0	: tSynapse_0 := cTrainedWeigth0;
		gSynWeigth1	: tSynapse_1 := cTrainedWeigth1
	);
	port (
		iclk		: in std_ulogic;
		inReset 	: in std_ulogic;
		
		iSpeed		: in sfixed(gDataWidth-1 downto (0-gFractionwidth));
		iGyro		: in sfixed(gDataWidth-1 downto (0-gFractionwidth));
		iRelation	: in sfixed(gDataWidth-1 downto (0-gFractionwidth));
		iPos		: in sfixed(gDataWidth-1 downto (0-gFractionwidth));
		iNCurve		: in sfixed(gDataWidth-1 downto (0-gFractionwidth));

		oThrottle	: out sfixed(gDataWidth-1 downto (0-gFractionwidth))
	);
end NeuralNetwork;



architecture RTL of NeuralNetwork is

	signal x_conv	: std_ulogic_vector((gDataWidth+gFractionWidth)-1 downto 0);
	signal Res_conv	: std_ulogic_vector((gDataWidth+gFractionWidth)-1 downto 0);
	signal Res		: sfixed(gDataWidth-1 downto (0-gFractionwidth));
	signal x		: sfixed(gDataWidth-1 downto (0-gFractionwidth));
	signal x_nxt	: sfixed(gDataWidth-1 downto (0-gFractionwidth));


	
	procedure dot_product_0(Dendrite_0 : in tDendrites_0; Dendrite_1: out tDendrites_1) is
	begin
		Dendrite_1 (0) := gSynWeigth0(0,0) * Dendrite_0(0);-- + gSynWeigth0(0,1) * Dendrite_0(1) + gSynWeigth0(0,2) * Dendrite_0(2) + gSynWeigth0(0,3) * Dendrite_0(3) + gSynWeigth0(0,4) * Dendrite_0(4);
		Dendrite_1 (1) := gSynWeigth0(1)(0) * Dendrite_0(1) + gSynWeigth0(1)(1) * Dendrite_0(1) + gSynWeigth0(1)(2) * Dendrite_0(2) + gSynWeigth0(1)(3) * Dendrite_0(3) + gSynWeigth0(1)(4) * Dendrite_0(4);
		Dendrite_1 (2) := gSynWeigth0(2)(0) * Dendrite_0(2) + gSynWeigth0(2)(1) * Dendrite_0(1) + gSynWeigth0(2)(2) * Dendrite_0(2) + gSynWeigth0(2)(3) * Dendrite_0(3) + gSynWeigth0(2)(4) * Dendrite_0(4);		
	end dot_product_0;

	
	procedure dot_product_1(Dendrite_1 : in tDendrites_1; signal Dendrite : out sfixed(gDataWidth-1 downto (0-gFractionwidth))) is
	begin
		Dendrite <= gSynWeigth1(0) * Dendrite_1(0) + gSynWeigth1(1) * Dendrite_1(1) + gSynWeigth1(2) * Dendrite_1(2);	
	end dot_product_1;
	
	begin
	
	
	--Exponential : entity work.ALTFP_EXa_altfp_exp_iuc(RTL)
	--	port map(
	--		aclr 	=> 	inReset,
	--		clock 	=> 	iclk,
	--		data 	=> 	x_conv,
	--		result 	=> 	Res_conv
	--	);
		
		--convert mapped ports
		x_conv 	<= std_ulogic_vector(to_unsigned((to_integer(unsigned(to_std_ulogic_vector(not(x))))+1),64));
		--x_conv 	<= to_std_ulogic_vector(x_nxt);
		Res 	<= to_sfixed(Res_conv, 12, -52);

		Think: process(inReset, iSpeed, iGyro, iRelation, iPos, iNCurve) 
			variable vDendrites_0	: tDendrites_0;
			variable vDendrites_1	: tDendrites_1;
			variable vOutput 	: sfixed(gDataWidth-1 downto (0-gFractionwidth));
		begin
			if (inReset = cnActivated) then
			--reset
			vDendrites_0 	:= ((others=> (others => '0')));
			vDendrites_1 	:= ((others=> (others => '0')));
			vOutput		:= (others => '0');

			else

			--assign inputs to array for calculation
			vDendrites_0 := (iSpeed, iGyro, iRelation, iPos, iNCurve);
		
			--calculate the output of the first layer with dedicated weigths 
			dot_product_0(vDendrites_0, vDendrites_1);
				
				
				for i in 4 downto 0 loop
						x <= vDendrites_1(i);
						vDendrites_1(i) := c_FP_one/(c_FP_one+res);
				end loop;
			
			--calculate the output of the second layer with dedicated weigths
			dot_product_1(vDendrites_1, x);
			vOutput := (1/(1+res));

			end if;
				oThrottle <= vOutput;
	end process;



end RTL;


