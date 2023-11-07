/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct 18 17:13:55 2023
/////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module half_adder_1 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module half_adder_0 ( a, b, s, co );
  input a, b;
  output s, co;


  AND2X2 U1 ( .A(b), .B(a), .Y(co) );
  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
endmodule


module full_adder ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   s1, co1, co2, n1, n2, n3, n4, n5, n6;

  half_adder_1 u1_half_adder ( .a(n6), .b(n4), .s(s1), .co(co1) );
  half_adder_0 u2_half_adder ( .a(n2), .b(s1), .s(s), .co(co2) );
  OR2X1 U1 ( .A(co1), .B(co2), .Y(co) );
  INVX2 U2 ( .A(ci), .Y(n1) );
  INVX2 U3 ( .A(n1), .Y(n2) );
  INVX2 U4 ( .A(b), .Y(n3) );
  INVX2 U5 ( .A(n3), .Y(n4) );
  INVX2 U6 ( .A(a), .Y(n5) );
  INVX2 U7 ( .A(n5), .Y(n6) );
endmodule

