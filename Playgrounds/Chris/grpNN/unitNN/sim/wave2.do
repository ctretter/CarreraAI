onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbnn/NN/Rdy1
add wave -noupdate /tbnn/NN/Rdy2
add wave -noupdate -radix decimal /tbnn/NN/Throttle
add wave -noupdate -radix decimal /tbnn/NN/Dendrites1
add wave -noupdate -radix decimal /tbnn/NN/Dendrites0
add wave -noupdate /tbnn/NN/FirstStage/State
add wave -noupdate /tbnn/NN/SecondStage/State
add wave -noupdate -radix decimal /tbnn/NN/SecondStage/ntmpDendrites
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
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
WaveRestoreZoom {2040 ns} {3040 ns}
