import the_pkg::*;
module mux_dmqorPC(
						input  logic mux_dmq_PC,
						input  logic [Pb-1:0]PC,
						input  logic [N-1:0]dm_q,
						output logic[N-1:0]outmux_dmqorPC);

always_comb 
	begin
		case(mux_dmq_PC)
			1'b0: outmux_dmqorPC = dm_q;
			1'b1: outmux_dmqorPC = PC + 1'b1;
			default: outmux_dmqorPC = 32'hZZZZZZZZ;
		endcase
	end
endmodule
