onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /status_reg_tb/A
add wave -noupdate /status_reg_tb/B
add wave -noupdate /status_reg_tb/op
add wave -noupdate /status_reg_tb/R
add wave -noupdate /status_reg_tb/zero
add wave -noupdate /status_reg_tb/carryf
add wave -noupdate /status_reg_tb/negativef
add wave -noupdate /status_reg_tb/overflowf
add wave -noupdate /status_reg_tb/clk
add wave -noupdate /status_reg_tb/rst
add wave -noupdate -expand /status_reg_tb/sr/registers
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {65880 ps} 0}
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
WaveRestoreZoom {7741 ps} {73277 ps}
