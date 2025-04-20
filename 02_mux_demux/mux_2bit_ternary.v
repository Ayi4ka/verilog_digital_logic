module demux_2bit (
	input sel, 
	input a, 
	output b, 
	output c
);
assign b = ~sel&a;
assign c = sel&a;
endmodule 
