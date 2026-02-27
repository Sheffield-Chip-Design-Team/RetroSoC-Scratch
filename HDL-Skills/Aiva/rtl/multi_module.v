module multi_module (
  input wire clk,
  input wire m_rst,
  input wire m_we,
  input wire m_oe,
  input wire m_cs,
  input wire ir_rst,
  input wire ir_en,
  input wire pc_br_en,
  input [7:0] pc_next_instr_addr,
  input [7:0] m_data,
  output wire [7:0] instr_bus,
  output wire [23:0] full_opcode,
  output wire op_rdy_0,
  output wire pc_en_0,
  output wire load_en_0,
  output wire [7:0] curr_instr_addr_0
);

program_counter PC (
  clk,
  rst,
  pc_en_0,
  pc_br_en,
  pc_next_instr_addr,
  curr_instr_addr_0
);

instruction_register IR (
  clk,
  ir_rst,
  ir_en,
  instr_bus,
  full_opcode,
  op_rdy_0
);

decoder CU (
  rst,
  clk,
  op_rdy_0,
  full_opcode,
  pc_en_0,
  load_en_0
);

instr_mem prog_mem (
  clk,
  m_cs,
  m_we,
  m_oe,
  curr_instr_addr_0,
  m_data
);
  
endmodule