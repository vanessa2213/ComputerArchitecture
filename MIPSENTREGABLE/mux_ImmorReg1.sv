import the_pkg::*;

module mux_ImmorReg1(
								input logic ImmorReg,
								input logic [ImmBits-1:0]Imm,
								input logic [N-1:0]Qs,
								output logic [N-1:0]mux_ImmorReg_out
							);

						
always_comb
	begin
		case(ImmorReg)
			1'b0: mux_ImmorReg_out = {16'd0,Imm};
			1'b1: mux_ImmorReg_out = Qs;
			default: mux_ImmorReg_out = 32'hZZZZZZZZ;
		endcase	
	end
	
							
endmodule
