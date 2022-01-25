import the_pkg::*;

module mux_ALU1(
					  input  logic mux_alu,
					  input  logic [N-1:0]Qt,
					  input  logic [N-1:0]out_muxImm,
					  output logic [N-1:0]B);
						
always_comb
	begin
		case(mux_alu)
			1'b0: B = Qt;
			1'b1: B = out_muxImm;
			default: B = 32'hZZZZZZZZ;
		endcase
	end
	
endmodule
