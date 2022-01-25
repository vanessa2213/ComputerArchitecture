import the_pkg::*;

module mux_Imm(
					 input  logic mux_Immi,
					 input  logic [N-1:0]Imm_ext,
					 input  logic [saBits-1:0]sa,
					 output logic [N-1:0]out_muxImm);
					
always_comb 
	begin
		case(mux_Immi)
			1'b0: out_muxImm = Imm_ext;
			1'b1: out_muxImm = {27'd0,sa};
			default: out_muxImm = 32'hZZZZZZZZ;
		endcase
	end

endmodule