onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Sensorsignal
add wave -noupdate /tbwheelencodertimer/wheelsensor
add wave -noupdate -divider CounterOutput
add wave -noupdate -format Analog-Step -height 74 -max 615.0 -radix decimal /tbwheelencodertimer/Output
add wave -noupdate -format Analog-Step -height 74 -max 151.0 -radix decimal /tbwheelencodertimer/CumOutput
add wave -noupdate -divider Details
add wave -noupdate /tbwheelencodertimer/DUT/SampleStrobeGen/oStrobe
add wave -noupdate /tbwheelencodertimer/DUT/SampleStrobeGen/gClkFrequency
add wave -noupdate /tbwheelencodertimer/DUT/SampleStrobeGen/gStrobeCycleTime
add wave -noupdate /tbwheelencodertimer/DUT/SampleStrobeGen/cClkCycPerStrobeCyc
add wave -noupdate /tbwheelencodertimer/DUT/cTimeoutValue
add wave -noupdate -childformat {{/tbwheelencodertimer/DUT/R.error -radix decimal} {/tbwheelencodertimer/DUT/R.Delay -radix decimal} {/tbwheelencodertimer/DUT/R.ValidData -radix decimal} {/tbwheelencodertimer/DUT/R.Pulses -radix decimal}} -expand -subitemconfig {/tbwheelencodertimer/DUT/R.error {-radix decimal} /tbwheelencodertimer/DUT/R.Delay {-radix decimal} /tbwheelencodertimer/DUT/R.ValidData {-radix decimal} /tbwheelencodertimer/DUT/R.Pulses {-radix decimal}} /tbwheelencodertimer/DUT/R
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82401384083 ps} 0} {{Cursor 2} {96803117154 ps} 0} {{Cursor 3} {60384083045 ps} 0} {{Cursor 4} {35732150000 ps} 0}
quietly wave cursor active 4
configure wave -namecolwidth 350
configure wave -valuecolwidth 73
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
WaveRestoreZoom {0 ps} {210 ms}
