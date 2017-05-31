library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library ieee_proposed;
use ieee_proposed.fixed_float_types.all;
use ieee_proposed.float_pkg.all;
use ieee_proposed.fixed_pkg.all;
--use ieee.fixed_float_types.all;
--use ieee.float_pkg.all;
--use ieee.fixed_pkg.all;

use work.NN.all;

entity Think is
	generic(
		gNeurons : natural := 3;
		gValues	 : natural := 5;
		gFractionWidth : natural := cFRactionWidth;
		gDataWidth : natural := cDataWidth;
		gEndState  : natural := 0	-- needed for final stage dont go into mul but muldot to calculate dot product and set i to 0.
	);
	port(
		iclk	: in std_ulogic;
		inReset : in std_ulogic;
		iStart 	: in std_ulogic;
		iValues	: in tDendrites(gValues-1 downto 0);
		oValues	: out tDendrites(gNeurons-1 downto 0);
		oRdy	: out std_ulogic;
		--port to set weigth values
		SynWeigth : in tSynapseMatrix(gNeurons-1 downto 0, gValues-1 downto 0)
	);

end Think;

architecture RTL of Think is
constant cCntWidth: natural := 8;

signal State : tState;
signal nState: tState;

signal tmpDendrites : tDendrites(gNeurons-1 downto 0);
signal ntmpDendrites : tDendrites(gNeurons-1 downto 0);


signal Reset	: std_ulogic;
signal Count 	: unsigned(cCntWidth-1 downto 0);

signal IP_Result: sfixed (11 downto (0-52));
signal Enable	: std_ulogic;	
signal nEnable 	: std_ulogic;

signal Result 	: tDendrites(gNeurons-1 downto 0);
signal nResult 	: tDendrites(gNeurons-1 downto 0);

signal Exponent : signed((gDataWidth+gFractionWidth)-1 downto 0);
signal nExponent: signed((gDataWidth+gFractionWidth)-1 downto 0);

signal i		: unsigned(1 downto 0);
signal ni		: unsigned(1 downto 0);

signal Exponent_Conv : signed((gDataWidth+gFractionWidth)-1 downto 0);
signal TMP_RES	     : signed((gDataWidth+gFractionWidth)-1 downto 0);
signal TMP_RES_Conv  : signed((gDataWidth+gFractionWidth)-1 downto 0);
	
signal Rdy 	:std_ulogic;
signal nRdy : std_ulogic;
	
