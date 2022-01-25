import the_pkg::*;

module mux_ItypeorJType(
								input  logic [BR-1:0] rt,
								input  logic mux_JType_IType,
								output logic [BR-1:0] outItypeJtype);

always_comb
	begin
		case(mux_JType_IType)
		 1'b0: outItypeJtype = rt;
		 1'b1: outItypeJtype = 5'd31;
		 default: outItypeJtype = 5'bZZZZZ;
		endcase
	end

					

endmodule
