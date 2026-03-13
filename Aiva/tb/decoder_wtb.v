// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module decoder_wtb;

  // decoder instantation signals
  reg   op_rdy;
  reg   rst;
  reg   clk;
  reg  [23:0] opcode;
  wire  pc_en;
  wire  load_en;

decoder dut (
      .op_rdy(op_rdy),
      .rst(rst),
      .clk(clk),
      .opcode(opcode),
      .pc_en(pc_en),
      .load_en(load_en)
  );

endmodule 
 