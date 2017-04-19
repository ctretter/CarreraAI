-- PWM_Motor_Control.vhd

-- This file was auto-generated as a prototype implementation of a module
-- created in component editor.  It ties off all outputs to ground and
-- ignores all inputs.  It needs to be edited to make it do something
-- useful.
-- 
-- This file will not be automatically regenerated.  You should check it in
-- to your version control system if you want to keep it.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.PwmGenPack.all;
use work.Global.all;

entity PWM_Motor_Control is
  generic (
    gClkFrequency : natural := 50E6     -- system clock
    );
  port (
    avs_s0_address   : in  std_logic_vector(2 downto 0)  := (others => '0');  --   avs_s0.address
    avs_s0_read      : in  std_logic                     := '0';  --         .read
    avs_s0_readdata  : out std_logic_vector(31 downto 0);  --         .readdata
    avs_s0_write     : in  std_logic                     := '0';  --         .write
    avs_s0_writedata : in  std_logic_vector(31 downto 0) := (others => '0');  -- .writedata
    clock_clk        : in  std_logic                     := '0';  --    clock.clk
    reset_n          : in  std_logic                     := '0';  --    reset.reset
    SENSOR           : in  std_logic                     := '0';  --    wheel sensor signal
    PWM_CTRL         : out std_logic;   -- external.name
    ACTIVATE         : out std_logic    --         .new_signal_1
    );
end entity PWM_Motor_Control;

architecture rtl of PWM_Motor_Control is
  constant cTimerResolution     : time    := 1us;  -- timer resolution for frequency/time measurement
  constant cTimeOut             : time    := 100ms;  -- timer resolution for frequency/time measurement

  -- QSYS unresolved signals for wrapper
  signal savs_s0_address   : std_ulogic_vector(2 downto 0);  --   avs_s0.address
  signal savs_s0_read      : std_ulogic;  --         .read
  signal savs_s0_readdata  : std_ulogic_vector(31 downto 0);  --         .readdata
  signal savs_s0_write     : std_ulogic;  --         .write
  signal savs_s0_writedata : std_ulogic_vector(31 downto 0);
  signal sclock_clk        : std_ulogic;  --    clock.clk
  signal sreset_n          : std_ulogic;  --    reset.reset
  signal sSENSOR           : std_ulogic;  --    sensor signal
  signal sPWM_CTRL         : std_ulogic;  -- external.name
  signal sACTIVATE         : std_ulogic;  --         .new_signal_1
  -- internal control signal
  signal trigger_pwm        : std_ulogic;  -- new pwm width received from bus
  signal trigger_pulses     : std_ulogic;  -- new pwm width received from bus
  signal PwmSig 			: std_ulogic;  -- pwm signal before multiplexer
  
  -- *** MODULE-REGISTERS *** --
  --- AVALON to IP
  -------------------------------------------------------------------------------
  -- Register 0 - control
  signal Reg0_Control           : std_ulogic_vector(31 downto 0);
    constant Reg0_Ctrl_EN_PWM     : natural := 0;  -- Bit 0: EN_PWM ..... Enable PWM Output
    constant Reg0_Ctrl_RUN        : natural := 1;  -- Bit 1: RUN ......... :1=RUN, :0=BRAKE
  -- Register 1 - duty cylce 0-
  signal Reg1_Ctrl_DutyCycle         : std_ulogic_vector(31 downto 0);
  -- Register 2 - mileage counter (sensor pulses) Value
  signal Reg2_Ctrl_Pulses			: std_ulogic_vector(31 downto 0);
  -------------------------------------------------------------------------------
  -- IP to AVALON (Read)
  -------------------------------------------------------------------------------
  -- Register 0 - control
  signal Reg0_Status            : std_ulogic_vector(31 downto 0);  -- spare status bits
	constant Reg0_Stat_OVLD       : natural := 0;
  signal Reg1_Stat_SpeedImp     : unsigned(31 downto 0);  -- impulse per time period
  signal Reg2_Stat_ImpCumulated : unsigned(31 downto 0);  -- cumulated value (counter)


