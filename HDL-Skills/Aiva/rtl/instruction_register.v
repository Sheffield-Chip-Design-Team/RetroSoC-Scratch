module instruction_register (
  input   wire          clk,
  input   wire          instr_rst,  // DEBUG ONLY
  input   wire          instr_en,   // DEBUG ONLY
  input         [7:0]   data_bus,
  output  reg   [7:0]   opcode,
  output  reg           op_rdy
);

reg [1:0] wrd_counter;
  
always @(posedge clk) begin
  if (instr_en) begin
    if (instr_rst) begin
      opcode <= 0;
      op_rdy <= 0;
    end else begin
      if (op_rdy == 0) begin
        opcode <= data_bus;
        op_rdy <= 1;
      end
    end
  end
end

endmodule