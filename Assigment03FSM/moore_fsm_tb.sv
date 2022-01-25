import moore_fsm_pkg::*;

module moore_fsm_tb;

logic clk;
logic asyn_n_rst;
logic start;
logic [N-1:0]digit_in;
logic sequence_detected;


moore_fsm    mfsm(   
							.clk(clk),
							.asyn_n_rst(asyn_n_rst),
							.start(start),
							.digit_in(digit_in),
							.sequence_detected(sequence_detected)
							);
							
initial begin

	#5ns;
	asyn_n_rst = 0;   //set
	start = 0;
	digit_in = 4'd0;

	#5ns;
	asyn_n_rst = 1; //start
	start = 1 ;
	digit_in = 4'd0;
	
	#10ns;
	asyn_n_rst = 1; // check
	start = 0;
	digit_in = 4'd0;
	#10ns;
	asyn_n_rst = 1; 
	start = 0;
	digit_in = 4'd0;
	#10ns;
	asyn_n_rst = 1;
	start = 0;
	digit_in = 4'd3;
	#10ns;
	asyn_n_rst = 1;
	start = 0;
	digit_in = 4'd4;
	
	#10ns;
	asyn_n_rst = 1;
	start = 0;
	digit_in = 4'd4;
	
	#10ns;
	asyn_n_rst = 1;
	start = 0;
	digit_in = 4'd4;
	
	#10ns;
	asyn_n_rst = 1;
	start = 0;
	digit_in = 4'd2;
	
	#10ns;
	asyn_n_rst = 1;
	start = 0;
	digit_in = 4'd8;
	
	#10ns;

end

always begin
		clk = 0;
		#5ns;
		clk = 1;
		#5ns;
	end

endmodule