/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP1
// Date      : Thu Oct 19 19:44:27 2023
/////////////////////////////////////////////////////////////


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


module halfadder_5 ( s, c, a, b );
  input a, b;
  output s, c;


  AN2 U2 ( .A(b), .B(a), .Z(c) );
  EOI U1 ( .A(b), .B(a), .Z(s) );
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


module fulladder_2 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_5 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_4 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2 U1 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_3 ( s, c, a, b );
  input a, b;
  output s, c;


  AN2 U2 ( .A(b), .B(a), .Z(c) );
  EOI U1 ( .A(b), .B(a), .Z(s) );
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


module fulladder_1 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3;

  halfadder_3 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_2 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  OR2 U1 ( .A(wire2), .B(wire3), .Z(cout) );
endmodule


module halfadder_1 ( s, c, a, b );
  input a, b;
  output s, c;


  EOI U1 ( .A(b), .B(a), .Z(s) );
  AN2I U2 ( .A(b), .B(a), .Z(c) );
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


module fulladder_0 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;
  wire   wire1, wire2, wire3, n1;

  halfadder_1 ha1 ( .s(wire1), .c(wire2), .a(a), .b(b) );
  halfadder_0 ha2 ( .s(s), .c(wire3), .a(wire1), .b(cin) );
  NR2I U1 ( .A(wire2), .B(wire3), .Z(n1) );
  B4I U2 ( .A(n1), .Z(cout) );
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



    module TOP_DW_tap_uc_width4_id0_idcode_opcode1_version0_part0_man_num0_sync_mode1_tst_mode1 ( 
        tck, trst_n, tms, tdi, so, bypass_sel, sentinel_val, device_id_sel, 
        user_code_sel, user_code_val, ver, ver_sel, part_num, part_num_sel, 
        mnfr_id, mnfr_id_sel, clock_dr, shift_dr, update_dr, tdo, tdo_en, 
        tap_state, instructions, sync_capture_en, sync_update_dr, test );
  input [2:0] sentinel_val;
  input [31:0] user_code_val;
  input [3:0] ver;
  input [15:0] part_num;
  input [10:0] mnfr_id;
  output [15:0] tap_state;
  output [3:0] instructions;
  input tck, trst_n, tms, tdi, so, bypass_sel, device_id_sel, user_code_sel,
         ver_sel, part_num_sel, mnfr_id_sel, test;
  output clock_dr, shift_dr, update_dr, tdo, tdo_en, sync_capture_en,
         sync_update_dr;
  wire   tck_inv, test_n, sel_tck, sel_tck_inv, tck_n, dr_sel_int,
         shift_ir_int, instr_so, byp_so, tdo_ffin, U6_ffin, U5_U1_3_ffin,
         U5_U1_2_ffin, U5_U1_1_ffin, U5_U1_0_ffin, U5_rst_n,
         U5_instruction_shift_1_, U5_instruction_shift_2_,
         U5_instruction_shift_3_, U1_N18, U1_net41, U1_dr_sel_int_next, net448,
         net447, net446, net445, net444, net443, net442, net441, net440,
         net439, net438, net437, net436, net435, net434, net433, net432,
         net431, net430, net429, net428, net427, net426, net425, net424,
         net423, net422, net421, net420, net419, net418, net417, net416,
         net415, net414, net413, net412, net411, net410, net409, net408,
         net407, net406, net405, net404, net403, net402, net401, net400,
         net399, net398, net397, net396, net395, net394, net393, net392,
         net391, net390, net389, net388, net387, net386, net385, net384,
         net383, net382, net381, net380, net379, net378, net377, net376,
         net375, net374, net373, net372, net371, net370, net369, net368,
         net367, net366, net365, net364, net363, net362, net361, net360,
         net359, net358, net357, net356, net355, net354, net353, net352,
         net351, net350, net349, net348, net347, net346, net345, net344,
         net343, net342, net341, net340, net339, net338, net337, net336,
         net335, net334, net333, net332, net331, net330, net329, net328,
         net327, net326, net325, net324, net323, net322, net321, net320,
         net319, net318, net317, net316, net315, net314, net313, net312,
         net311, net310, net309, net308, net307, net306, net305, net304,
         net303, net302, net301, net300, net299, net298, net297, net296,
         net295, net294, net293, net292, net291, net290, net289, net288,
         net259;
  wire   [3:0] U5_ff_d;
  wire   [15:0] U1_next_state;

  AN2I U1_U10 ( .A(U1_net41), .B(trst_n), .Z(net259) );
  ND2I U_CS_5 ( .A(sel_tck), .B(sel_tck_inv), .Z(tck_n) );
  ND2I U_CS_4 ( .A(tck_inv), .B(test_n), .Z(sel_tck_inv) );
  ND2I U_CS_3 ( .A(tck), .B(test), .Z(sel_tck) );
  IVI U_CS_2 ( .A(test), .Z(test_n) );
  IVI U_CS_1 ( .A(tck), .Z(tck_inv) );
  IVI u_cell_534 ( .A(trst_n), .Z(U1_N18) );
  NR2I u_cell_532 ( .A(tap_state[9]), .B(tap_state[6]), .Z(net447) );
  ND2I u_cell_529 ( .A(net377), .B(net432), .Z(net365) );
  IVI u_cell_528 ( .A(net365), .Z(net448) );
  ND2I u_cell_527 ( .A(net447), .B(net448), .Z(net407) );
  NR2I u_cell_526 ( .A(net446), .B(net407), .Z(net434) );
  NR2I u_cell_525 ( .A(tap_state[5]), .B(tap_state[3]), .Z(net436) );
  ND2I u_cell_522 ( .A(net444), .B(net445), .Z(net325) );
  NR2I u_cell_521 ( .A(tap_state[4]), .B(net325), .Z(net437) );
  NR2I u_cell_520 ( .A(tap_state[12]), .B(tap_state[0]), .Z(net438) );
  NR2I u_cell_519 ( .A(tap_state[1]), .B(tap_state[15]), .Z(net440) );
  ND2I u_cell_516 ( .A(net442), .B(net443), .Z(net441) );
  IVI u_cell_515 ( .A(net441), .Z(net379) );
  ND2I u_cell_514 ( .A(net440), .B(net379), .Z(net439) );
  IVI u_cell_513 ( .A(net439), .Z(net369) );
  ND2I u_cell_512 ( .A(net438), .B(net369), .Z(net416) );
  IVI u_cell_511 ( .A(net416), .Z(net426) );
  ND2I u_cell_510 ( .A(net437), .B(net426), .Z(net424) );
  IVI u_cell_509 ( .A(net424), .Z(net404) );
  ND2I u_cell_508 ( .A(net436), .B(net404), .Z(net435) );
  IVI u_cell_507 ( .A(net435), .Z(net363) );
  ND2I u_cell_506 ( .A(net434), .B(net363), .Z(net326) );
  IVI u_cell_505 ( .A(net326), .Z(net433) );
  IVI u_cell_504 ( .A(tms), .Z(net327) );
  ND2I u_cell_503 ( .A(net433), .B(net327), .Z(net339) );
  NR2I u_cell_501 ( .A(tap_state[8]), .B(net432), .Z(net431) );
  AN2I u_cell_500 ( .A(net375), .B(net431), .Z(net428) );
  NR2I u_cell_499 ( .A(tap_state[9]), .B(tap_state[2]), .Z(net430) );
  ND2I u_cell_498 ( .A(net430), .B(net363), .Z(net429) );
  IVI u_cell_497 ( .A(net429), .Z(net374) );
  ND2I u_cell_496 ( .A(net428), .B(net374), .Z(net331) );
  NR2I u_cell_494 ( .A(net325), .B(net427), .Z(net425) );
  ND2I u_cell_493 ( .A(net425), .B(net426), .Z(net423) );
  MUX21L u_cell_492 ( .A(net423), .B(net424), .S(tap_state[3]), .Z(net419) );
  NR2I u_cell_491 ( .A(tap_state[5]), .B(tap_state[2]), .Z(net421) );
  IVI u_cell_490 ( .A(net407), .Z(net422) );
  ND2I u_cell_489 ( .A(net421), .B(net422), .Z(net420) );
  IVI u_cell_488 ( .A(net420), .Z(net414) );
  ND2I u_cell_487 ( .A(net419), .B(net414), .Z(net337) );
  ND2I u_cell_486 ( .A(net331), .B(net337), .Z(net418) );
  ND2I u_cell_485 ( .A(net418), .B(net327), .Z(net338) );
  ND2I u_cell_484 ( .A(net339), .B(net338), .Z(net417) );
  IVI u_cell_483 ( .A(net417), .Z(U1_dr_sel_int_next) );
  ENI u_cell_482 ( .A(tap_state[11]), .B(tap_state[10]), .Z(net415) );
  NR2I u_cell_481 ( .A(net415), .B(net416), .Z(net411) );
  NR2I u_cell_480 ( .A(tap_state[4]), .B(tap_state[3]), .Z(net413) );
  ND2I u_cell_479 ( .A(net413), .B(net414), .Z(net412) );
  IVI u_cell_478 ( .A(net412), .Z(net396) );
  ND2I u_cell_477 ( .A(net411), .B(net396), .Z(net355) );
  AN2I u_cell_476 ( .A(net355), .B(net337), .Z(net410) );
  ND2I u_cell_475 ( .A(net410), .B(net326), .Z(net402) );
  NR2I u_cell_472 ( .A(net409), .B(tap_state[2]), .Z(net408) );
  ND2I u_cell_471 ( .A(net299), .B(net408), .Z(net406) );
  NR2I u_cell_470 ( .A(net406), .B(net407), .Z(net405) );
  ND2I u_cell_469 ( .A(net404), .B(net405), .Z(net330) );
  ND2I u_cell_468 ( .A(net331), .B(net330), .Z(net403) );
  NR2I u_cell_467 ( .A(net402), .B(net403), .Z(net384) );
  ND2I u_cell_465 ( .A(tap_state[12]), .B(net401), .Z(net400) );
  NR2I u_cell_464 ( .A(net325), .B(net400), .Z(net399) );
  AN2I u_cell_463 ( .A(net369), .B(net399), .Z(net398) );
  ND2I u_cell_462 ( .A(net398), .B(net396), .Z(net348) );
  NR2I u_cell_461 ( .A(tap_state[1]), .B(tap_state[13]), .Z(net397) );
  AN2I u_cell_460 ( .A(tap_state[14]), .B(net397), .Z(net392) );
  NR2I u_cell_459 ( .A(tap_state[15]), .B(tap_state[0]), .Z(net393) );
  NR2I u_cell_458 ( .A(tap_state[12]), .B(net325), .Z(net395) );
  ND2I u_cell_457 ( .A(net395), .B(net396), .Z(net394) );
  IVI u_cell_456 ( .A(net394), .Z(net368) );
  ND2I u_cell_455 ( .A(net393), .B(net368), .Z(net381) );
  IVI u_cell_454 ( .A(net381), .Z(net390) );
  ND2I u_cell_453 ( .A(net392), .B(net390), .Z(net349) );
  ND2I u_cell_452 ( .A(net348), .B(net349), .Z(net386) );
  NR2I u_cell_451 ( .A(tap_state[1]), .B(tap_state[14]), .Z(net391) );
  AN2I u_cell_450 ( .A(tap_state[13]), .B(net391), .Z(net389) );
  ND2I u_cell_449 ( .A(net389), .B(net390), .Z(net350) );
  NR2I u_cell_448 ( .A(net365), .B(net375), .Z(net388) );
  ND2I u_cell_447 ( .A(net388), .B(net374), .Z(net334) );
  ND2I u_cell_446 ( .A(net350), .B(net334), .Z(net387) );
  NR2I u_cell_445 ( .A(net386), .B(net387), .Z(net385) );
  AN2I u_cell_444 ( .A(net384), .B(net385), .Z(net370) );
  NR2I u_cell_442 ( .A(tap_state[0]), .B(net383), .Z(net382) );
  ND2I u_cell_441 ( .A(net382), .B(net368), .Z(net380) );
  MUX21L u_cell_440 ( .A(net380), .B(net381), .S(tap_state[1]), .Z(net378) );
  ND2I u_cell_439 ( .A(net378), .B(net379), .Z(net371) );
  NR2I u_cell_438 ( .A(tap_state[7]), .B(net377), .Z(net376) );
  AN2I u_cell_437 ( .A(net375), .B(net376), .Z(net373) );
  ND2I u_cell_436 ( .A(net373), .B(net374), .Z(net372) );
  ND2I u_cell_435 ( .A(net371), .B(net372), .Z(net341) );
  IVI u_cell_434 ( .A(net341), .Z(net344) );
  ND2I u_cell_433 ( .A(net370), .B(net344), .Z(net359) );
  AN2I u_cell_432 ( .A(tap_state[0]), .B(net369), .Z(net367) );
  ND2I u_cell_431 ( .A(net367), .B(net368), .Z(net345) );
  NR2I u_cell_430 ( .A(tap_state[6]), .B(tap_state[2]), .Z(net366) );
  ND2I u_cell_429 ( .A(net366), .B(tap_state[9]), .Z(net364) );
  NR2I u_cell_428 ( .A(net364), .B(net365), .Z(net362) );
  ND2I u_cell_427 ( .A(net362), .B(net363), .Z(net358) );
  ND2I u_cell_426 ( .A(net345), .B(net358), .Z(net361) );
  IVI u_cell_425 ( .A(net361), .Z(net360) );
  MUX21L u_cell_424 ( .A(net327), .B(net359), .S(net360), .Z(U1_next_state[0])
         );
  NR2I u_cell_423 ( .A(tms), .B(net358), .Z(U1_next_state[10]) );
  ND2I u_cell_422 ( .A(net349), .B(net355), .Z(net357) );
  ND2I u_cell_421 ( .A(net357), .B(net327), .Z(net356) );
  IVI u_cell_420 ( .A(net356), .Z(U1_next_state[11]) );
  IVI u_cell_419 ( .A(net355), .Z(net354) );
  ND2I u_cell_418 ( .A(net354), .B(tms), .Z(net353) );
  IVI u_cell_417 ( .A(net353), .Z(U1_next_state[12]) );
  ND2I u_cell_416 ( .A(net348), .B(net350), .Z(net352) );
  ND2I u_cell_415 ( .A(net352), .B(net327), .Z(net351) );
  IVI u_cell_414 ( .A(net351), .Z(U1_next_state[13]) );
  NR2I u_cell_413 ( .A(net327), .B(net350), .Z(U1_next_state[14]) );
  ND2I u_cell_412 ( .A(net348), .B(net349), .Z(net347) );
  ND2I u_cell_411 ( .A(tms), .B(net347), .Z(net346) );
  IVI u_cell_410 ( .A(net346), .Z(U1_next_state[15]) );
  ND2I u_cell_409 ( .A(net344), .B(net345), .Z(net343) );
  ND2I u_cell_408 ( .A(net343), .B(net327), .Z(net342) );
  IVI u_cell_407 ( .A(net342), .Z(U1_next_state[1]) );
  ND2I u_cell_406 ( .A(tms), .B(net341), .Z(net340) );
  IVI u_cell_405 ( .A(net340), .Z(U1_next_state[2]) );
  IVI u_cell_404 ( .A(net339), .Z(U1_next_state[3]) );
  IVI u_cell_403 ( .A(net338), .Z(U1_next_state[4]) );
  NR2I u_cell_402 ( .A(net327), .B(net337), .Z(U1_next_state[5]) );
  ND2I u_cell_401 ( .A(net330), .B(net334), .Z(net336) );
  ND2I u_cell_400 ( .A(net336), .B(net327), .Z(net335) );
  IVI u_cell_399 ( .A(net335), .Z(U1_next_state[6]) );
  IVI u_cell_398 ( .A(net334), .Z(net333) );
  ND2I u_cell_397 ( .A(net333), .B(tms), .Z(net332) );
  IVI u_cell_396 ( .A(net332), .Z(U1_next_state[7]) );
  ND2I u_cell_395 ( .A(net330), .B(net331), .Z(net329) );
  ND2I u_cell_394 ( .A(tms), .B(net329), .Z(net328) );
  IVI u_cell_393 ( .A(net328), .Z(U1_next_state[8]) );
  NR2I u_cell_392 ( .A(net326), .B(net327), .Z(U1_next_state[9]) );
  IVI u_cell_391 ( .A(net325), .Z(net324) );
  IVI u_cell_390 ( .A(shift_ir_int), .Z(net295) );
  ND2I u_cell_389 ( .A(net324), .B(net295), .Z(net311) );
  IVI u_cell_388 ( .A(net311), .Z(net323) );
  MUX21L u_cell_387 ( .A(U5_instruction_shift_1_), .B(instr_so), .S(net323), 
        .Z(net322) );
  ND2I u_cell_386 ( .A(net311), .B(net295), .Z(net315) );
  ND2I u_cell_385 ( .A(net322), .B(net315), .Z(U5_U1_0_ffin) );
  IVI u_cell_384 ( .A(U5_instruction_shift_1_), .Z(net320) );
  ND2I u_cell_383 ( .A(U5_instruction_shift_2_), .B(shift_ir_int), .Z(net321)
         );
  AO7P u_cell_382 ( .A(net311), .B(net320), .C(net321), .Z(U5_U1_1_ffin) );
  IVI u_cell_381 ( .A(U5_instruction_shift_2_), .Z(net319) );
  NR2I u_cell_380 ( .A(net311), .B(net319), .Z(net316) );
  ND2I u_cell_379 ( .A(U5_instruction_shift_3_), .B(shift_ir_int), .Z(net318)
         );
  IVI u_cell_378 ( .A(net318), .Z(net317) );
  NR2I u_cell_377 ( .A(net316), .B(net317), .Z(net313) );
  IVI u_cell_376 ( .A(net315), .Z(net307) );
  ND2I u_cell_375 ( .A(sentinel_val[0]), .B(net307), .Z(net314) );
  ND2I u_cell_374 ( .A(net313), .B(net314), .Z(U5_U1_2_ffin) );
  IVI u_cell_373 ( .A(U5_instruction_shift_3_), .Z(net312) );
  NR2I u_cell_372 ( .A(net311), .B(net312), .Z(net308) );
  ND2I u_cell_371 ( .A(shift_ir_int), .B(tdi), .Z(net310) );
  IVI u_cell_370 ( .A(net310), .Z(net309) );
  NR2I u_cell_369 ( .A(net308), .B(net309), .Z(net305) );
  ND2I u_cell_368 ( .A(sentinel_val[1]), .B(net307), .Z(net306) );
  ND2I u_cell_367 ( .A(net305), .B(net306), .Z(U5_U1_3_ffin) );
  MUX21L u_cell_366 ( .A(instructions[0]), .B(instr_so), .S(tap_state[15]), 
        .Z(U5_ff_d[0]) );
  MUX21L u_cell_365 ( .A(instructions[1]), .B(U5_instruction_shift_1_), .S(
        tap_state[15]), .Z(U5_ff_d[1]) );
  MUX21L u_cell_364 ( .A(instructions[2]), .B(U5_instruction_shift_2_), .S(
        tap_state[15]), .Z(U5_ff_d[2]) );
  MUX21L u_cell_363 ( .A(instructions[3]), .B(U5_instruction_shift_3_), .S(
        tap_state[15]), .Z(U5_ff_d[3]) );
  IVI u_cell_362 ( .A(net259), .Z(net304) );
  MUX21L u_cell_361 ( .A(net304), .B(U1_N18), .S(test), .Z(U5_rst_n) );
  ND2I u_cell_360 ( .A(tdi), .B(shift_dr), .Z(net302) );
  IVI u_cell_359 ( .A(byp_so), .Z(net303) );
  MUX21L u_cell_358 ( .A(net302), .B(net303), .S(dr_sel_int), .Z(net301) );
  ND2I u_cell_357 ( .A(net301), .B(net299), .Z(net300) );
  IVI u_cell_356 ( .A(net300), .Z(U6_ffin) );
  NR2I u_cell_355 ( .A(tap_state[4]), .B(shift_dr), .Z(net298) );
  ND2I u_cell_354 ( .A(net298), .B(net299), .Z(net297) );
  IVI u_cell_353 ( .A(net297), .Z(sync_capture_en) );
  IVI u_cell_352 ( .A(shift_dr), .Z(net296) );
  ND2I u_cell_351 ( .A(net295), .B(net296), .Z(tdo_en) );
  ND2I u_cell_350 ( .A(instructions[2]), .B(instructions[3]), .Z(net292) );
  ND2I u_cell_349 ( .A(instructions[0]), .B(instructions[1]), .Z(net293) );
  IVI u_cell_348 ( .A(bypass_sel), .Z(net294) );
  AO7P u_cell_347 ( .A(net292), .B(net293), .C(net294), .Z(net291) );
  IVI u_cell_346 ( .A(net291), .Z(net290) );
  MUX21L u_cell_345 ( .A(byp_so), .B(so), .S(net290), .Z(net288) );
  IVI u_cell_344 ( .A(instr_so), .Z(net289) );
  MUX21L u_cell_343 ( .A(net288), .B(net289), .S(tap_state[11]), .Z(tdo_ffin)
         );
  FD2 U1_current_state_reg_15_ ( .D(U1_next_state[15]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[15]), .QN(net383) );
  FD2 U1_current_state_reg_2_ ( .D(U1_next_state[2]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[2]), .QN(net446) );
  FD4 U1_current_state_reg_0_ ( .D(U1_next_state[0]), .CP(tck), .SD(trst_n), 
        .Q(tap_state[0]), .QN(net401) );
  FD2 U1_current_state_reg_1_ ( .D(U1_next_state[1]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[1]) );
  FD2 U1_current_state_reg_14_ ( .D(U1_next_state[14]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[14]), .QN(net442) );
  FD2 U1_current_state_reg_13_ ( .D(U1_next_state[13]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[13]), .QN(net443) );
  FD2 U1_current_state_reg_11_ ( .D(U1_next_state[11]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[11]), .QN(net444) );
  FD2 U1_current_state_reg_12_ ( .D(U1_next_state[12]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[12]) );
  FD2 U1_current_state_reg_9_ ( .D(U1_next_state[9]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[9]) );
  FD2 U1_current_state_reg_3_ ( .D(U1_next_state[3]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[3]), .QN(net299) );
  FD2 U1_current_state_reg_6_ ( .D(U1_next_state[6]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[6]), .QN(net375) );
  FD2 U1_current_state_reg_8_ ( .D(U1_next_state[8]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[8]), .QN(net377) );
  FD2 U1_current_state_reg_7_ ( .D(U1_next_state[7]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[7]), .QN(net432) );
  FD2 U1_current_state_reg_10_ ( .D(U1_next_state[10]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[10]), .QN(net445) );
  FD2 U1_current_state_reg_5_ ( .D(U1_next_state[5]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[5]), .QN(net409) );
  FD2 U1_current_state_reg_4_ ( .D(U1_next_state[4]), .CP(tck), .CD(trst_n), 
        .Q(tap_state[4]), .QN(net427) );
  FD2 U1_dr_sel_int_reg ( .D(U1_dr_sel_int_next), .CP(tck), .CD(trst_n), .Q(
        dr_sel_int) );
  FD1 U8 ( .D(tdo_ffin), .CP(tck_n), .Q(tdo) );
  FD1 U6_U4 ( .D(U6_ffin), .CP(tck), .Q(byp_so) );
  FD1 U5_U1_3_U3 ( .D(U5_U1_3_ffin), .CP(tck), .Q(U5_instruction_shift_3_) );
  FD1 U5_U1_2_U3 ( .D(U5_U1_2_ffin), .CP(tck), .Q(U5_instruction_shift_2_) );
  FD1 U5_U1_1_U3 ( .D(U5_U1_1_ffin), .CP(tck), .Q(U5_instruction_shift_1_) );
  FD1 U5_U1_0_U3 ( .D(U5_U1_0_ffin), .CP(tck), .Q(instr_so) );
  FD2 U5_U3_3 ( .D(U5_ff_d[3]), .CP(tck_n), .CD(U5_rst_n), .QN(instructions[3]) );
  FD2 U5_U3_2 ( .D(U5_ff_d[2]), .CP(tck_n), .CD(U5_rst_n), .QN(instructions[2]) );
  FD2 U5_U3_1 ( .D(U5_ff_d[1]), .CP(tck_n), .CD(U5_rst_n), .QN(instructions[1]) );
  FD2 U5_U3_0 ( .D(U5_ff_d[0]), .CP(tck_n), .CD(U5_rst_n), .QN(instructions[0]) );
  FD2 U1_U9 ( .D(tap_state[0]), .CP(tck_n), .CD(trst_n), .QN(U1_net41) );
  FD2 U1_U8 ( .D(tap_state[11]), .CP(tck_n), .CD(trst_n), .Q(shift_ir_int) );
  FD2 U1_U7 ( .D(tap_state[4]), .CP(tck_n), .CD(trst_n), .Q(shift_dr) );
  B2IP u_cell_584 ( .A(tap_state[8]), .Z2(sync_update_dr) );
