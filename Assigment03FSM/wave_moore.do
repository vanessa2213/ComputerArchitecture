onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /moore_fsm_tb/clk
add wave -noupdate /moore_fsm_tb/asyn_n_rst
add wave -noupdate /moore_fsm_tb/start
add wave -noupdate -radix unsigned /moore_fsm_tb/digit_in
add wave -noupdate /moore_fsm_tb/sequence_detected
add wave -noupdate /moore_fsm_tb/mfsm/clk
add wave -noupdate /moore_fsm_tb/mfsm/asyn_n_rst
add wave -noupdate /moore_fsm_tb/mfsm/start
add wave -noupdate /moore_fsm_tb/mfsm/digit_in
add wave -noupdate /moore_fsm_tb/mfsm/sequence_detected
add wave -noupdate /moore_fsm_tb/mfsm/current_s
add wave -noupdate /moore_fsm_tb/mfsm/next_s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {94476 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 179
configure wave -valuecolwidth 45
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
WaveRestoreZoom {82259 ps} {121987 ps}
