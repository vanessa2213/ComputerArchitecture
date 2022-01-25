onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mealy_fsm_tb/clk
add wave -noupdate /mealy_fsm_tb/asyn_n_rst
add wave -noupdate /mealy_fsm_tb/start
add wave -noupdate /mealy_fsm_tb/digit_in
add wave -noupdate /mealy_fsm_tb/sequence_detected
add wave -noupdate /mealy_fsm_tb/mfsm/current_s
add wave -noupdate /mealy_fsm_tb/mfsm/next_s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9243 ps} 0}
quietly wave cursor active 1
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
configure wave -timelineunits ps
update
WaveRestoreZoom {104040 ps} {120840 ps}
