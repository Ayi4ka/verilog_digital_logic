module reg_enable (
	input clk, 
	input rst_n,
	input i,
	output o 
);


reg o_o; 
always @(posedge clk or negedge rst_n) 
	if (~rst_n) 
		o_o <= 1'b0;
	else 
		o_o <= i;
		
assign o=~o_o;
	
endmodule