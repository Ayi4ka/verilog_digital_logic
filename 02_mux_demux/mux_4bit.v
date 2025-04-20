module mux_4bit (
	input [1:0] sel, 
	input a1, 
	input a2,
	input a3,
	input a4,
	output c
);

wire c0;
assign c0 = (sel==2'b00)?a1:
			(sel==2'b01)?a2:
				(sel==2'b10)?a3:
					 a4;
assign c =~c0;
endmodule 
