// Testbench for the AND GATE module

`timescale 1ns/1ps
`include "HDL Skills/Thomas/and_gate.v"

module and_gate_tb;

    // inputs
    reg a;
    reg b;

    // outputs
    wire y;

    // instantiate the AND GATE module
    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    // clock generation
    reg clk;
    always #5 clk = ~clk;

    // testing the input values
    initial begin

        $dumpfile("and_gate_tb.vcd");   // create a VCD file
        $dumpvars(0, and_gate_tb);


    a = 0;
    b = 0;
    #10;

    a = 0;
    b = 1;
    #10;

    a = 1;
    b = 0;
    #10;

    a = 1;
    b = 1;
    #10;

    $finish;    // end simulation

    end

endmodule