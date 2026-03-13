module workshop_counter (
  input wire clk,
  input wire rst,
  input wire en,
  input wire load,
  input [3:0] data_in,
  output reg [3:0] data_out
);
  
always @(posedge clk or posedge rst) begin

  if (en) begin

    if (rst) begin
      data_out <= 0;
    end else begin
      if (load) begin
        data_out <= data_in;
      end else begin
        data_out <= data_out + 1;
      end
    end
    
  end
  
end
 
endmodule