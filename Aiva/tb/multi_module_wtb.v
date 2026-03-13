// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module multi_module_wtb;

  // multi_module instantation signals
  reg   clk;
  reg   m_we;
  reg   m_oe;
  reg   m_cs;
  reg   ir_rst;
  reg   ir_en;
  reg   pc_br_en;
  reg  [7:0] pc_next_instr_addr;
  reg  [7:0] m_data;
  wire [7:0] instr_bus;
  wire [23:0] full_opcode;
  wire  op_rdy_0;
  wire  pc_en_0;
  wire  load_en_0;
  wire [7:0] curr_instr_addr_0;

multi_module dut (
      .clk(clk),
      .m_rst(m_rst),
      .m_we(m_we),
      .m_oe(m_oe),
      .m_cs(m_cs),
      .ir_rst(ir_rst),
      .ir_en(ir_en),
      .pc_br_en(pc_br_en),
      .pc_next_instr_addr(pc_next_instr_addr),
      .m_data(m_data),
      .instr_bus(instr_bus),
      .full_opcode(full_opcode),
      .op_rdy_0(op_rdy_0),
      .pc_en_0(pc_en_0),
      .load_en_0(load_en_0),
      .curr_instr_addr_0(curr_instr_addr_0)
  );

endmodule 
 