import the_pkg::*;

module mux_dmadd (
						input  logic mux_dm_ad,
						input  logic [N-1:0]Qs,
						input  logic [ImmBits-1:0]Imm,
						output logic [ImmBits-1:0]dm_ad);
						
always_comb
	begin
		case(mux_dm_ad)
			1'b0: dm_ad = Qs[15:0];
			1'b1: dm_ad = Imm;
			default: dm_ad = 16'hZZZZ;
		endcase	
	end
	
	
endmodule
