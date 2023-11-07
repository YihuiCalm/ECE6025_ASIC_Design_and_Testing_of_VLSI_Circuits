/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Thu Oct 19 14:02:09 2023
/////////////////////////////////////////////////////////////


module half_adder_7 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module half_adder_6 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module full_adder_3 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   s1, co1, co2;

  half_adder_7 u1_half_adder ( .a(a), .b(b), .s(s1), .co(co1) );
  half_adder_6 u2_half_adder ( .a(ci), .b(s1), .s(s), .co(co2) );
  OR2X1 U1 ( .A(co1), .B(co2), .Y(co) );
endmodule


module half_adder_0 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module half_adder_1 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module full_adder_0 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   s1, co1, co2;

  half_adder_1 u1_half_adder ( .a(a), .b(b), .s(s1), .co(co1) );
  half_adder_0 u2_half_adder ( .a(ci), .b(s1), .s(s), .co(co2) );
  OR2X1 U1 ( .A(co1), .B(co2), .Y(co) );
endmodule


module half_adder_2 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module half_adder_3 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module full_adder_1 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   s1, co1, co2;

  half_adder_3 u1_half_adder ( .a(a), .b(b), .s(s1), .co(co1) );
  half_adder_2 u2_half_adder ( .a(ci), .b(s1), .s(s), .co(co2) );
  OR2X1 U1 ( .A(co1), .B(co2), .Y(co) );
endmodule


module half_adder_4 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module half_adder_5 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module full_adder_2 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   s1, co1, co2;

  half_adder_5 u1_half_adder ( .a(a), .b(b), .s(s1), .co(co1) );
  half_adder_4 u2_half_adder ( .a(ci), .b(s1), .s(s), .co(co2) );
  OR2X1 U1 ( .A(co1), .B(co2), .Y(co) );
endmodule


module ripplecarry4_clk ( sum, cout, a, b, cin, clk );
  output [3:0] sum;
  input [3:0] a;
  input [3:0] b;
  input cin, clk;
  output cout;
  wire   wire0, wire1, c0_reg, wire2, c1_reg, c2_reg, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  full_adder_3 fa0 ( .a(n12), .b(n4), .ci(n2), .s(sum[0]), .co(wire0) );
  full_adder_2 fa1 ( .a(n14), .b(n6), .ci(c0_reg), .s(sum[1]), .co(wire1) );
  full_adder_1 fa2 ( .a(n16), .b(n8), .ci(c1_reg), .s(sum[2]), .co(wire2) );
  full_adder_0 fa3 ( .a(n18), .b(n10), .ci(c2_reg), .s(sum[3]), .co(cout) );
  DFFPOSX1 c0_reg_reg ( .D(wire0), .CLK(clk), .Q(c0_reg) );
  DFFPOSX1 c1_reg_reg ( .D(wire1), .CLK(clk), .Q(c1_reg) );
  DFFPOSX1 c2_reg_reg ( .D(wire2), .CLK(clk), .Q(c2_reg) );
  INVX2 U3 ( .A(cin), .Y(n1) );
  INVX2 U4 ( .A(n1), .Y(n2) );
  INVX2 U5 ( .A(b[0]), .Y(n3) );
  INVX2 U6 ( .A(n3), .Y(n4) );
  INVX2 U7 ( .A(b[1]), .Y(n5) );
  INVX2 U8 ( .A(n5), .Y(n6) );
  INVX2 U9 ( .A(b[2]), .Y(n7) );
  INVX2 U10 ( .A(n7), .Y(n8) );
  INVX2 U11 ( .A(b[3]), .Y(n9) );
  INVX2 U12 ( .A(n9), .Y(n10) );
  INVX2 U13 ( .A(a[0]), .Y(n11) );
  INVX2 U14 ( .A(n11), .Y(n12) );
  INVX2 U15 ( .A(a[1]), .Y(n13) );
  INVX2 U16 ( .A(n13), .Y(n14) );
  INVX2 U17 ( .A(a[2]), .Y(n15) );
  INVX2 U18 ( .A(n15), .Y(n16) );
  INVX2 U19 ( .A(a[3]), .Y(n17) );
  INVX2 U20 ( .A(n17), .Y(n18) );
endmodule

