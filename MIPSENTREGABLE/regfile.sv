import the_pkg::*;

module regfile 
						(input logic clk,
						input  logic we,
						input  logic [BR-1:0]rs,
						input  logic [BR-1:0]rt,
						input  logic [BR-1:0]rd,
						input  logic [N-1:0]D,
						output logic [N-1:0]Qs,
						output logic [N-1:0]Qt);
						
						
reg [N-1:0]registers [N-1:0];

always_ff @ (posedge clk)
	begin
		if (we & (rd!=5'd0))
			registers[rd] <= D;
	end

assign Qs = registers[rs];
assign Qt = registers[rt];

endmodule
