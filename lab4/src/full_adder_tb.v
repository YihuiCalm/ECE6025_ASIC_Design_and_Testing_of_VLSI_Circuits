`include "globals.v"

module full_adder_tb;

    // full_adder Parameters
    parameter period  = 2;
    parameter delay = 2;
    parameter finishtime = delay;

    // full_adder Inputs
    reg   a;
    reg   b;
    reg   ci;
    reg   clk;

    // full_adder Outputs
    wire  s;
    wire  co;

    integer i;

    initial begin
        a = 0;
        b = 0;
        ci = 0;
        clk = 0;
        forever #(period/2)  clk=~clk;
    end

    full_adder  u_full_adder (
        .a                       ( a    ),
        .b                       ( b    ),
        .ci                      ( ci   ),

        .s                       ( s    ),
        .co                      ( co   )
    );

    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars;
        
        $display("================TESTBENCH==============");

        for (i = 0; i<8; i = i + 1) begin
            #delay
            {a, b, ci} = {a, b, ci} + 1;
        end
        
        #finishtime
        $display("=================FINISH================");
        $finish;
    end

    always @(a, b, ci) begin
        #(delay/2)
        if ({co, s} == (a + b + ci))
            $display("PASS: a=%d b=%d ci=%d s=%d co=%d    @%5t", a, b, ci, s, co, $time);
        else
            $display("FAIL: a=%d b=%d ci=%d s=%d co=%d", a, b, ci, s, co);
    end

endmodule