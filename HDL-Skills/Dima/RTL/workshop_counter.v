module counter (
    input [3:0] data_in,
    input wire clk,
    input wire rst,
    input wire en,
    input wire load,

    output reg [3:0] data_out
);

always @(posedge clk) begin
    if (en) begin (
        data_out <= data_out + 1;
    ) end
    if (rst) begin (
        data_out <= 0;
    ) end
    if (load) begin (
        data_out <= data_in
    ) end
end
    
endmodule