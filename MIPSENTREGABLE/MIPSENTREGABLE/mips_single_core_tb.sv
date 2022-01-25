import the_pkg::*;

module mips_single_core_tb;



logic clk;
logic dm_we;
logic dm_re;
logic [dmAddB-1:0] dm_ad;
logic [N-1:0] dm_d;
logic [N-1:0] dm_q;
logic [Pb-1:0] nxt_pc;
logic [Pb-1:0] PC;

op_code op;
func_code func;
logic [RegInBits-1:0]rs;
logic [RegInBits-1:0] rt;
logic [RegInBits-1:0] rd;
logic [saBits-1:0] sa;
logic [ImmBits-1:0] Imm;


						
MIPS		mips(.op_in(op),
					.func_in(func),
					.rs_in(rs),
					.rt_in(rt),
					.rd_in(rd),
					.sa_in(sa),
					.Imm_in(Imm),
					.dm_q(dm_q),
					.clk(clk),
					.PC(PC),
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
		mips_single_core_tb.mips.rf.registers[0] = 32'd0;
		mips_single_core_tb.mips.rf.registers[1] = 32'd1;
		mips_single_core_tb.mips.rf.registers[2] = 32'd1;
		mips_single_core_tb.mips.rf.registers[3] = 32'd3;
		mips_single_core_tb.mips.rf.registers[4] = 32'd4;
		mips_single_core_tb.mips.rf.registers[5] = 32'd5;
		mips_single_core_tb.mips.rf.registers[6] = 32'd6;
		mips_single_core_tb.mips.rf.registers[7] = 32'd7;
		mips_single_core_tb.mips.rf.registers[8] = 32'd8;
		mips_single_core_tb.mips.rf.registers[9] = 32'd9;
		mips_single_core_tb.mips.rf.registers[10] = 32'd10;
		mips_single_core_tb.mips.rf.registers[11] = 32'd11;
		mips_single_core_tb.mips.rf.registers[12] = 32'd12;
		mips_single_core_tb.mips.rf.registers[13] = 32'd13;
		mips_single_core_tb.mips.rf.registers[14] = 32'd14;
		mips_single_core_tb.mips.rf.registers[15] = 32'd15;
		mips_single_core_tb.mips.rf.registers[16] = 32'd16;
		mips_single_core_tb.mips.rf.registers[17] = 32'd17;
		mips_single_core_tb.mips.rf.registers[18] = 32'd0;
		mips_single_core_tb.mips.rf.registers[19] = 32'd0;
		mips_single_core_tb.mips.rf.registers[20] = 32'd0;
		mips_single_core_tb.mips.rf.registers[21] = 32'd0;
		mips_single_core_tb.mips.rf.registers[22] = 32'd0;
		mips_single_core_tb.mips.rf.registers[23] = 32'd0;
		mips_single_core_tb.mips.rf.registers[24] = 32'd0;
		mips_single_core_tb.mips.rf.registers[25] = 32'd0;
		mips_single_core_tb.mips.rf.registers[26] = 32'd0;
		mips_single_core_tb.mips.rf.registers[27] = 32'd0;
		mips_single_core_tb.mips.rf.registers[28] = 32'd0;
		mips_single_core_tb.mips.rf.registers[29] = 32'd0;
		mips_single_core_tb.mips.rf.registers[30] = 32'd0;
		mips_single_core_tb.mips.rf.registers[31] = 32'd31;

		
		mips_single_core_tb.ram.memoria[0] = 32'd0;
		mips_single_core_tb.ram.memoria[1] = 32'd1;
		mips_single_core_tb.ram.memoria[2] = 32'd1;
		mips_single_core_tb.ram.memoria[3] = 32'd3;
		mips_single_core_tb.ram.memoria[4] = 32'd4;
		mips_single_core_tb.ram.memoria[5] = 32'd5;
		mips_single_core_tb.ram.memoria[6] = 32'd6;
		mips_single_core_tb.ram.memoria[7] = 32'd7;
		mips_single_core_tb.ram.memoria[8] = 32'd8;
		mips_single_core_tb.ram.memoria[9] = 32'd9;
		mips_single_core_tb.ram.memoria[10] = 32'd10;
		mips_single_core_tb.ram.memoria[11] = 32'd1;
		mips_single_core_tb.ram.memoria[12] = 32'd12;
		mips_single_core_tb.ram.memoria[13] = 32'd13;
		mips_single_core_tb.ram.memoria[14] = 32'd14;
		mips_single_core_tb.ram.memoria[15] = 32'd15;
		mips_single_core_tb.ram.memoria[16] = 32'd16;
		mips_single_core_tb.ram.memoria[17] = 32'd17;
		mips_single_core_tb.ram.memoria[18] = 32'd0;
		mips_single_core_tb.ram.memoria[19] = 32'd0;
		mips_single_core_tb.ram.memoria[20] = 32'd0;
		mips_single_core_tb.ram.memoria[21] = 32'd0;
		mips_single_core_tb.ram.memoria[22] = 32'd22;
		mips_single_core_tb.ram.memoria[23] = 32'd0;
		mips_single_core_tb.ram.memoria[24] = 32'd0;
		mips_single_core_tb.ram.memoria[25] = 32'd0;
		mips_single_core_tb.ram.memoria[26] = 32'd0;
		mips_single_core_tb.ram.memoria[27] = 32'd0;
		mips_single_core_tb.ram.memoria[28] = 32'd0;
		mips_single_core_tb.ram.memoria[29] = 32'd0;
		mips_single_core_tb.ram.memoria[30] = 32'd0;
		mips_single_core_tb.ram.memoria[31] = 32'd0;
		
		PC = 32'd0;
		#1ns;
		#5ns;
		op = Rtype;
		func = ADD_f;
		rs = 5'd1;
		rt = 5'd2;
		rd = 5'd3;
		sa = 5'dZ;
		Imm= 16'dZ;
		//PC = ;
		
		#5ns;
		PC = nxt_pc;
		//#1ns;
		
		op = Rtype;
		func = SUB_f ;
		rs = 5'd5;
		rt = 5'd4;
		rd = 5'd6;
		sa = 5'dZ;
		Imm= 16'dZ;	
		
		#5ns;
		PC = nxt_pc;
		//#1ns;
		op = ADDI; //suma rs + 10 y guarda en rt
		//func = 6'dZ	;
		rs = 5'd7;
		rt = 5'd8;
		rd = 5'dZ;
		sa = 5'dZ;
		Imm= 16'd10;	
		
		#10ns;
		PC = nxt_pc;
		//#1ns;
		//SUBI
		op = SUBI; //suma rs + 10 y guarda en rt
		rs = 5'd9;
		rt = 5'd10;
		rd = 5'dZ;
		sa = 5'dZ;
		Imm= 16'd10;
		
		#10ns;
		PC = nxt_pc;
		//#1ns;
		//ANDI
		op = ANDI; //suma rs + 10 y guarda en rt
		rs = 5'd9;
		rt = 5'd10;
		rd = 5'dZ;
		sa = 5'dZ;
		Imm= 16'd10;
		
		//ORI
		
		//XORI
		
		#10ns;
		PC = nxt_pc;
		//#1ns;
		op = LUI_op; // 
		//func = 6'dZ;
		rs = 5'dZ;
		rt = 5'd9;
		rd = 5'dZ;
		sa = 5'dZ;
		Imm= 16'd3;	
		
		#10ns;
		PC = nxt_pc;
		//#1ns;
		//LLI
		//LWR
		
		op = SWR; //   Mem[rs] <-rt   Mem[10]<- rt   Mem[10]<-11
		//func = 6'dZ;
		rs = 5'd10;
		rt = 5'd11;
		rd = 5'dZ;
		sa = 5'dZ;
		Imm= 16'dZ;	
		
		
		#10ns;
		PC = nxt_pc;
		//#1ns;
		//SWI
		
		op = BEQ;  
		rs = 5'd12;
		rt =5'd12;
		rd =5'dZ;
		Imm = 5'd13;
		
		#10ns;
		PC = nxt_pc;
		//#1ns;
		//BNE		
		op = LWI;  //rt<-Mem[imm]  rt<-Mem[22]   rt<- 22 
		rs = 5'dZ;
		rt =5'd15;
		rd =5'dZ;
		Imm = 5'd22;
		//PC  = 16'd2;
		#10ns
		PC = nxt_pc;
		//#1ns;
		//PC = 32'd26;
		//JUMP
		#10ns;
		op = JUMP;  // PC <-15
		rs = 5'dZ;
		rt =5'dZ;
		rd =5'dZ;
		Imm = 5'd9;
		#10ns;
		PC = nxt_pc;
		//#2ns;
		//JAL
		
		op = JAL;  // r[31]<-PC+1; PC<-2;
		rs = 5'dZ;
		rt =5'dZ;
		rd =5'dZ;
		Imm = 5'd2;
		#10ns;
		PC = nxt_pc;
		//#ns;
		//RET
		op = RET;  //PC <-r[31]   PC<-14
		rs = 5'dZ;
		rt =5'dZ;
		rd =5'dZ;
		Imm = 5'd2;
		#10ns;
		PC = nxt_pc;
		#1ns;
	end 

always begin
		clk = 0;
		#5ns;
		clk = 1;
		#5ns;
	end

endmodule