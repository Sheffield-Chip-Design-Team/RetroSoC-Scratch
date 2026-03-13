// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module instr_mem_wtb;

  // instr_mem instantation signals
  reg   clk;
  reg   cs;
  reg   we;
  reg   oe;
  reg  [7:0] addr_in;
  wire [7:0] data;

  reg [7:0] tb_data;


instr_mem dut (
      .clk(clk),
      .cs(cs),
      .we(we),
      .oe(oe),
      .addr_in(addr_in),
      .data(data)
  );

  assign data = !oe ? tb_data : 'hz;

endmodule 
 