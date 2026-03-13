module genral_ram 
// PARAMETERS
#(
  parameter ADDR_WIDTH = 8,
  parameter DATA_WIDTH = 8,
  parameter DEPTH = 8 // Depth = how many words of data. Limited by Address Width.
)
// PORTS
(
  input       clk,
  input       cs,
  input       we,
  input       oe,
  input [ADDR_WIDTH-1:0] addr_in,
  inout [DATA_WIDTH-1:0] data
);

reg [DATA_WIDTH-1:0] tmp_data;
reg [DATA_WIDTH:0] mem [DEPTH-1:0];

always @(posedge clk) begin
  if (cs & we) begin
    mem[addr_in] <= data;
  end
end

always @(posedge clk) begin
  if (cs & !we) begin
    tmp_data <= mem[addr_in];
  end
end

assign data = cs & oe & !we ? tmp_data  : 'hz;

endmodule