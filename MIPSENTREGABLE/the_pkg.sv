package the_pkg;

parameter Pb = 32;
parameter N  = 32;
parameter Bi =  4;
parameter BR =  5;
parameter RegInBits =  5;
parameter ImmBits   = 16;
parameter OpFunBits =  6;
parameter saBits    =  5;
parameter dmAddB    = 16;
parameter INST_WIDTH=32;
parameter MAX_NUM_INST=128;

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

typedef enum logic [5:0]{

		Rtype = 6'b000_000,
		ADDI  = 6'b010_000,
		SUBI  = 6'b010_001,
		ANDI  = 6'b010_010,
		ORI   = 6'b010_011,
		XORI  = 6'b010_100,
		LUI_op  = 6'b001_110,
		LLI_op  = 6'b001_111,
		LWR   = 6'b100_000,
		SWR   = 6'b101_000,
		LWI   = 6'b100_001,
		SWI   = 6'b101_001,
		BEQ   = 6'b110_000,
		BNE   = 6'b110_001,
		JUMP  = 6'b111_000,
		JAL   = 6'b111_001,
		RET   = 6'b111_010
		

}op_code;

typedef enum logic [5:0]{

		ADD_f = 6'b000000,
		SUB_f = 6'b000001,
		AND_f = 6'b000010,
		OR_f  = 6'b000011,
		XOR_f = 6'b000100,
		SLL_f = 6'b000101,
		SRL_f = 6'b000110,
		SLA_f = 6'b000111,
		SRA_f = 6'b001000

}func_code;


endpackage