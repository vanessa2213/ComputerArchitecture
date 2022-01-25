onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_single_core_tb/clk
add wave -noupdate /mips_single_core_tb/dm_we
add wave -noupdate /mips_single_core_tb/dm_re
add wave -noupdate -radix binary /mips_single_core_tb/dm_ad
add wave -noupdate /mips_single_core_tb/dm_d
add wave -noupdate /mips_single_core_tb/dm_q
add wave -noupdate -radix decimal /mips_single_core_tb/nxt_pc
add wave -noupdate -radix decimal /mips_single_core_tb/PC
add wave -noupdate /mips_single_core_tb/op
add wave -noupdate /mips_single_core_tb/func
add wave -noupdate /mips_single_core_tb/rs
add wave -noupdate /mips_single_core_tb/rt
add wave -noupdate /mips_single_core_tb/rd
add wave -noupdate /mips_single_core_tb/sa
add wave -noupdate /mips_single_core_tb/Imm
add wave -noupdate /mips_single_core_tb/ram/memoria
add wave -noupdate -childformat {{{/mips_single_core_tb/mips/rf/registers[31]} -radix decimal}} -expand -subitemconfig {{/mips_single_core_tb/mips/rf/registers[31]} {-height 15 -radix decimal}} /mips_single_core_tb/mips/rf/registers
add wave -noupdate /mips_single_core_tb/mips/nxPC/zero
add wave -noupdate /mips_single_core_tb/mips/nxPC/beq_bne
add wave -noupdate /mips_single_core_tb/mips/nxPC/branch
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PC_JType
add wave -noupdate /mips_single_core_tb/mips/nxPC/ImmorReg
add wave -noupdate -radix decimal /mips_single_core_tb/mips/nxPC/nxt_pc
add wave -noupdate -radix decimal /mips_single_core_tb/mips/nxPC/mux_PCJT/PC
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeq/zero
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeq/Imm
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeq/PC
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeq/PCbeq
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbne/zero
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbne/Imm
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbne/PC
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbne/PCbne
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeqbne/beq_bne
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeqbne/PCbeq
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeqbne/PCbne
add wave -noupdate /mips_single_core_tb/mips/nxPC/mbeqbne/PCb
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/mux_PC_JType
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/ImmorReg
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/Imm
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/Qs
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/PC
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/mux_PCorJType_out
add wave -noupdate /mips_single_core_tb/mips/nxPC/mux_PCJT/outmux
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {105640 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 277
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
WaveRestoreZoom {108790 ps} {120590 ps}
