import the_pkg::*;

module mux_beqorbne(  input  logic beq_bne,
							 input  logic [Pb-1:0]PCbeq,
							 input  logic [Pb-1:0]PCbne,
							 output logic [Pb-1:0]PCb);

always_comb 
	begin
		case(beq_bne)
			1'b0: PCb = PCbeq;
			1'b1: PCb = PCbne;
			default: PCb = 32'hZZZZZZZZ;
		endcase
		
	end
					 

endmodule
