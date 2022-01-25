package status_reg_pkg;

parameter BR = 4;
parameter N = 32;
typedef enum logic [3:0]{

		ADD = 4'b0000,
		SUB = 4'b0001,
		AND = 4'b0010,
		OR  = 4'b0011,
		XOR = 4'b0100,
		SLL = 4'b0101,
		SRL = 4'b0110,
		SLA = 4'b0111,
		SRA = 4'b1000,
		LUI = 4'b1001,
		LLI = 4'b1010,
		BRA = 4'b1011
		
}alu_op_d;

endpackage
