import the_pkg::*;

module MIPS(	input logic [N-1:0] ins,
					/*input   op_code op_in,
					input   func_code func_in,
					input   logic [RegInBits-1:0]rs_in,
					input   logic [RegInBits-1:0] rt_in,
					input   logic [RegInBits-1:0] rd_in,
					input   logic [saBits-1:0] sa_in,
					input   logic [ImmBits-1:0] Imm_in*/
					
					input   logic [N-1:0]   dm_q,
					input   logic           clk,
					input	  logic 				rst,
					
				//	input   logic [Pb-1:0] PC,
					output  logic  dm_we,
					output  logic  dm_re,
					
					output  logic [Pb-1:0] nxt_pc,
					output  logic [N-1:0]   dm_d,
					output  logic [dmAddB-1:0]dm_ad);
					
op_code op;
func_code func;
logic [RegInBits-1:0] rs;
logic [RegInBits-1:0] rt;
logic [RegInBits-1:0] rd;
logic [saBits-1:0] sa;
logic [ImmBits-1:0] Imm;

logic [Pb-1:0] nxt_pc1;

alu_op_d alu_op;
logic rf_we;
logic mux_Immi;
logic mux_alu;

logic branch;
logic beq_ben;
logic mux_rdd;
logic mux_D;
logic mux_dm_ad;
logic sign_zero;
logic mux_Imm_Reg;
logic	mux_PC_JType;
logic mux_JType_IType;
logic mux_dmq_PC;
logic mux_RET;

logic [BR-1:0] realrs;
logic [BR-1:0] realrd;
logic [N-1:0]R_ALU;

logic [N-1:0]D;

logic [N-1:0]Qs;
logic [N-1:0]Qt;

logic [N-1:0]Imm_ext;

logic [N-1:0]out_muxImm;

logic [N-1:0]B;

logic [Pb-1:0] PC;

logic zero;


always_ff@(posedge clk, negedge rst)begin
    if(!rst)begin
        PC <= 0;
    end
    else begin
        PC <= nxt_pc1;
    end
end

assign nxt_pc = PC;

instruction_decoder id(	.ins(ins),/*.op_in(op_in),
								.func_in(func_in),
								.rs_in(rs_in),
								.rt_in(rt_in),
								.rd_in(rd_in),
								.sa_in(sa_in),
								.Imm_in(Imm_in),*/
								.op(op),
								.func(func),
								.rs(rs),
								.rt(rt),
								.rd(rd),
								.sa(sa),
								.Imm(Imm));	
				
				
controller 			con( 	.op(op),
								.func(func),
								//.jump(jump)
								.alu_op(alu_op),
								.rf_we(rf_we),
								.mux_Imm(mux_Immi),
								.mux_alu(mux_alu),
								.dm_re(dm_re),
								.dm_we(dm_we),
								.branch(branch),
								.beq_ben(beq_ben),
								.mux_rd(mux_rdd),
								.mux_D(mux_D),
								.mux_dm_ad(mux_dm_ad),
								.sign_zero(sign_zero),
								.mux_Imm_Reg(mux_Imm_Reg),
								.mux_PC_JType(mux_PC_JType),
								.mux_JType_IType(mux_JType_IType),
								.mux_dmq_PC(mux_dmq_PC),
								.mux_RET(mux_RET)
						  );
						  
mux_rs				muxrs(.rs(rs),
								.mux_RET(mux_RET),
								.realrs(realrs));
									
mux_rd				muxrd(.rd(rd),
								.rt(rt),
								.mux_rdd(mux_rdd),
								.mux_JType_IType(mux_JType_IType),
								.realrd(realrd));
								
mux_Data				muxData(	.mux_D(mux_D),
									.mux_dmq_PC(mux_dmq_PC),
									.PC(PC),
									.R(R_ALU),
									.dm_q(dm_q),
									.D(D));
			
regfile 				rf(	.clk(clk),
								.we(rf_we),
								.rs(realrs),
								.rt(rt),
								.rd(realrd),
								.D(D),
								.Qs(Qs),
								.Qt(Qt));
								
mux_extend			me( .sign_zero(sign_zero),
							 .Imm(Imm),
							 .Imm_ext(Imm_ext));

mux_Imm				mImm(	.mux_Immi(mux_Immi),
								.Imm_ext(Imm_ext),
								.sa(sa),
								.out_muxImm(out_muxImm));

mux_ALU1				muxALU(.mux_alu(mux_alu),
								 .Qt(Qt),
								 .out_muxImm(out_muxImm),
								 .B(B));
								 
ALU 		        	ALU(	.A(Qs),
								.B(B),
								.alu_op(alu_op),
								.R(R_ALU),
								.zero(zero));
								
next_pc				nxPC(		.zero(zero),
									.beq_bne(beq_ben),
									.branch(branch),
									.mux_PC_JType(mux_PC_JType),
									.ImmorReg(mux_Imm_Reg),
									.Qs(Qs),
									.PC(PC),
									.Imm(Imm),
									.nxt_pc(nxt_pc1));
									
mux_dmadd 			mdmad(	.mux_dm_ad(mux_dm_ad),
									.Qs(Qs),
									.Imm(Imm),
									.dm_ad(dm_ad));

assign dm_d = Qt;									
					
endmodule
