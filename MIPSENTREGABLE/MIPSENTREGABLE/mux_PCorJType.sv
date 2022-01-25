import the_pkg::*;

module mux_PCorJType(
								input logic mux_PC_JType,
								input logic ImmorReg,
								input logic [ImmBits-1:0]Imm,
								input logic [N-1:0]Qs,
								input logic [Pb-1:0]PC,
								output logic [N-1:0]mux_PCorJType_out
							);
							
logic [Pb-1:0] outmux;

mux_ImmorReg1  mImmRe(.ImmorReg(ImmorReg),
							 .Imm(Imm),
							 .Qs(Qs),
							 .mux_ImmorReg_out(outmux)
							);	
							
always_comb
	begin
		case(mux_PC_JType)
			1'b0: mux_PCorJType_out = PC + 32'd1;
			1'b1: mux_PCorJType_out = outmux;
			default: mux_PCorJType_out = 32'hZZZZZZZZ;
		endcase	
	end
	
							
endmodule
