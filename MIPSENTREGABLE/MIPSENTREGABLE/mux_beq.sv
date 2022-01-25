import the_pkg::*;

module mux_beq( input  logic zero,
					 input  logic [ImmBits-1:0]Imm,
					 input  logic [Pb-1:0]PC,
					 output logic [Pb-1:0]PCbeq);

always_comb 
	begin
		case(zero)
			1'b0: PCbeq = PC +1'b1;
			1'b1: PCbeq = {16'd0,Imm};
			default: PCbeq = 32'hZZZZ_ZZZZ;
		
		endcase
	end
					 

endmodule
