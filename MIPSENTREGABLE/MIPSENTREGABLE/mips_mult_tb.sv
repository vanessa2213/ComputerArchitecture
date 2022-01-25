`timescale 1ns/100ps

import the_pkg::*;

module mips_mult_tb;

localparam HEX_CODE_FILE="program_hex.dat";


logic clk;
logic rst;

logic dm_we;
logic dm_re;
logic [dmAddB-1:0] dm_ad;
logic [N-1:0] dm_d;
logic [N-1:0] dm_q;

logic [Pb-1:0] nxt_pc;


//logic [Pb-1:0] PC;

op_code op;
func_code func;
logic [RegInBits-1:0]rs;
logic [RegInBits-1:0] rt;
logic [RegInBits-1:0] rd;
logic [saBits-1:0] sa;
logic [ImmBits-1:0] Imm;

logic [$clog2(MAX_NUM_INST)-1:0] address;
logic           [INST_WIDTH-1:0] instruction_from_bin_rom;
logic           [INST_WIDTH-1:0] instruction_from_hex_rom;

logic [N-1:0] ins;


rom rom(.address(nxt_pc),
        .instruction(ins)
		  //.PC(PC)
           );
			  
initial begin
    $readmemh(HEX_CODE_FILE, mips_mult_tb.rom.inst_mem);
end

						
MIPS		mips( .ins(ins),/*.op_in(op),
					.func_in(func),
					.rs_in(rs),
					.rt_in(rt),
					.rd_in(rd),
					.sa_in(sa),
					.Imm_in(Imm),*/
					.dm_q(dm_q),
					.clk(clk),
					.rst(rst),
					//.PC(PC),
					.dm_we(dm_we),
					.dm_re(dm_re),
					.nxt_pc(nxt_pc),
					.dm_d(dm_d),
					.dm_ad(dm_ad));


ram   ram(.clk(clk),
          .dm_we(dm_we),
          .dm_re(dm_re),
          .dm_ad(dm_ad),
          .dm_d(dm_d),
          .dm_q(dm_q));
			
initial begin
		//PC = 32'd0;
		          rst = 1;
                #10;
                rst = 0;
                #10;
                rst = 1;
					 
		mips_mult_tb.mips.rf.registers[0] = 32'd0;
		mips_mult_tb.mips.rf.registers[1] = 32'd1;
		mips_mult_tb.mips.rf.registers[2] = 32'd1;
		mips_mult_tb.mips.rf.registers[3] = 32'd3;
		mips_mult_tb.mips.rf.registers[4] = 32'd4;
		mips_mult_tb.mips.rf.registers[5] = 32'd5;
		mips_mult_tb.mips.rf.registers[6] = 32'd6;
		mips_mult_tb.mips.rf.registers[7] = 32'd7;
		mips_mult_tb.mips.rf.registers[8] = 32'd8;
		mips_mult_tb.mips.rf.registers[9] = 32'd9;
		mips_mult_tb.mips.rf.registers[10] = 32'd10;
		mips_mult_tb.mips.rf.registers[11] = 32'd11;
		mips_mult_tb.mips.rf.registers[12] = 32'd12;
		mips_mult_tb.mips.rf.registers[13] = 32'd13;
		mips_mult_tb.mips.rf.registers[14] = 32'd14;
		mips_mult_tb.mips.rf.registers[15] = 32'd15;
		mips_mult_tb.mips.rf.registers[16] = 32'd16;
		mips_mult_tb.mips.rf.registers[17] = 32'd17;
		mips_mult_tb.mips.rf.registers[18] = 32'd0;
		mips_mult_tb.mips.rf.registers[19] = 32'd0;
		mips_mult_tb.mips.rf.registers[20] = 32'd0;
		mips_mult_tb.mips.rf.registers[21] = 32'd0;
		mips_mult_tb.mips.rf.registers[22] = 32'd0;
		mips_mult_tb.mips.rf.registers[23] = 32'd0;
		mips_mult_tb.mips.rf.registers[24] = 32'd0;
		mips_mult_tb.mips.rf.registers[25] = 32'd0;
		mips_mult_tb.mips.rf.registers[26] = 32'd0;
		mips_mult_tb.mips.rf.registers[27] = 32'd0;
		mips_mult_tb.mips.rf.registers[28] = 32'd0;
		mips_mult_tb.mips.rf.registers[29] = 32'd0;
		mips_mult_tb.mips.rf.registers[30] = 32'd0;
		mips_mult_tb.mips.rf.registers[31] = 32'd31;

		
		mips_mult_tb.ram.memoria[0] = 32'd2;
		mips_mult_tb.ram.memoria[1] = 32'd3;
		mips_mult_tb.ram.memoria[2] = 32'd1;
		mips_mult_tb.ram.memoria[3] = 32'd0;
		mips_mult_tb.ram.memoria[4] = 32'd4;
		mips_mult_tb.ram.memoria[5] = 32'd5;
		mips_mult_tb.ram.memoria[6] = 32'd6;
		mips_mult_tb.ram.memoria[7] = 32'd7;
		mips_mult_tb.ram.memoria[8] = 32'd8;
		mips_mult_tb.ram.memoria[9] = 32'd9;
		mips_mult_tb.ram.memoria[10] = 32'd10;
		mips_mult_tb.ram.memoria[11] = 32'd1;
		mips_mult_tb.ram.memoria[12] = 32'd12;
		mips_mult_tb.ram.memoria[13] = 32'd13;
		mips_mult_tb.ram.memoria[14] = 32'd14;
		mips_mult_tb.ram.memoria[15] = 32'd15;
		mips_mult_tb.ram.memoria[16] = 32'd16;
		mips_mult_tb.ram.memoria[17] = 32'd17;
		mips_mult_tb.ram.memoria[18] = 32'd0;
		mips_mult_tb.ram.memoria[19] = 32'd0;
		mips_mult_tb.ram.memoria[20] = 32'd0;
		mips_mult_tb.ram.memoria[21] = 32'd0;
		mips_mult_tb.ram.memoria[22] = 32'd22;
		mips_mult_tb.ram.memoria[23] = 32'd0;
		mips_mult_tb.ram.memoria[24] = 32'd0;
		mips_mult_tb.ram.memoria[25] = 32'd0;
		mips_mult_tb.ram.memoria[26] = 32'd0;
		mips_mult_tb.ram.memoria[27] = 32'd0;
		mips_mult_tb.ram.memoria[28] = 32'd0;
		mips_mult_tb.ram.memoria[29] = 32'd0;
		mips_mult_tb.ram.memoria[30] = 32'd0;
		mips_mult_tb.ram.memoria[31] = 32'd0;
	end 

always begin
		clk = 0;
		#5ns;
		clk = 1;
		#5ns;
	end

endmodule
