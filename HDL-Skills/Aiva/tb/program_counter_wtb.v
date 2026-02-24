// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module program_counter_wtb;

  // program_counter instantation signals
  reg   clk;
  reg   rst;
  reg   en;
  reg   branch_en;
  reg  [3:0] next_instr_addr;
  wire [3:0] curr_instr_addr;

program_counter dut (
      .clk(clk),
      .rst(rst),
      .en(en),
      .branch_en(branch_en),
      .next_instr_addr(next_instr_addr),
      .curr_instr_addr(curr_instr_addr)
  );

endmodule 
 