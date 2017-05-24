onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbnn/NN/Enable
add wave -noupdate -radix decimal /tbnn/NN/Dendrites1
add wave -noupdate -radix decimal /tbnn/NN/Dendrites0
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/tmpDendrites
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/IP_Result
add wave -noupdate /tbnn/NN/FirstStage/Exponent
add wave -noupdate /tbnn/NN/FirstStage/Count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {73 ns} 0}
configure wave -namecolwidth 150
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
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
