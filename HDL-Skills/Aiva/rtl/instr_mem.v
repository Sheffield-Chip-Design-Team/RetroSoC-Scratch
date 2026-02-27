module instr_mem (
  input       clk,
  input       cs,
  input       we,
  input       oe,
  input [7:0] addr_in,
  inout [7:0] data
);

reg [7:0] tmp_data;
reg [7:0] mem [255:0];

assign data = cs & oe & !we ? tmp_data  : 'hz;

always @(posedge clk) begin
  if (cs & we) begin
    mem[addr_in] <= data;
  end
  if (cs & !we) begin
    tmp_data <= mem[addr_in];
  end
end


endmodule