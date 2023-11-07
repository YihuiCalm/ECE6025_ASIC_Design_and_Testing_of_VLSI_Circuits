//~ `New testbench
`timescale 1ns / 1ps

module full_adder_tb;

// full_adder Parameters
parameter PERIOD  = 2;


// full_adder Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   ci                                   = 0 ;
reg   clk = 0;

// full_adder Outputs
wire  s                                    ;
wire  co                                   ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

full_adder  u_full_adder (
    .a                       ( a    ),
    .b                       ( b    ),
    .ci                      ( ci   ),

    .s                       ( s    ),
    .co                      ( co   )
);

initial
begin
    {a, b, ci} = 3'b000;
    #2
    {a, b, ci} = 3'b001;
    #2
    {a, b, ci} = 3'b010;
    #2
    {a, b, ci} = 3'b011;
    #2
    {a, b, ci} = 3'b100;
    #2
    {a, b, ci} = 3'b101;
    #2
    {a, b, ci} = 3'b110;
    #2
    {a, b, ci} = 3'b111;
    #2
    
    $finish;
end

initial
    begin
    // Open a db file for saving simulation data
    $shm_open ("full_adder_tb.db");
    // Collect all signals (hierarchically) from the module "mux_tb"
    $shm_probe (full_adder_tb,"AS");
end


endmodule