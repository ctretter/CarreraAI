onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbyawinterpreter/uut/gDataWidth
add wave -noupdate /tbyawinterpreter/uut/gFilterSteps
add wave -noupdate /tbyawinterpreter/uut/gYawRateLeft
add wave -noupdate /tbyawinterpreter/uut/gYawRateRight
add wave -noupdate /tbyawinterpreter/uut/inResetAsync
add wave -noupdate /tbyawinterpreter/uut/iClk
add wave -noupdate /tbyawinterpreter/uut/iSampleClk
add wave -noupdate -radix decimal /tbyawinterpreter/uut/iCurrentYawRate
add wave -noupdate -radix decimal /tbyawinterpreter/uut/YawRateBuffer
add wave -noupdate -radix decimal /tbyawinterpreter/uut/SumOfBuffer
add wave -noupdate /tbyawinterpreter/uut/Direction
add wave -noupdate /tbyawinterpreter/uut/oDirection
add wave -noupdate /tbyawinterpreter/uut/DataCalculated
add wave -noupdate /tbyawinterpreter/uut/MemAccessCnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 264
configure wave -valuecolwidth 106
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {15340 ps}