endmodule


module TOP_DW_bc_4 ( capture_clk, capture_en, shift_dr, si, data_in, so, 
        data_out );
  input capture_clk, capture_en, shift_dr, si, data_in;
  output so, data_out;
  wire   U1_ffin, U1_net1, net507;

  MUX21L u_cell_596 ( .A(data_in), .B(si), .S(shift_dr), .Z(net507) );
  MUX21L u_cell_595 ( .A(net507), .B(U1_net1), .S(capture_en), .Z(U1_ffin) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(capture_clk), .Q(so), .QN(U1_net1) );
  B2IP u_cell_601 ( .A(data_in), .Z2(data_out) );
endmodule


module TOP_DW_bc_2_test_0 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_1 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_2 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_3 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_4 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_5 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_6 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_7 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2_test_8 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_2 ( capture_clk, update_clk, capture_en, update_en, shift_dr, 
        mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   update_out, U1_U1_ffin, U1_ffin, net540, net539, net538, net537;

  MUX21L u_cell_617 ( .A(data_in), .B(update_out), .S(mode), .Z(net540) );
  IVI u_cell_616 ( .A(net540), .Z(data_out) );
  MUX21L u_cell_615 ( .A(data_out), .B(si), .S(shift_dr), .Z(net539) );
  IVI u_cell_614 ( .A(so), .Z(net538) );
  MUX21L u_cell_613 ( .A(net539), .B(net538), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_612 ( .A(update_out), .Z(net537) );
  MUX21L u_cell_611 ( .A(net537), .B(net538), .S(update_en), .Z(U1_ffin) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(update_out) );
endmodule


module TOP_DW_bc_1_test_0 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, U1_U1_ffin, U1_ffin, net571, net570, net569, net568;

  MUX21L u_cell_645 ( .A(data_in), .B(si), .S(shift_dr), .Z(net571) );
  IVI u_cell_644 ( .A(so), .Z(net570) );
  MUX21L u_cell_643 ( .A(net571), .B(net570), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_642 ( .A(temp_out), .Z(net569) );
  MUX21L u_cell_641 ( .A(net569), .B(net570), .S(update_en), .Z(U1_ffin) );
  IVI u_cell_640 ( .A(data_in), .Z(net568) );
  MUX21L u_cell_639 ( .A(net568), .B(net569), .S(mode), .Z(data_out) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(temp_out) );
endmodule


module TOP_DW_bc_1_test_1 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, U1_U1_ffin, U1_ffin, net571, net570, net569, net568;

  MUX21L u_cell_645 ( .A(data_in), .B(si), .S(shift_dr), .Z(net571) );
  IVI u_cell_644 ( .A(so), .Z(net570) );
  MUX21L u_cell_643 ( .A(net571), .B(net570), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_642 ( .A(temp_out), .Z(net569) );
  MUX21L u_cell_641 ( .A(net569), .B(net570), .S(update_en), .Z(U1_ffin) );
  IVI u_cell_640 ( .A(data_in), .Z(net568) );
  MUX21L u_cell_639 ( .A(net568), .B(net569), .S(mode), .Z(data_out) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(temp_out) );
endmodule


module TOP_DW_bc_1_test_2 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, U1_U1_ffin, U1_ffin, net571, net570, net569, net568;

  MUX21L u_cell_645 ( .A(data_in), .B(si), .S(shift_dr), .Z(net571) );
  IVI u_cell_644 ( .A(so), .Z(net570) );
  MUX21L u_cell_643 ( .A(net571), .B(net570), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_642 ( .A(temp_out), .Z(net569) );
  MUX21L u_cell_641 ( .A(net569), .B(net570), .S(update_en), .Z(U1_ffin) );
  IVI u_cell_640 ( .A(data_in), .Z(net568) );
  MUX21L u_cell_639 ( .A(net568), .B(net569), .S(mode), .Z(data_out) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(temp_out) );
endmodule


module TOP_DW_bc_1_test_3 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, U1_U1_ffin, U1_ffin, net571, net570, net569, net568;

  MUX21L u_cell_645 ( .A(data_in), .B(si), .S(shift_dr), .Z(net571) );
  IVI u_cell_644 ( .A(so), .Z(net570) );
  MUX21L u_cell_643 ( .A(net571), .B(net570), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_642 ( .A(temp_out), .Z(net569) );
  MUX21L u_cell_641 ( .A(net569), .B(net570), .S(update_en), .Z(U1_ffin) );
  IVI u_cell_640 ( .A(data_in), .Z(net568) );
  MUX21L u_cell_639 ( .A(net568), .B(net569), .S(mode), .Z(data_out) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(temp_out) );
endmodule


module TOP_DW_bc_1_test_4 ( capture_clk, update_clk, capture_en, update_en, 
        shift_dr, mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, U1_U1_ffin, U1_ffin, net571, net570, net569, net568;

  MUX21L u_cell_645 ( .A(data_in), .B(si), .S(shift_dr), .Z(net571) );
  IVI u_cell_644 ( .A(so), .Z(net570) );
  MUX21L u_cell_643 ( .A(net571), .B(net570), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_642 ( .A(temp_out), .Z(net569) );
  MUX21L u_cell_641 ( .A(net569), .B(net570), .S(update_en), .Z(U1_ffin) );
  IVI u_cell_640 ( .A(data_in), .Z(net568) );
  MUX21L u_cell_639 ( .A(net568), .B(net569), .S(mode), .Z(data_out) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(temp_out) );
endmodule


module TOP_DW_bc_1 ( capture_clk, update_clk, capture_en, update_en, shift_dr, 
        mode, si, data_in, data_out, so );
  input capture_clk, update_clk, capture_en, update_en, shift_dr, mode, si,
         data_in;
  output data_out, so;
  wire   temp_out, U1_U1_ffin, U1_ffin, net571, net570, net569, net568;

  MUX21L u_cell_645 ( .A(data_in), .B(si), .S(shift_dr), .Z(net571) );
  IVI u_cell_644 ( .A(so), .Z(net570) );
  MUX21L u_cell_643 ( .A(net571), .B(net570), .S(capture_en), .Z(U1_U1_ffin)
         );
  IVI u_cell_642 ( .A(temp_out), .Z(net569) );
  MUX21L u_cell_641 ( .A(net569), .B(net570), .S(update_en), .Z(U1_ffin) );
  IVI u_cell_640 ( .A(data_in), .Z(net568) );
  MUX21L u_cell_639 ( .A(net568), .B(net569), .S(mode), .Z(data_out) );
  FD1 U1_U1_U3 ( .D(U1_U1_ffin), .CP(capture_clk), .Q(so) );
  FD1 U1_U3 ( .D(U1_ffin), .CP(update_clk), .Q(temp_out) );
endmodule


module TOP_Decoder_inst_design ( TOP_instructions_3_, TOP_instructions_2_, 
        TOP_instructions_1_, TOP_instructions_0_, SAMPLE, PRELOAD, EXTEST, 
        CLAMP, BYPASS );
  input TOP_instructions_3_, TOP_instructions_2_, TOP_instructions_1_,
         TOP_instructions_0_;
  output SAMPLE, PRELOAD, EXTEST, CLAMP, BYPASS;
  wire   net903, net902, net901, net900, net899, net898, net897, net896,
         net895, net894, net893, net892;

  ND2I u_cell_829 ( .A(TOP_instructions_0_), .B(TOP_instructions_2_), .Z(
        net902) );
  ND2I u_cell_828 ( .A(TOP_instructions_3_), .B(TOP_instructions_1_), .Z(
        net903) );
  NR2I u_cell_827 ( .A(net902), .B(net903), .Z(BYPASS) );
  IVI u_cell_826 ( .A(TOP_instructions_1_), .Z(net901) );
  NR2I u_cell_825 ( .A(TOP_instructions_0_), .B(net901), .Z(net899) );
  NR2I u_cell_824 ( .A(TOP_instructions_3_), .B(TOP_instructions_2_), .Z(
        net900) );
  AN2I u_cell_823 ( .A(net899), .B(net900), .Z(CLAMP) );
  IVI u_cell_822 ( .A(TOP_instructions_0_), .Z(net898) );
  NR2I u_cell_821 ( .A(TOP_instructions_1_), .B(net898), .Z(net896) );
  NR2I u_cell_820 ( .A(TOP_instructions_3_), .B(TOP_instructions_2_), .Z(
        net897) );
  AN2I u_cell_819 ( .A(net896), .B(net897), .Z(EXTEST) );
  IVI u_cell_818 ( .A(TOP_instructions_2_), .Z(net895) );
  NR2I u_cell_817 ( .A(TOP_instructions_0_), .B(net895), .Z(net893) );
  NR2I u_cell_816 ( .A(TOP_instructions_3_), .B(TOP_instructions_1_), .Z(
        net894) );
  ND2I u_cell_815 ( .A(net893), .B(net894), .Z(net892) );
  IVI u_cell_814 ( .A(net892), .Z(SAMPLE) );
  B2IP u_cell_833 ( .A(SAMPLE), .Z2(PRELOAD) );
endmodule


module TOP_BSR_mode_inst_design ( tck, net619, net617, net490, TOP_tdo_en, 
        TOP_inv_in, TOP_instructions_3_, TOP_instructions_2_, 
        TOP_instructions_1_, TOP_instructions_0_, TOP_bypass_sel, 
        TOP_INV_ABC_4, TOP_INV_ABC_3, TOP_INV_ABC_2, TOP_INV_ABC );
  input net619, net617, net490, TOP_inv_in, TOP_instructions_3_,
         TOP_instructions_2_, TOP_instructions_1_, TOP_instructions_0_,
         TOP_INV_ABC_4;
  output tck, TOP_tdo_en, TOP_bypass_sel, TOP_INV_ABC_3, TOP_INV_ABC_2,
         TOP_INV_ABC;
  wire   BYPASS, CLAMP, EXTEST, PRELOAD, SAMPLE, net657, net937, net936,
         net935, net934, net933, net932;

  IVI u_cell_847 ( .A(EXTEST), .Z(net936) );
  IVI u_cell_846 ( .A(CLAMP), .Z(net937) );
  ND2I u_cell_845 ( .A(net936), .B(net937), .Z(TOP_INV_ABC) );
  IVI u_cell_844 ( .A(net617), .Z(net657) );
  NR2I u_cell_843 ( .A(SAMPLE), .B(EXTEST), .Z(net934) );
  IVI u_cell_842 ( .A(PRELOAD), .Z(net935) );
  ND2I u_cell_841 ( .A(net934), .B(net935), .Z(net933) );
  ND2I u_cell_840 ( .A(net657), .B(net933), .Z(TOP_INV_ABC_2) );
  AN2I u_cell_839 ( .A(net619), .B(net933), .Z(TOP_INV_ABC_3) );
  NR2I u_cell_838 ( .A(CLAMP), .B(BYPASS), .Z(net932) );
  ND2I u_cell_837 ( .A(net932), .B(net933), .Z(TOP_bypass_sel) );
  IVI u_cell_836 ( .A(net490), .Z(TOP_tdo_en) );
  IVI u_cell_835 ( .A(TOP_inv_in), .Z(tck) );
  TOP_Decoder_inst_design TOP_Decoder_inst ( .TOP_instructions_3_(
        TOP_instructions_3_), .TOP_instructions_2_(TOP_instructions_2_), 
        .TOP_instructions_1_(TOP_instructions_1_), .TOP_instructions_0_(
        TOP_instructions_0_), .SAMPLE(SAMPLE), .PRELOAD(PRELOAD), .EXTEST(
        EXTEST), .CLAMP(CLAMP), .BYPASS(BYPASS) );
endmodule


module TOP_BSR_top_inst_design ( test_so, test_si, sum_3_, sum_2_, sum_1_, 
        sum_0_, net619, net617, net490, cout, clk, cin, b_3_, b_2_, b_1_, b_0_, 
        a_3_, a_2_, a_1_, a_0_, TOP_tdo_en, TOP_tdi, TOP_si_16, TOP_inv_in, 
        TOP_instructions_3_, TOP_instructions_2_, TOP_instructions_1_, 
        TOP_instructions_0_, TOP_data_out_5, TOP_data_out_4, TOP_data_out_3, 
        TOP_data_out_2, TOP_data_out_1, TOP_data_out, TOP_data_in_9, 
        TOP_data_in_8, TOP_data_in_7, TOP_data_in_6, TOP_data_in_5, 
        TOP_data_in_4, TOP_data_in_3, TOP_data_in_2, TOP_data_in_1, 
        TOP_data_in, TOP_bypass_sel, TOP_INV_ABC_4 );
  input test_so, sum_3_, sum_2_, sum_1_, sum_0_, net619, net617, net490, cout,
         clk, TOP_tdi, TOP_inv_in, TOP_instructions_3_, TOP_instructions_2_,
         TOP_instructions_1_, TOP_instructions_0_, TOP_data_in_9,
         TOP_data_in_8, TOP_data_in_7, TOP_data_in_6, TOP_data_in_5,
         TOP_data_in_4, TOP_data_in_3, TOP_data_in_2, TOP_data_in_1,
         TOP_data_in, TOP_INV_ABC_4;
  output test_si, cin, b_3_, b_2_, b_1_, b_0_, a_3_, a_2_, a_1_, a_0_,
         TOP_tdo_en, TOP_si_16, TOP_data_out_5, TOP_data_out_4, TOP_data_out_3,
         TOP_data_out_2, TOP_data_out_1, TOP_data_out, TOP_bypass_sel;
  wire   TOP_INV_ABC, TOP_INV_ABC_2, TOP_INV_ABC_3, TOP_si, TOP_si_1,
         TOP_si_10, TOP_si_11, TOP_si_12, TOP_si_13, TOP_si_14, TOP_si_15,
         TOP_si_2, TOP_si_3, TOP_si_4, TOP_si_5, TOP_si_6, TOP_si_7, TOP_si_8,
         TOP_si_9, tck;

  TOP_DW_bc_4 TOP_CLK_bsr1 ( .capture_clk(TOP_inv_in), .capture_en(
        TOP_INV_ABC_2), .shift_dr(TOP_INV_ABC_4), .si(TOP_tdi), .data_in(clk), 
        .so(TOP_si) );
  TOP_DW_bc_2_test_0 TOP_CIN_bsr2 ( .capture_clk(TOP_inv_in), .update_clk(tck), 
        .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si), .data_in(TOP_data_in), 
        .data_out(cin), .so(TOP_si_1) );
  TOP_DW_bc_2_test_1 TOP_A_3__bsr3 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_1), .data_in(TOP_data_in_1), 
        .data_out(a_3_), .so(TOP_si_2) );
  TOP_DW_bc_2_test_2 TOP_A_2__bsr4 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_2), .data_in(TOP_data_in_2), 
        .data_out(a_2_), .so(TOP_si_3) );
  TOP_DW_bc_2_test_3 TOP_A_1__bsr5 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_3), .data_in(TOP_data_in_3), 
        .data_out(a_1_), .so(TOP_si_4) );
  TOP_DW_bc_2_test_4 TOP_A_0__bsr6 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_4), .data_in(TOP_data_in_4), 
        .data_out(a_0_), .so(TOP_si_5) );
  TOP_DW_bc_2_test_5 TOP_B_3__bsr7 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_5), .data_in(TOP_data_in_5), 
        .data_out(b_3_), .so(TOP_si_6) );
  TOP_DW_bc_2_test_6 TOP_B_2__bsr8 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_6), .data_in(TOP_data_in_6), 
        .data_out(b_2_), .so(TOP_si_7) );
  TOP_DW_bc_2_test_7 TOP_B_1__bsr9 ( .capture_clk(TOP_inv_in), .update_clk(tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_7), .data_in(TOP_data_in_7), 
        .data_out(b_1_), .so(TOP_si_8) );
  TOP_DW_bc_2_test_8 TOP_B_0__bsr10 ( .capture_clk(TOP_inv_in), .update_clk(
        tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), 
        .shift_dr(TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_8), .data_in(
        TOP_data_in_8), .data_out(b_0_), .so(TOP_si_9) );
  TOP_DW_bc_2 TOP_TEST_SI_bsr11 ( .capture_clk(TOP_inv_in), .update_clk(tck), 
        .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(1'b0), .si(TOP_si_9), .data_in(TOP_data_in_9), 
        .data_out(test_si), .so(TOP_si_10) );
  TOP_DW_bc_1_test_0 TOP_SUM_3__bsr12 ( .capture_clk(TOP_inv_in), .update_clk(
        tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), 
        .shift_dr(TOP_INV_ABC_4), .mode(TOP_INV_ABC), .si(TOP_si_10), 
        .data_in(sum_3_), .data_out(TOP_data_out), .so(TOP_si_11) );
  TOP_DW_bc_1_test_1 TOP_SUM_2__bsr13 ( .capture_clk(TOP_inv_in), .update_clk(
        tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), 
        .shift_dr(TOP_INV_ABC_4), .mode(TOP_INV_ABC), .si(TOP_si_11), 
        .data_in(sum_2_), .data_out(TOP_data_out_1), .so(TOP_si_12) );
  TOP_DW_bc_1_test_2 TOP_SUM_1__bsr14 ( .capture_clk(TOP_inv_in), .update_clk(
        tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), 
        .shift_dr(TOP_INV_ABC_4), .mode(TOP_INV_ABC), .si(TOP_si_12), 
        .data_in(sum_1_), .data_out(TOP_data_out_2), .so(TOP_si_13) );
  TOP_DW_bc_1_test_3 TOP_SUM_0__bsr15 ( .capture_clk(TOP_inv_in), .update_clk(
        tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), 
        .shift_dr(TOP_INV_ABC_4), .mode(TOP_INV_ABC), .si(TOP_si_13), 
        .data_in(sum_0_), .data_out(TOP_data_out_3), .so(TOP_si_14) );
  TOP_DW_bc_1_test_4 TOP_COUT_bsr16 ( .capture_clk(TOP_inv_in), .update_clk(
        tck), .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), 
        .shift_dr(TOP_INV_ABC_4), .mode(TOP_INV_ABC), .si(TOP_si_14), 
        .data_in(cout), .data_out(TOP_data_out_4), .so(TOP_si_15) );
  TOP_DW_bc_1 TOP_TEST_SO_bsr17 ( .capture_clk(TOP_inv_in), .update_clk(tck), 
        .capture_en(TOP_INV_ABC_2), .update_en(TOP_INV_ABC_3), .shift_dr(
        TOP_INV_ABC_4), .mode(TOP_INV_ABC), .si(TOP_si_15), .data_in(test_so), 
        .data_out(TOP_data_out_5), .so(TOP_si_16) );
  TOP_BSR_mode_inst_design TOP_BSR_mode_inst ( .tck(tck), .net619(net619), 
        .net617(net617), .net490(net490), .TOP_tdo_en(TOP_tdo_en), 
        .TOP_inv_in(TOP_inv_in), .TOP_instructions_3_(TOP_instructions_3_), 
        .TOP_instructions_2_(TOP_instructions_2_), .TOP_instructions_1_(
        TOP_instructions_1_), .TOP_instructions_0_(TOP_instructions_0_), 
        .TOP_bypass_sel(TOP_bypass_sel), .TOP_INV_ABC_4(TOP_INV_ABC_4), 
        .TOP_INV_ABC_3(TOP_INV_ABC_3), .TOP_INV_ABC_2(TOP_INV_ABC_2), 
        .TOP_INV_ABC(TOP_INV_ABC) );