function to_string ( a: sfixed ) return string is
variable b : string (1 to a'length) := (others => NUL);
variable stri : integer := 1; 
begin
    for i in a'range loop
        b(stri) := std_logic'image(a((i)))(2);
    stri := stri+1;
    end loop;
return b;
end function;
	

begin

oValues <= Result;
oRdy <= Rdy;

Seq: process (iclk, inReset) is

begin
	if (inReset = '0') then
		State <= Init;
		Exponent <= (others => '0');
		Result <= (others => (others => '0'));
		tmpDendrites <= (others =>(others => '0'));
		i <= to_unsigned(gNeurons-1, i'length);
		Enable <= '0';
		Rdy <= '0';
	elsif (iclk'event and iclk = '1') then
		State <= nState;
		Exponent <= nExponent;
		Result <= nResult;
		tmpDendrites <= ntmpDendrites;
		i <= ni;
		Enable <= nEnable;
		Rdy <= nRdy;
	end if;
end process;

Comb: process (State, Exponent, iStart, tmpDendrites, Result, Enable, i, Count) is
	variable vInverted 	: sfixed (gDataWidth downto (0-gFractionWidth));
	variable vtmpAdd	: sfixed (gDataWidth downto (0-gFractionWidth));
	variable vtmpDiv	: sfixed((gDataWidth+gFractionWidth) downto (0-(gDataWidth+gFractionWidth)));
	variable vtmpMatrixMul  : sfixed((gDataWidth+gDataWidth) downto (0-(gFractionWidth+gFractionWidth)));
	variable vtmpMulRes : aFPVector; 
	begin
	nState <=  State;
	nExponent <= Exponent;
	ntmpDendrites <= tmpDendrites;
	nResult <= Result;
	nEnable <= Enable;
	ni <= i;
	nRdy <= Rdy;

	case State is
		when Init =>
			if(iStart = '1') then
				nExponent <= (others => '0');
				--nResult <= (others => (others => '0'));
				vtmpMatrixMul := (others => '0');
				vtmpMulRes := (others => '0');
				ni <= to_unsigned(gNeurons-1, ni'length);
				nEnable <= '0';
				nState <= Multi;
			end if;
		when Multi =>
			if (gEndState = 0) then
				report "first stage";
				--gNeurons-1
				for j in gNeurons-1 downto 0 loop
					--gValues-1
					for k in gValues-1 downto 0 loop
						vtmpMatrixMul := vtmpMulRes + (SynWeigth(j,k) * iValues(k));
						report "vtmpMatrix" & to_string(vtmpMatrixMul);
						vtmpMulRes := vtmpMatrixMul(vtmpMatrixMul'high) & vtmpMatrixMul((gDataWidth-2) downto (0-gFractionWidth));
						report "ntmpDendrites (" & integer'image(j) & ") : " & to_string(ntmpDendrites(j));
					end loop;
						ntmpDendrites(j) <= vtmpMulRes;
						vtmpMulRes := (others => '0');
				end loop;
			else
				for j in gValues-1 downto 0 loop
					vtmpMatrixMul := vtmpMulRes + (SynWeigth(0,j) * iValues(j));
					vtmpMulRes := vtmpMatrixMul(vtmpMatrixMul'high) & vtmpMatrixMul((gDataWidth-2) downto (0-gFractionWidth));
				end loop;
				ntmpDendrites(to_integer(i)) <= vtmpMulRes;
			end if;
			
			nState <= Inversion;
		when Inversion =>
			vInverted := not(tmpDendrites(to_integer(i))) + c_FP_one;
		    nExponent <= t_sign_conv(vInverted(gDataWidth)&vInverted(gDataWidth-2 downto (0-gFractionWidth)));
			nEnable <= '1';
			nState <= Delay;
		when Delay =>
			if(Count = "00100101") then
				nEnable <= '0';
				nState <= Output;
			end if;
		when Output =>
			nRdy <= '0';
			vtmpAdd	    := (c_FP_one sll gFractionWidth) + IP_Result;
		    vtmpDiv	    := ((c_FP_one sll gFractionWidth)/(vtmpAdd));
		    nResult(to_integer(i)) <= (vtmpDiv(vtmpDiv'high) & vtmpDiv((gDataWidth-2) downto (0-gFractionWidth)));
			ni <= i-1;
			nState <= Inversion;
			if (i = 0) then
				nState <= Init;
				ni <= to_unsigned(gNeurons-1,ni'length);
				nRdy <= '1';
			end if;
	end case;

end process;


	-- convert low active Reset into high active
	Reset <=  not(inReset);
	
	-- Altera IP for exponential calulation
	Exponential_inst: Exponential PORT MAP (
		aclr 	=> 	Reset,
		clock 	=> 	iclk,
		data 	=> 	std_logic_vector(Exponent_Conv),
		signed(result) => TMP_RES
		);
		
	--Conversion from Fixed to Float64
	FloatConv_inst : FloatConv PORT MAP (
		aclr	 => Reset,
		clock	 => iclk,
		dataa	 => std_logic_vector(Exponent),
		signed(result)	 => Exponent_Conv
	);
	
	--Conversion from float64 to fixed
	FixedConv_inst :  tofixed PORT MAP (
		aclr	 => Reset,
		clock	 => iclk,
		dataa	 => std_logic_vector(TMP_RES),
		signed(result)	 => TMP_RES_Conv
	);
	
	IP_Result <= aFPVector(TMP_RES_Conv);
	
	-- counter to wait on IP-CORE	
    Counter: process (iclk , inReset) is	
	begin
	    if(inReset = '0') then
		Count <= (others => '0');
	    elsif (iclk'event and iclk = '1') then
		if (Enable = '1') then
			Count <=  Count + 1;
		else
			Count <= (others => '0');
		end if;
	    end if;
	end process;
	
end architecture RTL;

