module mux_2bit_ternary (
	input sel, 
	input a, 
	input b, 
	output c
);
assign c = sel?b:a;
endmodule 