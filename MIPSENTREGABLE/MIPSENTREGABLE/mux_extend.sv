import the_pkg::*;

module mux_extend( 
						input  logic sign_zero,
						input  logic [ImmBits-1:0]Imm,
						output logic [N-1:0]Imm_ext);

always_comb
	begin
		 case(sign_zero)
			1'b0: Imm_ext = {16'(Imm[15]),Imm};
			1'b1: Imm_ext = {16'd0,Imm};
			default: Imm_ext = 32'hZZZZZZZZ;
		 endcase
	end
	
endmodule
