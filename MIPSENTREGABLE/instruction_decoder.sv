import the_pkg::*;

module instruction_decoder 

									(  input logic [N-1:0] ins,
										/*input   op_code op_in,
										input   func_code func_in,
										input   logic [RegInBits-1:0]rs_in,
										input   logic [RegInBits-1:0] rt_in,
										input   logic [RegInBits-1:0] rd_in,
										input   logic [saBits-1:0] sa_in,
										input   logic [ImmBits-1:0] Imm_in,*/
										output  op_code op,
										output  func_code func,
										output  logic [RegInBits-1:0] rs,
										output  logic [RegInBits-1:0] rt,
										output  logic [RegInBits-1:0] rd,
										output  logic [saBits-1:0] sa,
										output  logic [ImmBits-1:0] Imm);
										
										
										
assign op =  op_code'(ins[31:26]);
/*assign op = op_in;
assign rs =  rs_in;
assign rt =  rt_in;
assign rd =  rd_in;
assign sa =  sa_in;*/
assign rs = ins[25:21];
assign rt =  ins[20:16];
assign rd =  ins[15:11];
assign sa =  ins[10:6];
assign func = func_code'(ins[5:0]);
//assign func = func_in;
assign Imm = ins[15:0];
//assign Imm  = Imm_in;

endmodule
