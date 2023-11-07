`timescale  1ns / 1ps

module half_adder(
    input a,
    input b,
    output s,
    output co
);

assign {co, s} = a + b;


endmodule