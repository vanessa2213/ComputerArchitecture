import the_pkg::*;

module ALU 		  (input logic signed [N-1:0]A,
						input logic [N-1:0]B,
						input alu_op_d alu_op ,
						output logic [N-1:0]R,
						output logic zero);
				
				
logic signed [4:0] sa;
logic signed [15:0] Imm;

assign sa = B[4:0];
assign Imm = B[15:0];


	
always_comb 
	begin
		case(alu_op)
			ADD: begin 
						R = A + B;
						zero = 1'bZ;
				  end
			SUB: begin
						R = A - B;
						zero = 1'bZ;
				  end
			AND: begin
						R = A & B;
						zero = 1'bZ;
				  end
			OR:  begin
						R = A | B;
						zero = 1'bZ;
				  end
			XOR: begin
						R = A ^ B;
						zero = 1'bZ;
				  end
			SLL: begin
						R = A<<$unsigned(sa);
						zero = 1'bZ;
				  end
			SRL: begin
						R = A>>$unsigned(sa);
						zero = 1'bZ;
				  end
			SLA: begin
						R = A<<<$unsigned(sa);
						zero = 1'bZ;
				  end
			SRA: begin
						R = A>>>$unsigned(sa);
						zero = 1'bZ;
				  end
			LUI: begin
						R = Imm<<16;
						zero = 1'bZ;
				  end
			LLI: begin
						R = {16'b0,Imm};
						zero = 1'bz;
				  end
			BRA: begin
						R = 32'hZZZZZZZZ;
						zero = (A == B) ? 1'b1: 1'b0;
				  end
			default: begin
							R = 32'hZZZZZZZZ;
							zero = 1'bZ;
						end
		endcase
	end
	
	
endmodule
