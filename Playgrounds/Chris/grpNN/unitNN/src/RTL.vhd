library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.fixed_pkg.all;
--use ieee.fixed_generic_pkg.all;
---------------------------------
--only for simulation
use ieee.math_real.all;
---------------------------------

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


	
	procedure dot_product_0(Dendrite_0 : in tDendrites_0; signal Dendrite_1: out tDendrites_1) is
		variable Dendrite_conv_0 : sfixed(27 downto -104);
		variable Den_v : signed(131 downto 0);
		variable dent : sfixed(gDataWidth-1 downto (0-gFractionwidth));
	begin
		--Den_v := (others => '0');
		--for i in 4 downto 0 loop
		--	Den_v := Den_v + signed(to_std_ulogic_vector(gSynWeigth0(0,i)))*signed(to_std_ulogic_vector(Dendrite_0(i)));
		--end loop;
		--	Den_v := Den_v srl 104;
		--	Dendrite_Conv_0 := to_sfixed(Den_v);
		--Dendrite_conv_0 := (gSynWeigth0(0,0) * Dendrite_0(0) + gSynWeigth0(0,1) * Dendrite_0(1) + gSynWeigth0(0,2) * Dendrite_0(2) + gSynWeigth0(0,3) * Dendrite_0(3) + gSynWeigth0(0,4) * Dendrite_0(4));
		--report "Dendrite_Conv_0 of dot product : " & real'image(real(to_integer(signed(to_std_ulogic_vector(Dendrite_Conv_0)))));
		--dent := Dendrite_conv_0(Dendrite_conv_0'high) & Dendrite_conv_0(gDataWidth-2 downto (0-gFractionWidth));
		--report "dent of dot product : " & real'image(real(to_integer(signed(to_std_ulogic_vector(dent)))));
		--Dendrite_1 (0) <= Dendrite_conv_0(Dendrite_conv_0'high downto (Dendrite_conv_0'high-(gDataWidth+gFractionWidth-1)));
		--Dendrite_conv_0 := gSynWeigth0(1,0) * Dendrite_0(1) + (gSynWeigth0(1,1) * Dendrite_0(1)) + (gSynWeigth0(1,2) * Dendrite_0(2)) + (gSynWeigth0(1,3) * Dendrite_0(3)) + (gSynWeigth0(1,4) * Dendrite_0(4));
		--Dendrite_1 (1) <= Dendrite_conv_0(Dendrite_conv_0'high) & Dendrite_conv_0(gDataWidth-2 downto (0-gFractionWidth));
		--Dendrite_conv_0 := gSynWeigth0(2,0) * Dendrite_0(2) + gSynWeigth0(2,1) * Dendrite_0(1) + gSynWeigth0(2,2) * Dendrite_0(2) + gSynWeigth0(2,3) * Dendrite_0(3) + gSynWeigth0(2,4) * Dendrite_0(4);		
		--Dendrite_1 (2) <= Dendrite_conv_0(Dendrite_conv_0'high) & Dendrite_conv_0(gDataWidth-2 downto (0-gFractionWidth));
	end dot_product_0;

	
	procedure dot_product_1(Dendrite_1 : in tDendrites_1; signal Dendrite : out sfixed(gDataWidth-1 downto (0-gFractionwidth))) is
	variable Dendrite_conv : sfixed(25 downto -104);
	begin
		Dendrite_conv := gSynWeigth1(0) * Dendrite_1(0) + gSynWeigth1(1) * Dendrite_1(1) + gSynWeigth1(2) * Dendrite_1(2);	
		Dendrite <= Dendrite_conv(Dendrite_conv'high) & Dendrite_conv(10 downto -52);
	end dot_product_1;
	
	signal vDendrites_1	: tDendrites_1;
	
	begin
	
	
	--Exponential : entity work.ALTFP_EXa_altfp_exp_iuc(RTL)
	--	port map(
	--		aclr 	=> 	inReset,
	--		clock 	=> 	iclk,
	--		data 	=> 	x_conv,
	--		result 	=> 	Res_conv
	--	);
		tmp_Bhv_instead_IP: process(inReset, x_conv)
		variable tmp_exp : std_ulogic_vector((gDataWidth+gFractionWidth)-1 downto 0) ;
		begin
		if (inReset = cnActivated) then
			Res_conv <= (others => '0');
		else
			tmp_exp := std_ulogic_vector(to_signed(integer(MATH_E**real(to_integer(signed(x_conv)))),64));
			Res_conv <= tmp_exp;
		end if;
		end process;
		
		--convert mapped ports
		Conv_Ports : x_conv 	<= std_ulogic_vector(to_signed((to_integer(signed(to_std_ulogic_vector(not(x))))+1),64));
		--x_conv 	<= to_std_ulogic_vector(x_nxt);
		Calc_Res: Res 	<= to_sfixed(Res_conv, 11, -52);

		Think: process(inReset, iSpeed, iGyro, iRelation, iPos, iNCurve) 
			variable vDendrites_0	: tDendrites_0;
			
			variable vOutput 		: sfixed(gDataWidth-1 downto (0-gFractionwidth)) := (others => '0');
			variable vOutput_conv  	: sfixed(65 downto -12);
			variable vDendrites_1_conv : sfixed(64 downto -64);
		begin
			if (inReset = cnActivated) then
			--reset
			vDendrites_0 	:= ((others=> (others => '0')));
			vOutput		:= (others => '0');

			else

			--assign inputs to array for calculation
			vDendrites_0 := (iSpeed, iGyro, iRelation, iPos, iNCurve);
		
			--calculate the output of the first layer with dedicated weigths 
			dot_product_0(vDendrites_0, vDendrites_1);
				
				report "vDendrites_1 (0) after dot_product : " & real'image(ö(vDendrites_1 (0))))));
				
				for i in 2 downto 0 loop
						x <= vDendrites_1(i);
						vDendrites_1_conv := (c_FP_one/(c_FP_one+res));
						vDendrites_1(i) <= vDendrites_1_conv(vDendrites_1_conv'high) & vDendrites_1_conv(10 downto -52);
				end loop;
			
			--calculate the output of the second layer with dedicated weigths
			dot_product_1(vDendrites_1, x);
			vOutput_conv := (1/(1+res));
			vOutput(11 downto -12) :=  vOutput_conv(vOutput_conv'high) & vOutput_conv(10 downto -12);
			
			end if;
				oThrottle <= vOutput;
	end process;



end RTL;


