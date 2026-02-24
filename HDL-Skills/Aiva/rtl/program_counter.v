module program_counter (
  input   wire        clk,
  input   wire        rst,
  input   wire        en,
  input   wire        branch_en,
  input         [8:0] next_instr_addr,
  output  reg   [8:0] curr_instr_addr
);

always @(posedge clk or posedge rst) begin
  if (rst) begin
    curr_instr_addr <= 0;
  end else begin
    if (en) begin
      if (~branch_en) begin
        curr_instr_addr <= curr_instr_addr +1;
      end else begin
        curr_instr_addr <= next_instr_addr;
      end
    end
  end
end

endmodule