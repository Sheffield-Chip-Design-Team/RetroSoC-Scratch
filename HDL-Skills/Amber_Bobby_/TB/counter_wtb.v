// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module counter_wtb;

  // counter instantation signals
  reg   clk;
  reg   en;
  reg   rst;
  reg   ld;
  reg  [3:0] dat_in;
  wire [3:0] dat_out;

counter dut (
      .clk(clk),
      .en(en),
      .rst(rst),
      .ld(ld),
      .dat_in(dat_in),
      .dat_out(dat_out)
  );

endmodule 
 