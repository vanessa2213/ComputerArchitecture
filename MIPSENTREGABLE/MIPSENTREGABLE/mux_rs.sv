import the_pkg::*;

module mux_rs(
								input  logic [BR-1:0] rs,
								input  logic mux_RET,
								output logic [BR-1:0] realrs);

always_comb
	begin
		case(mux_RET)
		 1'b0: realrs = rs;
		 1'b1: realrs = 5'd31;
		 default: realrs = 5'bZZZZZ;
		endcase
	end

					

endmodule