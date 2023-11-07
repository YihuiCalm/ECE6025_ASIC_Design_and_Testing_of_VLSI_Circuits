`include "globals.v"

module full_adder(
    input a,
    input b,
    input ci,
    output s,
    output co
);

    wire s1, co1, co2;

    half_adder u1_half_adder(
        .a(a),
        .b(b),
        .s(s1),
        .co(co1)
    );

    half_adder u2_half_adder(
        .a(ci),
        .b(s1),
        .s(s),
        .co(co2)
    );

    assign co = co1 | co2;

endmodule