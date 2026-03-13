// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module workshop_counter_wtb;

  // workshop_counter instantation signals
  reg   clk;
  reg   rst;
  reg   en;
  reg   load;
  reg  [3:0] data_in;
  wire [3:0] data_out;

workshop_counter dut (
      .clk(clk),
      .rst(rst),
      .en(en),
      .load(load),
      .data_in(data_in),
      .data_out(data_out)
  );

endmodule 
 