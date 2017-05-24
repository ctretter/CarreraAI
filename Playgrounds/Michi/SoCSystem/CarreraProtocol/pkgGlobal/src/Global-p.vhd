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

-- fixed_pkg should reside in library ieee_proposed. Library work is used due to
-- restrictions of the current version of fhlow.
--use work.fixed_pkg.all;
--library ieee_proposed;
--use ieee_proposed.fixed_pkg.all;

package Global is

  -----------------------------------------------------------------------------
  -- Definitions that are not project specific.
  -----------------------------------------------------------------------------
  -- Avoid the traps of inverted logic and make the code more text like by
  -- reducing numbers.
  constant cActivated   : std_ulogic := '1';
  constant cInactivated : std_ulogic := '0';

  -- Now the same for inverted logic.
  constant cnActivated   : std_ulogic := '0';
  constant cnInactivated : std_ulogic := '1';

  -----------------------------------------------------------------------------
  -- Project specific definitions that will typically exist for every project.
  -----------------------------------------------------------------------------
  -- Reset polarity
  -- This constant is not used in this project. Instead a low active reset
  -- is used.
  -- constant cResetActive : std_ulogic := cnActivated;

  subtype fract_real is real range
    -1.0 to 0.99999999999999999999999999999999999999999999999999999999999999999;
  
  -- The data type used for audio signals in the digital domain.
  -- Traditionally a fractional data type was used together with a set of
  -- functions provided by the package Fractional (described in
  -- Pfaff, Pauli and Reich�r,
  -- DSP in dedicated hardware: raising value abstraction for fixed
  -- point implementation, ISSE-Conference, 2004)
  -- Since 2008: Converted to package fixed_pkg as provided by David Bishop via
  -- IEEE.
  --subtype aAudioData is u_sfixed;

  -- A set of factors, e.g. the set of filter coefficients for a cascade.
  type aSetOfFactors is array (natural range <>) of fract_real;

  -- Which polarity of the Lrc signal determines the left channel?
  -- I2S standard uses '0' for the left channel.
  constant cLrcValMeaningLeft : std_ulogic := '0';

  -- Default settings
  constant cDefaultAudioBitWidth : natural := 16;
  constant cDefaultSampleRate    : natural := 44117;
  constant cDefaultClkFrequency  : natural := 48E6;
  ------------------------------------------------------------------------------
  -- Function Definitions
  ------------------------------------------------------------------------------
  -- function log2 returns the logarithm of base 2 as an integer
  function LogDualis(cNumber     : natural) return natural;


end Global;



package body Global is


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


end Global;

