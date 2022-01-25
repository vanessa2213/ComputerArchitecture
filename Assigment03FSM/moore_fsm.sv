import moore_fsm_pkg::*;

module moore_fsm (   
							
							input logic clk,
							input logic asyn_n_rst,
							input logic start,
							input logic [N-1:0]digit_in,
							output logic sequence_detected
							);
							
state_d current_s;
state_d next_s;

always_ff @ (negedge asyn_n_rst or posedge clk)
	begin
		if (asyn_n_rst == 0) 
			current_s = S0;
		else
			current_s = next_s;
		
	end
	

	
always_comb
	begin
		case(current_s)
			S0:begin
					sequence_detected = 0;
					if(start)
						next_s = S1;
					else
						next_s = S0;
				end
			
			S1: begin
					sequence_detected = 0;
					if(digit_in == 4'd0)
						next_s = S2;
					else
						next_s = S1;
				
				 end
				 
			S2:begin
					sequence_detected = 0;
					if(digit_in == 4'd0)
						next_s = S3;
					else
						next_s = S1;
				
				end
				
			S3:begin
					sequence_detected = 0;
					if(digit_in == 4'd3)
						next_s = S4;
					else
						next_s = S1;
				end
				
			S4:begin
					sequence_detected = 0;
					if(digit_in == 4'd4)
						next_s = S5;
					else
						next_s = S1;
				
					
				end
			S5:begin
					sequence_detected = 0;
					if(digit_in == 4'd4)
						next_s = S6;
					else
						next_s = S1;
				
					
				end
			S6:begin
					sequence_detected = 0;
					if(digit_in == 4'd4)
						next_s = S7;
					else
						next_s = S1;
				
				end
			S7:begin
					sequence_detected = 0;
					if(digit_in == 4'd2)
						next_s = S8;
					else
						next_s = S1;
				
					
				end
			S8:begin
					sequence_detected = 0;
					if(digit_in == 4'd8)
						next_s = S9;
					else
						next_s = S1;
				end
			S9:begin
					sequence_detected = 1;
					next_s = S1;
				end
				
		endcase
	end
	
							


endmodule
