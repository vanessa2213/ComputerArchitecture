import status_reg_pkg::*;

module ALU 		  (input logic signed [N-1:0]A,
						input logic [N-1:0]B,
						input alu_op_d alu_op ,
						output logic [N-1:0]R,
						output logic zero,
						output logic carryf,
						output logic negativef,
						output logic overflowf);
				
				
logic signed [4:0] sa;
logic signed [15:0] Imm;

assign sa = B[4:0];
assign Imm = B[15:0];


	
always_comb 
	begin
		case(alu_op)
			ADD: begin 
						R = A + B;
						if ( (A[31] != B[31])&(R[31]==1))
							carryf = 1;
						else if ((A[31] == 1)&(B[31] == 1))
							carryf = 1;
						else 
							carryf = 0;
					//	zero = 1'bZ;
				  end
			SUB: begin
						R = A - B;
						if (((A[31] == 1)&(B[31]==1))&(R[31]==0))
							carryf = 1;
						else if (((A[31] == 1)&(B[31]==0))&(R[31]==1))
							carryf = 1;
						else
							carryf=0;
						//zero = 1'bZ;
				  end
			AND: begin
						R = A & B;
						carryf = 0;
						//zero = 1'bZ;
				  end
			OR:  begin
						R = A | B;
						carryf = 0;
					//	zero = 1'bZ;
				  end
			XOR: begin
						R = A ^ B;
						carryf = 0;
					//	zero = 1'bZ;
				  end
			SLL: begin
						R = A<<$unsigned(sa);
						carryf = 0;
					//	zero = 1'bZ;
				  end
			SRL: begin
						R = A>>$unsigned(sa);
						carryf = 0;
					//	zero = 1'bZ;
				  end
			SLA: begin
						R = A<<<$unsigned(sa);
						carryf = 0;
						//zero = 1'bZ;
				  end
			SRA: begin
						R = A>>>$unsigned(sa);
						carryf = 0;
						//zero = 1'bZ;
				  end
			LUI: begin
						R = Imm<<16;
						carryf = 0;
						//zero = 1'bZ;
				  end
			LLI: begin
						R = {16'b0,Imm};
						carryf = 0;
						//zero = 1'bz;
				  end
			BRA: begin
						R = A - B;
						carryf = 0;
				  end
			default: begin
							R = 32'hZZZZZZZZ;
							carryf = 1'bZ;
							
							//zero = 1'bZ;
						end
		endcase
	end
	
assign zero = (R == 0) ? 1: 0;

//assign carryf = ;

assign negativef = (R[31])?1:0;

assign overflowf = ((A[31]==B[31])&(A[31]==R[31]))? 0 : 1;
	
endmodule
