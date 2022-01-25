import the_pkg::*;

module mux_rd(
					input  logic [BR-1:0] rd,
					input  logic [BR-1:0] rt,
					input  logic mux_rdd,
					input  logic mux_JType_IType,
					output logic [BR-1:0] realrd);
					
logic [BR-1:0] outItypeJtype;

mux_ItypeorJType  muxItJty(	.rt(rt),
										.mux_JType_IType(mux_JType_IType),
										.outItypeJtype(outItypeJtype));					
always_comb
	begin
		case(mux_rdd)
		 1'b0: realrd = rd;
		 1'b1: realrd = outItypeJtype;
		 default: realrd = 5'bZZZZZ;
		endcase
	end

					

endmodule
