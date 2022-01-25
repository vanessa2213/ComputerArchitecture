import the_pkg::*;

module mux_bne( input  logic zero,
					 input  logic [ImmBits-1:0]Imm,
					 input  logic [Pb-1:0]PC,
					 output logic [Pb-1:0]PCbne);

always_comb 
	begin
		case(zero)
			1'b0: PCbne = {16'd0,Imm};
			1'b1: PCbne = PC + 1'b1;
			default: PCbne = 32'hZZZZ;
		endcase
		
	end
					 

endmodule
