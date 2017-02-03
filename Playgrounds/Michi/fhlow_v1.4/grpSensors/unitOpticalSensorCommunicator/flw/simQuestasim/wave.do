onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbopticalsensorcommunicator/iClk
add wave -noupdate /tbopticalsensorcommunicator/uut/iOneMHzStrobe
add wave -noupdate /tbopticalsensorcommunicator/inResetAsync
add wave -noupdate /tbopticalsensorcommunicator/iMISO
add wave -noupdate /tbopticalsensorcommunicator/oMOSI
add wave -noupdate /tbopticalsensorcommunicator/oSelect
add wave -noupdate /tbopticalsensorcommunicator/oSysClk
add wave -noupdate /tbopticalsensorcommunicator/oDataValid
add wave -noupdate -radix hexadecimal /tbopticalsensorcommunicator/oDataX
add wave -noupdate -radix hexadecimal /tbopticalsensorcommunicator/oDataY
add wave -noupdate -radix hexadecimal /tbopticalsensorcommunicator/DataFromFPGA
add wave -noupdate -radix hexadecimal /tbopticalsensorcommunicator/DataToFPGA
add wave -noupdate /tbopticalsensorcommunicator/uut/State
add wave -noupdate -radix hexadecimal /tbopticalsensorcommunicator/uut/BurstRegData
add wave -noupdate /tbopticalsensorcommunicator/uut/MasterOutput
add wave -noupdate /tbopticalsensorcommunicator/uut/SlaveClkCounter
add wave -noupdate /tbopticalsensorcommunicator/uut/SysClkGenCounter
add wave -noupdate /tbopticalsensorcommunicator/uut/CntWaitCycles
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5800002 ps} 0} {{Cursor 2} {9070000 ps} 0}
configure wave -namecolwidth 303
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
WaveRestoreZoom {0 ps} {15372032 ps}
