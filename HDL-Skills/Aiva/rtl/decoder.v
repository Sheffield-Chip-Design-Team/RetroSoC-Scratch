module decoder (
  input wire op_rdy,
  input wire rst,
  input wire clk,
  input [23:0] opcode,
  output wire pc_en,
  output wire load_en
); 

reg instr_done;
assign pc_en = instr_done | !op_rdy;

always @(posedge clk) begin
  instr_done <= 0;
  if (op_rdy) begin
    case (opcode[23:16])
      8'h00: begin // No Op
        instr_done <= 1;
      end
      default: instr_done <= 0;
    endcase
  end
end

endmodule