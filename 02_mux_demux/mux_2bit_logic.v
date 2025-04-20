module mux_2bit_logic (
	input sel, 
	input a, 
	input b, 
	output c
);
assign c = (~ sel & a) | (sel & b);
endmodule 