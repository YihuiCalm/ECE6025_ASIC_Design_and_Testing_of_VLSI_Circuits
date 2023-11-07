
module halfadder_7 ( s, c, a, b );
  input a, b;
  output s, c;


  AN2 U2 ( .A(b), .B(a), .Z(c) );
  EOI U1 ( .A(b), .B(a), .Z(s) );
endmodule


module halfadder_6 ( s, c, a, b );
  input a, b;
  output s, c;
  wire   n1;

  AN2 U2 ( .A(b), .B(a), .Z(c) );
  B4I U1 ( .A(n1), .Z(s) );
  ENI U3 ( .A(b), .B(a), .Z(n1) );
endmodule


module fulladder_3 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_7 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_6 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2 U1 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_0 ( s, c, a, b );
  input a, b;
  output s, c;
  wire   n1, n2, n3, n4, n5;

  B5IP U1 ( .A(n1), .Z(s) );
  NR2I U2 ( .A(n2), .B(n3), .Z(n1) );
  AN2I U3 ( .A(b), .B(n5), .Z(n2) );
  AN2I U4 ( .A(n4), .B(a), .Z(n3) );
  IVP U5 ( .A(b), .Z(n4) );
  IVI U6 ( .A(a), .Z(n5) );
  AN2I U7 ( .A(b), .B(a), .Z(c) );
endmodule


module halfadder_1 ( s, c, a, b );
  input a, b;
  output s, c;


  EOI U1 ( .A(b), .B(a), .Z(s) );
  AN2I U2 ( .A(b), .B(a), .Z(c) );
endmodule


module fulladder_0 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3, n1;

  halfadder_1 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_0 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  NR2I U1 ( .A(wire2), .B(wire3), .Z(n1) );
  B4I U2 ( .A(n1), .Z(cout) );
endmodule


module halfadder_2 ( s, c, a, b );
  input a, b;
  output s, c;
  wire   n1, n2, n3, n4, n5;

  AN2 U2 ( .A(b), .B(a), .Z(c) );
  ND2I U1 ( .A(b), .B(a), .Z(n3) );
  ND2I U3 ( .A(n1), .B(n2), .Z(n4) );
  ND2I U4 ( .A(n3), .B(n4), .Z(n5) );
  IVI U5 ( .A(b), .Z(n1) );
  IVI U6 ( .A(a), .Z(n2) );
  B4I U7 ( .A(n5), .Z(s) );
endmodule


module halfadder_3 ( s, c, a, b );
  input a, b;
  output s, c;


  AN2 U2 ( .A(b), .B(a), .Z(c) );
  EOI U1 ( .A(b), .B(a), .Z(s) );
endmodule


module fulladder_1 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_3 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_2 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2 U1 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_4 ( s, c, a, b );
  input a, b;
  output s, c;
  wire   n1, n2, n3, n4, n5;

  AN2 U2 ( .A(b), .B(a), .Z(c) );
  ND2I U1 ( .A(b), .B(a), .Z(n3) );
  ND2I U3 ( .A(n1), .B(n2), .Z(n4) );
  ND2I U4 ( .A(n3), .B(n4), .Z(n5) );
  IVI U5 ( .A(b), .Z(n1) );
  IVI U6 ( .A(a), .Z(n2) );
  B4I U7 ( .A(n5), .Z(s) );
endmodule


module halfadder_5 ( s, c, a, b );
  input a, b;
  output s, c;


  AN2 U2 ( .A(b), .B(a), .Z(c) );
  EOI U1 ( .A(b), .B(a), .Z(s) );
endmodule


module fulladder_2 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_5 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_4 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2 U1 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module ripplecarry4_clk ( sum, cout, a, b, cin, clk, rst, test_si, test_so, 
        test_se );
  output [3:0] sum;
  input [3:0] a;
  input [3:0] b;
  input cin, clk, rst, test_si, test_se;
  output cout, test_so;
  wire   wire0, wire1, c0_reg, wire2, c1_reg, c2_reg, n27, n29, n30, n32, n34,
         n36, n38, n40, n42, n44, n46, n48;

  fulladder_3 fa0 ( .s(sum[0]), .cout(wire0), .a(n36), .b(n44), .cin(n46) );
  fulladder_2 fa1 ( .s(sum[1]), .cout(wire1), .a(n30), .b(n38), .cin(c0_reg)
         );
  fulladder_1 fa2 ( .s(sum[2]), .cout(wire2), .a(n32), .b(n40), .cin(c1_reg)
         );
  fulladder_0 fa3 ( .s(sum[3]), .cout(cout), .a(n34), .b(n42), .cin(c2_reg) );
  FD2S c1_reg_reg ( .D(wire1), .TI(n27), .TE(test_se), .CP(clk), .CD(n48), .Q(
        c1_reg), .QN(n29) );
  FD2S c2_reg_reg ( .D(wire2), .TI(n29), .TE(test_se), .CP(clk), .CD(n48), .Q(
        c2_reg), .QN(test_so) );
  FD2S c0_reg_reg ( .D(wire0), .TI(test_si), .TE(test_se), .CP(clk), .CD(n48), 
        .Q(c0_reg), .QN(n27) );
  IVDAP U6 ( .A(a[1]), .Z(n30) );
  IVDAP U7 ( .A(a[2]), .Z(n32) );
  IVDA U8 ( .A(a[3]), .Z(n34) );
  IVDAP U9 ( .A(a[0]), .Z(n36) );
  IVDA U10 ( .A(b[1]), .Z(n38) );
  IVDA U11 ( .A(b[2]), .Z(n40) );
  IVDA U12 ( .A(b[3]), .Z(n42) );
  IVDA U13 ( .A(b[0]), .Z(n44) );
  IVDA U14 ( .A(cin), .Z(n46) );
  IVDA U15 ( .A(rst), .Z(n48) );
endmodule

