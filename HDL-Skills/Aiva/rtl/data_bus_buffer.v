module data_bus_buffer (
  input wire        clk,  // DEBUG ONLY
  input wire        rst,  // DEBUG ONLY
  input wire  [7:0] data_bus,
  input wire        data_buff_en,
  inout wire  [7:0] inter_data_bus
);

assign inter_data_bus = data_buff_en ? data_bus : 8'bz;

endmodule