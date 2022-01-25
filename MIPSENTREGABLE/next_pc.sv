import the_pkg::*;

module next_pc( input  logic zero,
					 input  logic beq_bne,
					 input  logic branch,
					 input  logic mux_PC_JType,
					 input  logic ImmorReg,
					 
					 input logic [N-1:0]Qs,
					 input  logic [Pb-1:0]PC,
					 input  logic [ImmBits-1:0]Imm,
					 output logic [Pb-1:0]nxt_pc);

logic [Pb-1:0]PCbeq;
logic [Pb-1:0]PCbne;
logic [Pb-1:0]PCb;

logic [Pb-1:0]muxPCJTout;
					 
mux_beq  mbeq(.zero(zero),
				  .Imm(Imm),
				  .PC(PC),
				  .PCbeq(PCbeq));
				  
mux_bne  mbne(.zero(zero),
				  .Imm(Imm),
				  .PC(PC),
				  .PCbne(PCbne));
				  
mux_beqorbne  mbeqbne( .beq_bne(beq_bne),
							  .PCbeq(PCbeq),
							  .PCbne(PCbne),
							  .PCb(PCb));
							  
mux_PCorJType mux_PCJT(	.mux_PC_JType(mux_PC_JType),
								.ImmorReg(ImmorReg),
								.Imm(Imm),
								.Qs(Qs),
								.PC(PC),
								.mux_PCorJType_out(muxPCJTout)
							);
always_comb 
	begin
		case(branch)
			1'b0: nxt_pc = muxPCJTout ;
			1'b1: nxt_pc = PCb;
			default: nxt_pc = 32'hZZZZZZZZ;
		endcase
	end
	
endmodule
