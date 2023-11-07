module TOP (SUM,
	COUT,
	A,
	B,
	CIN,
	CLK,
	RST,
	TEST_SI,
	TEST_SO,
	TEST_SE,
	TCK,
	TRSTN,
	TDI,
	TMS,
	TDO);

	output [3:0] SUM;
	input [3:0] A;
	input [3:0] B;
 	input CIN, CLK, RST, TEST_SI, TEST_SE;
	output COUT, TEST_SO;
	
	//boundry scan ports
	input TCK, TDI, TRSTN, TMS;
	output TDO;

	wire [3:0] sum;
	wire [3:0] a;
	wire [3:0] b;
 	wire cin, clk, rst, test_si, test_se;
	wire cout, test_so;

	IBUF3 U1 ( .A(RST), .Z(rst) );
	IBUF3 U2 ( .A(CLK), .Z(clk) );
	IBUF3 U3 ( .A(CIN), .Z(cin) );
	IBUF3 U4 ( .A(TEST_SI), .Z(test_si) );
	IBUF3 U5 ( .A(TEST_SE), .Z(test_se) );
	IBUF3 U6 ( .A(A[3]), .Z(a[3]) );
	IBUF3 U7 ( .A(A[2]), .Z(a[2]) );
	IBUF3 U8 ( .A(A[1]), .Z(a[1]) );
	IBUF3 U9 ( .A(A[0]), .Z(a[0]) );
	IBUF3 U10 ( .A(B[3]), .Z(b[3]) );
	IBUF3 U11 ( .A(B[2]), .Z(b[2]) );
	IBUF3 U12 ( .A(B[1]), .Z(b[1]) );
	IBUF3 U13 ( .A(B[0]), .Z(b[0]) );
	
	OBUF2 U14 ( .A(sum[3]), .Z(SUM[3]) );
	OBUF2 U15 ( .A(sum[2]), .Z(SUM[2]) );
	OBUF2 U16 ( .A(sum[1]), .Z(SUM[1]) );
	OBUF2 U17 ( .A(sum[0]), .Z(SUM[0]) );
	OBUF2 U18 ( .A(cout), .Z(COUT) );
	OBUF2 U19 ( .A(test_so), .Z(TEST_SO) );
	// boundry scan pads
	IBUF3 U20 ( .A(TCK) );
	IBUF3 U21 ( .A(TRSTN) );
	IBUF3 U22 ( .A(TDI) );
	IBUF3 U23 ( .A(TMS) );
	BIDI U24 ( .Z(TDO) );

	ripplecarry4_clk core (.sum(sum),
			.cout(cout),
			.a(a),
			.b(b),
			.cin(cin),
			.clk(clk),
			.rst(rst),
			.test_si(test_si),
			.test_se(test_se),
			.test_so(test_so));


endmodule
