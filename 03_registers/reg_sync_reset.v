module reg_sync_reset (
	input clk, 
	input sft_rst,
	input i,
	output o 
);

reg o_o; 
always @(posedge clk) 
	if (sft_rst) 
		o_o <= 1'b0;
	else 
		o_o <= i;
		
assign o=~o_o;
	
endmodule
