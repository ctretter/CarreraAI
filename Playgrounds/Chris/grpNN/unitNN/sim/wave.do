onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbnn/NN/Enable
add wave -noupdate -radix decimal /tbnn/NN/Dendrites1
add wave -noupdate -radix decimal /tbnn/NN/Dendrites0
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/tmpDendrites
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/IP_Result
add wave -noupdate /tbnn/NN/FirstStage/Exponent
add wave -noupdate /tbnn/NN/FirstStage/Count
add wave -noupdate /tbnn/NN/FirstStage/ni
add wave -noupdate /tbnn/NN/FirstStage/iclk
add wave -noupdate /tbnn/NN/FirstStage/State
add wave -noupdate /tbnn/NN/FirstStage/Reset
add wave -noupdate -radix decimal -childformat {{/tbnn/NN/FirstStage/iValues(4) -radix decimal} {/tbnn/NN/FirstStage/iValues(3) -radix decimal} {/tbnn/NN/FirstStage/iValues(2) -radix decimal} {/tbnn/NN/FirstStage/iValues(1) -radix decimal} {/tbnn/NN/FirstStage/iValues(0) -radix decimal}} -subitemconfig {/tbnn/NN/FirstStage/iValues(4) {-height 15 -radix decimal} /tbnn/NN/FirstStage/iValues(3) {-height 15 -radix decimal} /tbnn/NN/FirstStage/iValues(2) {-height 15 -radix decimal} /tbnn/NN/FirstStage/iValues(1) {-height 15 -radix decimal} /tbnn/NN/FirstStage/iValues(0) {-height 15 -radix decimal}} /tbnn/NN/FirstStage/iValues
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/tmpDendrites
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/ntmpDendrites
add wave -noupdate -radix decimal -childformat {{/tbnn/NN/FirstStage/SynWeigth(2) -radix decimal -childformat {{/tbnn/NN/FirstStage/SynWeigth(2)(4) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(3) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(2) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(1) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(0) -radix decimal}}} {/tbnn/NN/FirstStage/SynWeigth(1) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(0) -radix decimal}} -subitemconfig {/tbnn/NN/FirstStage/SynWeigth(2) {-height 15 -radix decimal -childformat {{/tbnn/NN/FirstStage/SynWeigth(2)(4) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(3) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(2) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(1) -radix decimal} {/tbnn/NN/FirstStage/SynWeigth(2)(0) -radix decimal}}} /tbnn/NN/FirstStage/SynWeigth(2)(4) {-height 15 -radix decimal} /tbnn/NN/FirstStage/SynWeigth(2)(3) {-height 15 -radix decimal} /tbnn/NN/FirstStage/SynWeigth(2)(2) {-height 15 -radix decimal} /tbnn/NN/FirstStage/SynWeigth(2)(1) {-height 15 -radix decimal} /tbnn/NN/FirstStage/SynWeigth(2)(0) {-height 15 -radix decimal} /tbnn/NN/FirstStage/SynWeigth(1) {-height 15 -radix decimal} /tbnn/NN/FirstStage/SynWeigth(0) {-height 15 -radix decimal}} /tbnn/NN/FirstStage/SynWeigth
add wave -noupdate -radix decimal /tbnn/NN/FirstStage/Comb/vtmpMatrixMul
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55 ns} 0}
configure wave -namecolwidth 255
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
WaveRestoreZoom {34 ns} {84 ns}
