module summ (
		input pi, 
		input a,
		input b,
		output r, 
		output p0 
	);
	wire axorb;
	wire aandb;
	wire axorbandpi;
	assign axorb = a ^ b;
	assign aandb = a & b;

	assign axorbandpi = axorb & pi;
	assign p0 = aandb | axorbandpi;
	assign r = axorb ^ pi;
endmodule