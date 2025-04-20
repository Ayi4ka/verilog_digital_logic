module demux_4bit (
	input [1:0] sel, 
	input a, 
	output c1,
	output c2,
	output c3,
	output c4
);

wire c01;
wire c02;
wire c03;
wire c04;
assign c01 = (sel==2'b00)&a;
assign c02 = (sel==2'b01)&a;
assign c03 = (sel==2'b10)&a;
assign c04 = (sel==2'b11)&a;
assign c1 =~c01;
assign c2 =~c02;
assign c3 =~c03;
assign c4 =~c04;
endmodule 
