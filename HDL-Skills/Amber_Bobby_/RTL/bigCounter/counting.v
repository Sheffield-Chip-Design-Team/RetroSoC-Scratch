module county (
    input wire clk,
    input wire rst,
    input wire en,
    input wire lod,
    input [3:0] dat_in,
    output reg [3:0] dat_out
    
    
);

always @(posedge clk ) begin
    if (en) begin (
        dat_out <= dat_out + 1;
    ) end
    if (rst) begin(
        dat_out <= 0;
    ) end
    if (lod) begin(
        dat_out<=dat_in;
    )end
end


    
endmodule