import status_reg_pkg::*;

module status_reg_tb;

logic signed [N-1:0]A;
logic [N-1:0]B;
alu_op_d op;
logic [N-1:0]R;
logic zero;
logic carryf;
logic negativef;
logic overflowf;

logic clk;
logic rst;

ALU 		 		 alu(.A(A),
							.B(B),
							.alu_op(op) ,
							.R(R),
							.zero(zero),
							.carryf(carryf),
							.negativef(negativef),
							.overflowf(overflowf));
							
status_reg 
						sr(.clk(clk),
						 .rst(rst),
						 .D_zero(zero),
						 .D_carry(carryf),
						 .D_negative(negativef),
						 .D_overflow(overflowf));	
						 
/*

zero 			R0

carry	 		R1

negative 	R2

overflow		R3

*/

initial begin
	rst = 1'b1;
	#10ns;
	rst = 1'b0;
	#10ns; 
	rst = 1'b1;
	#10ns;
	A = 32'h80000000; //testing overflow and carry R1 and R3
	B = 32'h80000010;
	op = ADD;
	#10ns;
	A = 32'h00000001;
	B = 32'h00000010; //testing negative R2
	op = SUB;
	#10ns;
	A = 32'h01000000;
	B = 32'h01000000; //testing zero flag R0
	op = SUB;
	#10ns;

end			 
always begin
		clk = 0;
		#5ns;
		clk = 1;
		#5ns;
	end

endmodule
			