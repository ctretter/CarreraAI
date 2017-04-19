onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {External Signals}
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/PWM_CTRL
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/ACTIVATE
add wave -noupdate /tbpwm_motor_control/opwm_out
add wave -noupdate /tbpwm_motor_control/activate_motor
add wave -noupdate -divider {AVALON Interface}
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/avs_s0_address
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/avs_s0_read
add wave -noupdate -radix unsigned /tbpwm_motor_control/ip_core_pwm/avs_s0_readdata
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/avs_s0_write
add wave -noupdate -radix decimal /tbpwm_motor_control/ip_core_pwm/avs_s0_writedata
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/clock_clk
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/reset_n
add wave -noupdate -divider PWMGen
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/gClkFrequency
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/TheStrobeGen_1/cClkCycPerStrobeCyc
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/TheStrobeGen_1/cClkCounterHighIndex
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/gStrobeCycleTime
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/Strobe
add wave -noupdate -radix unsigned /tbpwm_motor_control/ip_core_pwm/pwmgen/iPWMWidth
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/ThePwmGenDatapath_1/iEnLevel
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/ThePwmGenDatapath_1/iEnLevelA
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/ThePwmGenDatapath_1/iLevelA
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/ThePwmGenDatapath_1/RegLevelA
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/pwmgen/ThePwmGenDatapath_1/NextRegLevelA
add wave -noupdate -divider WheelSensor
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/gQSYS_ClkFrequency_Hz
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/gQSYS_MotorFrequency_Hz
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/gQSYS_TimerResolution_us
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/gQSYS_TimeOut_ms
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/gQSYS_StableTime_us
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/gQSYS_WrongLevelCount
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/sSENSOR
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/PwmSig
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/cStrobeCycleTime
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/cTimerResolution
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/cTimeOut
add wave -noupdate /tbpwm_motor_control/ip_core_pwm/cStableTime
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8718484514 ps} 0} {{Cursor 2} {25562718425 ps} 0} {{Cursor 4} {17386831630 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 496
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 1
configure wave -timelineunits ns
update
WaveRestoreZoom {8284487500 ps} {41669237500 ps}
