module summ1 (
		input [7:0] A,
		output [7:0] sum
	);
	wire pr1;
	wire pr2;
	wire pr3;
	wire [7:0]ld;

	summ res1(
		.pi(1'b0),
		.a(A[0]),
		.b(A[4]),
		.r(ld[0]),
		.p0(pr1)
	);

	summ res2(
		.pi(pr1),
		.a(A[1]),
		.b(A[5]),
		.r(ld[1]),
		.p0(pr2)
	);

	summ res3(
		.pi(pr2),
		.a(A[2]),
		.b(A[6]),
		.r(ld[2]),
		.p0(pr3)
	);

	summ res4(
		.pi(pr3),
		.a(A[3]),
		.b(A[7]),
		.r(ld[3]),
		.p0(ld[4])
	);

	assign ld[7:5]=3'b0;
	assign sum=~ld;
endmodule