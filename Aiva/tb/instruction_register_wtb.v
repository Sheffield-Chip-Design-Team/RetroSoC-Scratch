// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module instruction_register_wtb;

  // instruction_register instantation signals
  reg   clk;
  reg   rst;
  reg   en;
  reg  [7:0] curr_wrd;
  wire [23:0] opcode;
  wire  op_rdy;

instruction_register dut (
      .clk(clk),
      .rst(rst),
      .en(en),
      .curr_wrd(curr_wrd),
      .opcode(opcode),
      .op_rdy(op_rdy)
  );

endmodule 
 