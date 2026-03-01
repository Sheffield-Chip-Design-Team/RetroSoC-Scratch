module accumulator (
  input wire clk,
  input wire acc_rst,
  input wire acc_en,
  input [23:0] opcode,
  input wire op_rdy,
  input wire [7:0] acc_data_in,
  output reg [7:0] acc_out
);

parameter LDA = 'h888800;
parameter INC = 'h888801;
parameter DEC = 'h888802;

always @(posedge clk) begin
  if (acc_en) begin
    case (opcode)
      LDA: begin
        acc_out <= acc_data_in;
      end
    endcase
  end
end
  
endmodule