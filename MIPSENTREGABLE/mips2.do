onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_mult_tb/mips/ins
add wave -noupdate /mips_mult_tb/mips/dm_q
add wave -noupdate /mips_mult_tb/mips/clk
add wave -noupdate /mips_mult_tb/mips/rst
add wave -noupdate /mips_mult_tb/mips/dm_we
add wave -noupdate /mips_mult_tb/mips/dm_re
add wave -noupdate -radix decimal /mips_mult_tb/mips/nxt_pc1
add wave -noupdate -radix decimal -childformat {{{/mips_mult_tb/mips/PC[31]} -radix decimal} {{/mips_mult_tb/mips/PC[30]} -radix decimal} {{/mips_mult_tb/mips/PC[29]} -radix decimal} {{/mips_mult_tb/mips/PC[28]} -radix decimal} {{/mips_mult_tb/mips/PC[27]} -radix decimal} {{/mips_mult_tb/mips/PC[26]} -radix decimal} {{/mips_mult_tb/mips/PC[25]} -radix decimal} {{/mips_mult_tb/mips/PC[24]} -radix decimal} {{/mips_mult_tb/mips/PC[23]} -radix decimal} {{/mips_mult_tb/mips/PC[22]} -radix decimal} {{/mips_mult_tb/mips/PC[21]} -radix decimal} {{/mips_mult_tb/mips/PC[20]} -radix decimal} {{/mips_mult_tb/mips/PC[19]} -radix decimal} {{/mips_mult_tb/mips/PC[18]} -radix decimal} {{/mips_mult_tb/mips/PC[17]} -radix decimal} {{/mips_mult_tb/mips/PC[16]} -radix decimal} {{/mips_mult_tb/mips/PC[15]} -radix decimal} {{/mips_mult_tb/mips/PC[14]} -radix decimal} {{/mips_mult_tb/mips/PC[13]} -radix decimal} {{/mips_mult_tb/mips/PC[12]} -radix decimal} {{/mips_mult_tb/mips/PC[11]} -radix decimal} {{/mips_mult_tb/mips/PC[10]} -radix decimal} {{/mips_mult_tb/mips/PC[9]} -radix decimal} {{/mips_mult_tb/mips/PC[8]} -radix decimal} {{/mips_mult_tb/mips/PC[7]} -radix decimal} {{/mips_mult_tb/mips/PC[6]} -radix decimal} {{/mips_mult_tb/mips/PC[5]} -radix decimal} {{/mips_mult_tb/mips/PC[4]} -radix decimal} {{/mips_mult_tb/mips/PC[3]} -radix decimal} {{/mips_mult_tb/mips/PC[2]} -radix decimal} {{/mips_mult_tb/mips/PC[1]} -radix decimal} {{/mips_mult_tb/mips/PC[0]} -radix decimal}} -subitemconfig {{/mips_mult_tb/mips/PC[31]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[30]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[29]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[28]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[27]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[26]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[25]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[24]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[23]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[22]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[21]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[20]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[19]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[18]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[17]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[16]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[15]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[14]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[13]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[12]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[11]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[10]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[9]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[8]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[7]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[6]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[5]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[4]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[3]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[2]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[1]} {-height 15 -radix decimal} {/mips_mult_tb/mips/PC[0]} {-height 15 -radix decimal}} /mips_mult_tb/mips/PC
add wave -noupdate /mips_mult_tb/mips/branch
add wave -noupdate -radix decimal /mips_mult_tb/mips/nxt_pc
add wave -noupdate /mips_mult_tb/mips/dm_d
add wave -noupdate /mips_mult_tb/mips/dm_ad
add wave -noupdate -radix decimal /mips_mult_tb/rom/address
add wave -noupdate -radix hexadecimal /mips_mult_tb/rom/instruction
add wave -noupdate -childformat {{{/mips_mult_tb/mips/rf/registers[3]} -radix decimal} {{/mips_mult_tb/mips/rf/registers[2]} -radix decimal} {{/mips_mult_tb/mips/rf/registers[1]} -radix decimal} {{/mips_mult_tb/mips/rf/registers[0]} -radix decimal}} -subitemconfig {{/mips_mult_tb/mips/rf/registers[3]} {-height 15 -radix decimal} {/mips_mult_tb/mips/rf/registers[2]} {-height 15 -radix decimal} {/mips_mult_tb/mips/rf/registers[1]} {-height 15 -radix decimal} {/mips_mult_tb/mips/rf/registers[0]} {-height 15 -radix decimal}} /mips_mult_tb/mips/rf/registers
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {135000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 208
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
WaveRestoreZoom {117800 ps} {162300 ps}
