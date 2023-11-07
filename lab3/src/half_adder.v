`include "globals.v"

module half_adder(
    input a,
    input b,
    output s,
    output co
);

assign {co, s} = a + b;


endmodule