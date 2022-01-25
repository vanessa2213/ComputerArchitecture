import the_pkg::*;
module mux_Data(
						input  logic mux_D,
						input  logic mux_dmq_PC,
						input  logic [Pb-1:0]PC,
						input  logic [N-1:0]R,
						input  logic [N-1:0]dm_q,
						output logic [N-1:0]D);
						
logic[N-1:0]outmux_dmqorPC;
						
mux_dmqorPC			muxdmPC(	.mux_dmq_PC(mux_dmq_PC),
									.PC(PC),
									.dm_q(dm_q),
									.outmux_dmqorPC(outmux_dmqorPC));
always_comb 
	begin
		case(mux_D)
			1'b0: D = R;
			1'b1: D = outmux_dmqorPC;
			default: D = 32'hZZZZZZZZ;
		endcase
	end
endmodule
