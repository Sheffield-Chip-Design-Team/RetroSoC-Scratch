module accumulator (
  input wire clk,
  input wire acc_rst,
  input wire acc_en,
  input wire acc_load,
  input wire acc_shft,
  input wire acc_shft_left,
  input wire acc_inc,
  input wire acc_dec,
  input wire [7:0] acc_data_in,
  output reg [7:0] acc_out
);

always @(posedge clk) begin
  if (acc_en) begin
    if (acc_rst) begin
      acc_out <= 0;
    end
  end
end
  
endmodule