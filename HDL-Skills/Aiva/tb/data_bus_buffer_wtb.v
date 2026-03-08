// Auto-generated Verilog Testbench Wrapper - Coraltb 
 
`timescale 1ns/1ns 


module data_bus_buffer_wtb;

  // data_bus_buffer instantation signals
  reg   clk;
  reg   rst;
  reg  [7:0] data_bus;
  reg   data_buff_en;
  wire [7:0] inter_data_bus;

data_bus_buffer dut (
      .clk(clk),
      .rst(rst),
      .data_bus(data_bus),
      .data_buff_en(data_buff_en),
      .inter_data_bus(inter_data_bus)
  );

endmodule 
 