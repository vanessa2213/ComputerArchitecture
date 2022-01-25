import mealy_fsm_pkg::*;
//matricula A00344428
// 82444300
module mealy_fsm (   
							
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
					
					if(start)
						begin
							next_s = S1;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S0;
							sequence_detected = 0;
						end
				end
			
			S1: begin
					
					if(digit_in == 4'd8)
						begin
							next_s = S2;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				
				 end
				 
			S2:begin
					
					if(digit_in == 4'd2)
						begin
							next_s = S3;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				
				end
				
			S3:begin
					
					if(digit_in == 4'd4)
						begin
							next_s = S4;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				end
				
			S4:begin
					
					if(digit_in == 4'd4)
						begin
							next_s = S5;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
					
				end
			S5:begin
					
					if(digit_in == 4'd4)
						begin
							next_s = S6;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				
					
				end
			S6:begin
					
					if(digit_in == 4'd3)
						begin
							next_s = S7;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				
				end
			S7:begin
					
					if(digit_in == 4'd0)
						begin
							next_s = S8;
							sequence_detected = 0;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				
					
				end
			S8:begin
					
					if(digit_in == 4'd0)
						begin
							next_s = S1;
							sequence_detected = 1;
						end
					else
						begin
							next_s = S1;
							sequence_detected = 0;
						end
				end
				
		endcase
	end
	
							


endmodule
