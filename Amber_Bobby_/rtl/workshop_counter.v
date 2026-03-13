module counter (
    input  wire clk,
    input wire en,
    input wire rst,
    input wire ld,
    input [3:0] dat_in,
    output  reg [3:0] dat_out
);
always @(posedge clk or posedge rst ) begin
    if (en) begin
        dat_out <= dat_out + 1;
        if (rst) begin
            dat_out<=0;
        end else begin
            if (ld) begin
                dat_out<=dat_in;
            end else begin
                dat_out <= dat_out + 1;

            end
        end 
        
    end


end
endmodule