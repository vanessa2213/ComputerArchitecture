import the_pkg::*;

module ram 
            (input  logic              clk,
             input  logic              dm_we,
             input  logic              dm_re,
             input  logic [dmAddB-1:0] dm_ad,
             input  logic [N-1:0] dm_d,
             output logic [N-1:0] dm_q);
				 
logic [65535:0]memoria[N-1:0];
 
always @ (posedge clk)
	begin
		if (dm_we ==1'b1 && dm_re==1'b0)
			begin
				memoria[dm_ad]<= dm_d;
			end
		else if (dm_we ==1'b1 && dm_re==1'b1)
			begin
				memoria[dm_ad]<= dm_d;
			end
	end
always @ (*)
	begin
		if(dm_we==1'b0 && dm_re==1'b1)
			dm_q = memoria[dm_ad];
		else
			dm_q  = 32'bzzzz_zzzz_zzzz_zzzz;
			
	end
	


endmodule