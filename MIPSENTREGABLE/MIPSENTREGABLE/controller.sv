import the_pkg::*;

			
module controller ( input op_code op,
						  input func_code func,
						  //output logic jump,
						  output alu_op_d alu_op,
						  
						  output logic rf_we,
						  output logic mux_Imm,
						  output logic mux_alu,
						  output logic dm_re,
						  output logic dm_we,
						  output logic branch,
						  output logic beq_ben,
						  output logic mux_rd,
						  output logic mux_D,
						  output logic mux_dm_ad,
						  output logic sign_zero,
						  
						  output logic mux_Imm_Reg,
						  output logic	mux_PC_JType,
						  output logic mux_JType_IType,
						  output logic mux_dmq_PC,
						  output logic mux_RET
						  );

always_comb
	begin
		if ( op == Rtype)
			begin
				rf_we = 1'b1;
				dm_re   = 1'b0;
				dm_we   = 1'b0;
				branch  = 1'b0;
				beq_ben = 1'bz;
				mux_rd  = 1'b0;
				mux_D   = 1'b0;
				mux_dm_ad = 1'bz;
				sign_zero = 1'bz;
				
				mux_Imm_Reg = 1'bz;
				mux_PC_JType = 1'b0;
				mux_JType_IType = 1'bz; 
				mux_dmq_PC = 1'bz;
				mux_RET = 1'b0;
				
				case(func)
					ADD_f: begin
								alu_op  = alu_op_d'(4'b0000);
								mux_Imm = 1'bz;
								mux_alu = 1'b0;
								
							end
					SUB_f: begin
								alu_op = alu_op_d'(4'd1);
								mux_Imm = 1'bz;
								mux_alu = 1'b0;
							end
					AND_f: begin
								alu_op = alu_op_d'(4'd2);
								mux_Imm = 1'bz;
								mux_alu = 1'b0;
							end
					OR_f: begin
								alu_op = alu_op_d'(4'd3);
								mux_Imm = 1'bz;
								mux_alu = 1'b0;
							end
					XOR_f: begin
								alu_op = alu_op_d'(4'd4);
								mux_Imm = 1'bz;
								mux_alu = 1'b0;
							end
					SLL_f: begin
								alu_op = alu_op_d'(4'd5);
								mux_Imm = 1'b1;
								mux_alu = 1'b1;
							end
					SRL_f: begin
								alu_op = alu_op_d'(4'd6);
								mux_Imm = 1'b1;
								mux_alu = 1'b1;
							end
					SLA_f: begin
								alu_op = alu_op_d'(4'd7);
								mux_Imm = 1'b1;
								mux_alu = 1'b1;
							end
					SRA_f: begin
								alu_op = alu_op_d'(4'd8);
								mux_Imm = 1'b1;
								mux_alu = 1'b1;
							end
					default: 
							begin
								alu_op = alu_op_d'(4'bZZZZ);
								mux_Imm   = 1'bZ;
								mux_alu   = 1'bZ;
							
							end
				endcase
				
			end
			
		else 
			begin
				case(op)
					ADDI: begin
								alu_op    = alu_op_d'(4'b0000);
								mux_Imm   = 1'b0;
								mux_alu   = 1'b1;
								sign_zero = 1'b0;
								rf_we     = 1'b1;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b0;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
							end
					SUBI: begin
								alu_op    = alu_op_d'(4'b0001);
								mux_Imm   = 1'b0;
								mux_alu   = 1'b1;
								sign_zero = 1'b0;
								rf_we     = 1'b1;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b0;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
								
							end
					ANDI: begin
								alu_op    = alu_op_d'(4'b0010);
								mux_Imm   = 1'b0;
								mux_alu   = 1'b1;
								sign_zero = 1'b0;
								rf_we     = 1'b1;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b0;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
								
							end			
					ORI:  begin
								alu_op    = alu_op_d'(4'b0011);
								mux_Imm   = 1'b0;
								mux_alu   = 1'b1;
								sign_zero = 1'b0;
								rf_we     = 1'b1;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b0;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
								
							end
					XORI: begin
								alu_op    = alu_op_d'(4'b0100);
								mux_Imm   = 1'b0;
								mux_alu   = 1'b1;
								sign_zero = 1'b0;
								rf_we     = 1'b1;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b0;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
								
							end
					LUI_op: begin
									alu_op    = alu_op_d'(4'b1001);
									mux_Imm   = 1'b0;
									mux_alu   = 1'b1;
									sign_zero = 1'b1;
									rf_we     = 1'b1;
									dm_re     = 1'b0;
									dm_we     = 1'b0;
									branch    = 1'b0;
									beq_ben   = 1'bz;
									mux_rd    = 1'b1;
									mux_D     = 1'b0;
									mux_dm_ad = 1'bz;
									
									mux_Imm_Reg = 1'bz;
									mux_PC_JType = 1'b0;
									mux_JType_IType = 1'b0; 
									mux_dmq_PC = 1'bz;
									mux_RET = 1'b0;
									
								end
					LLI_op: begin
									alu_op    = alu_op_d'(4'b1010);
									mux_Imm   = 1'b0;
									mux_alu   = 1'b1;
									sign_zero = 1'b1;
									rf_we     = 1'b1;
									dm_re     = 1'b0;
									dm_we     = 1'b0;
									branch    = 1'b0;
									beq_ben   = 1'bz;
									mux_rd    = 1'b1;
									mux_D     = 1'b0;
									mux_dm_ad = 1'bz;
									
									mux_Imm_Reg = 1'bz;
									mux_PC_JType = 1'b0;
									mux_JType_IType = 1'b0; 
									mux_dmq_PC = 1'bz;
									mux_RET = 1'b0;
									
								end
					LWR: 	begin
								alu_op    = alu_op_d'(4'bzzzz);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b1;
								dm_re     = 1'b1;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b1;
								mux_dm_ad = 1'b0;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'b0;
								mux_RET = 1'b0;
								
							end
					SWR: 	begin
								alu_op    = alu_op_d'(4'bzzzz);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b0;
								dm_re     = 1'b0;
								dm_we     = 1'b1;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'bz;
								mux_D     = 1'bz;
								mux_dm_ad = 1'b0;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'bz; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
								
							end
					LWI:	begin
								alu_op    = alu_op_d'(4'bzzzz);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b1;
								dm_re     = 1'b1;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'b1;
								mux_D     = 1'b1;
								mux_dm_ad = 1'b1;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'b0; 
								mux_dmq_PC = 1'b0;
								mux_RET = 1'bz;
								
							end
					SWI:	begin
								alu_op    = alu_op_d'(4'bzzzz);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b0;
								dm_re     = 1'b0;
								dm_we     = 1'b1;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_rd    = 1'bz;
								mux_D     = 1'bz;
								mux_dm_ad = 1'b1;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'bz; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'bz;
								
							end
					BEQ:	begin
								alu_op    = alu_op_d'(4'b1011);
								mux_Imm   = 1'bz;
								mux_alu   = 1'b0;
								sign_zero = 1'bz;
								rf_we     = 1'b0;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b1;
								beq_ben   = 1'b0;
								mux_rd    = 1'bz;
								mux_D     = 1'bz;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_JType_IType = 1'bz; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'b0;
								
							end
					BNE:	begin
								alu_op    = alu_op_d'(4'b1011);
								mux_Imm   = 1'bz;
								mux_alu   = 1'b0;
								sign_zero = 1'bz;
								rf_we     = 1'b0;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b1;
								beq_ben   = 1'b1;
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'b0;
								mux_rd    = 1'bz;
								mux_JType_IType = 1'bz; 
								mux_D     = 1'bz;
								mux_dmq_PC = 1'bz;
								mux_dm_ad = 1'bz;
								mux_RET = 1'b0;
								
							end
					JUMP: begin
								alu_op    = alu_op_d'(4'bZZZZ);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b0;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_Imm_Reg = 1'b0;
								mux_PC_JType = 1'b1;
								mux_rd    = 1'bz;
								mux_JType_IType = 1'bz; 
								mux_D     = 1'bz;
								mux_dmq_PC = 1'bz;
								mux_dm_ad = 1'bz;
								mux_RET = 1'bz;
							end
					JAL: 	begin
								alu_op    = alu_op_d'(4'bZZZZ);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b1;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_Imm_Reg = 1'b0;
								mux_PC_JType = 1'b1;
								mux_rd    = 1'b1;
								mux_JType_IType = 1'b1; 
								mux_D     = 1'b1;
								mux_dmq_PC = 1'b1;
								mux_dm_ad = 1'bz;
								mux_RET = 1'bz;
							end
					RET:	begin
								alu_op    = alu_op_d'(4'bZZZZ);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'b0;
								dm_re     = 1'b0;
								dm_we     = 1'b0;
								branch    = 1'b0;
								beq_ben   = 1'bz;
								mux_Imm_Reg = 1'b1;
								mux_PC_JType = 1'b1;
								mux_rd    = 1'bz;
								mux_JType_IType = 1'bz; 
								mux_D     = 1'bz;
								mux_dmq_PC = 1'bz;
								mux_dm_ad = 1'bz;
								mux_RET = 1'b1;
							end
					default:
							begin
								alu_op    = alu_op_d'(4'bzzzz);
								mux_Imm   = 1'bz;
								mux_alu   = 1'bz;
								sign_zero = 1'bz;
								rf_we     = 1'bz;
								dm_re     = 1'bz;
								dm_we     = 1'bz;
								branch    = 1'bz;
								beq_ben   = 1'bz;
								mux_rd    = 1'bz;
								mux_D     = 1'bz;
								mux_dm_ad = 1'bz;
								
								mux_Imm_Reg = 1'bz;
								mux_PC_JType = 1'bz;
								mux_JType_IType = 1'bz; 
								mux_dmq_PC = 1'bz;
								mux_RET = 1'bz;
								
							end
				endcase
		
			end
	end
		




endmodule