endmodule


module TOP ( SUM, COUT, A, B, CIN, CLK, RST, TEST_SI, TEST_SO, TEST_SE, TCK, 
        TRSTN, TDI, TMS, TDO );
  output [3:0] SUM;
  input [3:0] A;
  input [3:0] B;
  input CIN, CLK, RST, TEST_SI, TEST_SE, TCK, TRSTN, TDI, TMS;
  output COUT, TEST_SO, TDO;
  wire   cin, clk, rst, test_si, test_se, cout, test_so, TOP_inv_in, TOP_tdi,
         TOP_tdo, TOP_tdo_en, net490, TOP_tms, TOP_trst_n, TOP_instructions_0_,
         TOP_instructions_1_, TOP_instructions_2_, TOP_instructions_3_,
         TOP_bypass_sel, net617, net619, TOP_INV_ABC_4, TOP_data_in,
         TOP_data_in_1, TOP_data_in_2, TOP_data_in_3, TOP_data_in_4,
         TOP_data_in_5, TOP_data_in_6, TOP_data_in_7, TOP_data_in_8,
         TOP_data_in_9, TOP_data_out, TOP_data_out_1, TOP_data_out_2,
         TOP_data_out_3, TOP_data_out_4, TOP_data_out_5, TOP_si_16,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16;
  wire   [3:0] sum;
  wire   [3:0] a;
  wire   [3:0] b;
  tri   TDO;

  IBUF3 U1 ( .A(RST), .Z(rst) );
  IBUF3 U2 ( .A(CLK), .Z(clk) );
  IBUF3 U3 ( .A(CIN), .Z(TOP_data_in) );
  IBUF3 U4 ( .A(TEST_SI), .Z(TOP_data_in_9) );
  IBUF3 U5 ( .A(TEST_SE), .Z(test_se) );
  IBUF3 U6 ( .A(A[3]), .Z(TOP_data_in_1) );
  IBUF3 U7 ( .A(A[2]), .Z(TOP_data_in_2) );
  IBUF3 U8 ( .A(A[1]), .Z(TOP_data_in_3) );
  IBUF3 U9 ( .A(A[0]), .Z(TOP_data_in_4) );
  IBUF3 U10 ( .A(B[3]), .Z(TOP_data_in_5) );
  IBUF3 U11 ( .A(B[2]), .Z(TOP_data_in_6) );
  IBUF3 U12 ( .A(B[1]), .Z(TOP_data_in_7) );
  IBUF3 U13 ( .A(B[0]), .Z(TOP_data_in_8) );
  OBUF2 U14 ( .A(TOP_data_out), .Z(SUM[3]) );
  OBUF2 U15 ( .A(TOP_data_out_1), .Z(SUM[2]) );
  OBUF2 U16 ( .A(TOP_data_out_2), .Z(SUM[1]) );
  OBUF2 U17 ( .A(TOP_data_out_3), .Z(SUM[0]) );
  OBUF2 U18 ( .A(TOP_data_out_4), .Z(COUT) );
  OBUF2 U19 ( .A(TOP_data_out_5), .Z(TEST_SO) );
  IBUF3 U20 ( .A(TCK), .Z(TOP_inv_in) );
  IBUF3 U21 ( .A(TRSTN), .Z(TOP_trst_n) );
  IBUF3 U22 ( .A(TDI), .Z(TOP_tdi) );
  IBUF3 U23 ( .A(TMS), .Z(TOP_tms) );
  BIDI U24 ( .A(TOP_tdo), .E(TOP_tdo_en), .Z(TDO) );
  ripplecarry4_clk core ( .sum(sum), .cout(cout), .a(a), .b(b), .cin(cin), 
        .clk(clk), .rst(rst), .test_si(test_si), .test_so(test_so), .test_se(
        test_se) );
  TOP_DW_tap_uc_width4_id0_idcode_opcode1_version0_part0_man_num0_sync_mode1_tst_mode1 TOP_DW_tap_inst ( 
        .tck(TOP_inv_in), .trst_n(TOP_trst_n), .tms(TOP_tms), .tdi(TOP_tdi), 
        .so(TOP_si_16), .bypass_sel(TOP_bypass_sel), .sentinel_val({1'b0, 1'b0, 
        1'b0}), .device_id_sel(1'b0), .user_code_sel(1'b0), .user_code_val({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .ver({1'b0, 1'b0, 
        1'b0, 1'b0}), .ver_sel(1'b0), .part_num({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .part_num_sel(1'b0), .mnfr_id({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mnfr_id_sel(1'b0), .shift_dr(
        TOP_INV_ABC_4), .tdo(TOP_tdo), .tdo_en(net490), .tap_state({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}), .instructions({TOP_instructions_3_, 
        TOP_instructions_2_, TOP_instructions_1_, TOP_instructions_0_}), 
        .sync_capture_en(net617), .sync_update_dr(net619), .test(1'b0) );
  TOP_BSR_top_inst_design TOP_BSR_top_inst ( .test_so(test_so), .test_si(
        test_si), .sum_3_(sum[3]), .sum_2_(sum[2]), .sum_1_(sum[1]), .sum_0_(
        sum[0]), .net619(net619), .net617(net617), .net490(net490), .cout(cout), .clk(clk), .cin(cin), .b_3_(b[3]), .b_2_(b[2]), .b_1_(b[1]), .b_0_(b[0]), 
        .a_3_(a[3]), .a_2_(a[2]), .a_1_(a[1]), .a_0_(a[0]), .TOP_tdo_en(
        TOP_tdo_en), .TOP_tdi(TOP_tdi), .TOP_si_16(TOP_si_16), .TOP_inv_in(
        TOP_inv_in), .TOP_instructions_3_(TOP_instructions_3_), 
        .TOP_instructions_2_(TOP_instructions_2_), .TOP_instructions_1_(
        TOP_instructions_1_), .TOP_instructions_0_(TOP_instructions_0_), 
        .TOP_data_out_5(TOP_data_out_5), .TOP_data_out_4(TOP_data_out_4), 
        .TOP_data_out_3(TOP_data_out_3), .TOP_data_out_2(TOP_data_out_2), 
        .TOP_data_out_1(TOP_data_out_1), .TOP_data_out(TOP_data_out), 
        .TOP_data_in_9(TOP_data_in_9), .TOP_data_in_8(TOP_data_in_8), 
        .TOP_data_in_7(TOP_data_in_7), .TOP_data_in_6(TOP_data_in_6), 
        .TOP_data_in_5(TOP_data_in_5), .TOP_data_in_4(TOP_data_in_4), 
        .TOP_data_in_3(TOP_data_in_3), .TOP_data_in_2(TOP_data_in_2), 
        .TOP_data_in_1(TOP_data_in_1), .TOP_data_in(TOP_data_in), 
        .TOP_bypass_sel(TOP_bypass_sel), .TOP_INV_ABC_4(TOP_INV_ABC_4) );
endmodule