begin

  -- wrapper for std_ulogic (to avoid tristate buffers ...)
  savs_s0_address   <= std_ulogic_vector(avs_s0_address);
  savs_s0_read      <= std_ulogic(avs_s0_read);
  avs_s0_readdata   <= std_logic_vector(savs_s0_readdata);
  savs_s0_write     <= std_ulogic(avs_s0_write);
  savs_s0_writedata <= std_ulogic_vector(avs_s0_writedata);
  sclock_clk        <= std_ulogic(clock_clk);
  sreset_n          <= std_ulogic(reset_n);
  PWM_CTRL          <= std_logic(sPWM_CTRL);
  ACTIVATE          <= std_logic(sACTIVATE);
  sSENSOR           <= std_ulogic(SENSOR);

  dataexchange : process(sclock_clk, sreset_n) is

  begin
    if (sreset_n = '0') then
      Reg0_Control   <= (others => '0');
      Reg1_Ctrl_DutyCycle <= (others => '0');
    elsif (sclock_clk'event and sclock_clk = '1') then
      trigger_pwm <= '0';
	  trigger_pulses <= '0';
      case savs_s0_address is
        when "000" =>                   -- REG0
          if (savs_s0_read = '1') then
            savs_s0_readdata <= Reg0_Status;
          end if;
          if (savs_s0_write = '1') then
            Reg0_Control <= savs_s0_writedata;
          end if;
        when "001" =>                   -- REG1
          if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg1_Stat_SpeedImp);
          end if;
          if (savs_s0_write = '1') then
            Reg1_Ctrl_DutyCycle <= savs_s0_writedata;
            trigger_pwm      <= '1';
          end if;
        when "010" =>                   -- REG2
          if (savs_s0_read = '1') then
            savs_s0_readdata <= std_ulogic_vector(Reg2_Stat_ImpCumulated);
          end if;
          if (savs_s0_write = '1') then
			Reg2_Ctrl_Pulses <= savs_s0_writedata;
			trigger_pulses      <= '1';
          end if;
        when "011" =>                   -- REG3
          if (savs_s0_read = '1') then
          -- nothing to read, so far
          end if;
          if (savs_s0_write = '1') then
          -- nothing to write, so far
          end if;
        when others =>
      -- nothing to do
      end case;

    end if;
  end process;

  pwmgen : entity work.pwmgen
    generic map (
      gClkFrequency    => cClkFrequency,
      gStrobeCycleTime => cStrobeCycleTime,
      gInitCounter     => to_unsigned(0, cResolutionBits),
      gInterPWM        => to_unsigned((2**cResolutionBits)-1, cResolutionBits)
      )
    port map (
      iClk              => sclock_clk,
      inRstAsync        => sreset_n,
      iEnReloadPWMWidth => trigger_pwm,
      iPWMWidth         => unsigned(Reg1_Ctrl_DutyCycle(cResolutionBits-1 downto 0)),
      oPwmSig           => PwmSig
      );

-- external outputs
  sPWM_CTRL <= PwmSig when ((sreset_n = cActivated) and (Reg0_Control(Reg0_Ctrl_EN_PWM) = cActivated))
               else cInactivated;

  sACTIVATE <= cActivated when (Reg0_Control(Reg0_Ctrl_RUN) = cActivated) and (sreset_n = cnInactivated)
               else cInactivated;                

-- wheel Sensor Timer
  speedSensorTimer : entity work.WheelEncoderTimer(RTL)
    generic map (
      gClkFrequency   => cClkFrequency,    -- system clock
      gTimerResolution => cTimerResolution,  -- sampling period time for sensor pulses
      gTimeOut        => cTimeOut       -- debounce period for sensor signal
      )
    port map (
      iClk          => sclock_clk,      -- system clock
      inResetAsync  => sreset_n,        -- system reset (asynchronous)
      iSensor       => sSENSOR,         -- sensor signal (pulses)
	  iSetPulses    => trigger_pulses,  -- set value command
	  iValue        => unsigned(Reg2_Ctrl_Pulses),  -- set value
      oCountPSample => Reg1_Stat_SpeedImp,  -- time measurement value of last sampling period (current speed value)
	  oPulses       => Reg2_Stat_ImpCumulated -- mileage counter
      );                                   

end architecture rtl;  -- of PWM_Motor_Control
