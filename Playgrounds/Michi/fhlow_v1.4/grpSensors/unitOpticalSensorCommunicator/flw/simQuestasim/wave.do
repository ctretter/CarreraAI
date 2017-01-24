onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbopticalsensorcommunicator/DataFromFPGA
add wave -noupdate /tbopticalsensorcommunicator/DataToFPGA
add wave -noupdate /tbopticalsensorcommunicator/uut/inResetAsync
add wave -noupdate /tbopticalsensorcommunicator/uut/iClk
add wave -noupdate /tbopticalsensorcommunicator/uut/iMISO
add wave -noupdate /tbopticalsensorcommunicator/uut/oMOSI
add wave -noupdate /tbopticalsensorcommunicator/uut/oSelect
add wave -noupdate /tbopticalsensorcommunicator/uut/oSysClk
add wave -noupdate /tbopticalsensorcommunicator/uut/oDataValid
add wave -noupdate /tbopticalsensorcommunicator/uut/oDataX
add wave -noupdate /tbopticalsensorcommunicator/uut/oDataY
add wave -noupdate /tbopticalsensorcommunicator/uut/State
add wave -noupdate /tbopticalsensorcommunicator/uut/BurstRegData
add wave -noupdate /tbopticalsensorcommunicator/uut/Sel
add wave -noupdate /tbopticalsensorcommunicator/uut/SlaveClkCounter
add wave -noupdate /tbopticalsensorcommunicator/uut/SysClkGenCounter
add wave -noupdate /tbopticalsensorcommunicator/uut/CntWaitCycles
add wave -noupdate /tbopticalsensorcommunicator/uut/ClkGenCounter
add wave -noupdate /tbopticalsensorcommunicator/uut/OneMHzSpike
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2199999188 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 455
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2734686208 ps}
