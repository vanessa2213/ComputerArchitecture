import status_reg_pkg::*;

module status_reg 
						(input logic clk,
						 input  logic rst,
						 input  logic D_zero,
						 input  logic D_carry,
						 input  logic D_negative,
						 input  logic D_overflow);
						
						
logic [BR-1:0]registers;

/*

zero 			R0

carry	 		R1

negative 	R2

overflow		R3

*/

always_ff @ (posedge clk or negedge rst)
	begin
		if (!rst)
			begin
				registers[0] <= 1'b0;
				registers[1] <= 1'b0;
				registers[2] <= 1'b0;
				registers[3] <= 1'b0;
			end
		else
			begin
				registers[0] <= D_zero;
				registers[1] <= D_carry;
				registers[2] <= D_negative;
				registers[3] <= D_overflow;
			end
	end



endmodule
