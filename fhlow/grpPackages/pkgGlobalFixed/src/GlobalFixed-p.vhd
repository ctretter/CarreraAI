-------------------------------------------------------------------------------
-- Title      : Global Project Package
-- Project    : Audio Signal Processing
-------------------------------------------------------------------------------
-- $Id: Global-p.vhd 54 2011-10-04 06:36:02Z mroland $
-------------------------------------------------------------------------------
-- Author     : Copyright 2003: Markus Pfaff
-- Standard   : Using VHDL'93
-- Simulation : Model Technology Modelsim
-- Synthesis  : Exemplar Leonardo
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;

package GlobalFixed is

  -----------------------------------------------------------------------------
  -- Project specific definitions that will typically exist for every project.
  -----------------------------------------------------------------------------
  -- Reset polarity
  -- This constant is not used in this project. Instead a low active reset
  -- is used.
  -- constant cResetActive : std_ulogic := cnActivated;


  ------------------------------------------------------------------------------
  -- Function Definitions
  ------------------------------------------------------------------------------
  -- function log2 returns the logarithm of base 2 as an integer
  function LogDualis(cNumber     : natural) return natural;
  function ResizeTruncAbsVal (
	arg : sfixed; -- input
	size_res : sfixed) -- for size only
	return sfixed;

end GlobalFixed;



package body GlobalFixed is


  -- Function LogDualis returns the logarithm of base 2 as an integer.
  -- Although the implementation of this function was not done with synthesis
  -- efficiency in mind, the function has to be synthesizable, because it is
  -- often used in static calculations.
  function LogDualis(cNumber : natural) return natural is
    -- Initialize explicitly (will have warnings for uninitialized variables 
    -- from Quartus synthesis otherwise).
    variable vClimbUp : natural := 1;
    variable vResult  : natural := 0;
  begin
    while vClimbUp < cNumber loop
      vClimbUp := vClimbUp * 2;
      vResult  := vResult+1;
    end loop;
    return vResult;
  end LogDualis;

-- resize fixed point values to size_res length by truncating and saturation 
  function ResizeTruncAbsVal (
	arg : sfixed; -- input
	size_res : sfixed) -- for size only
	return sfixed is

	begin
 	return ieee.fixed_pkg.resize(arg, size_res, ieee.fixed_float_types.fixed_saturate, ieee.fixed_float_types.fixed_truncate);
  end ResizeTruncAbsVal;
  
end GlobalFixed;

