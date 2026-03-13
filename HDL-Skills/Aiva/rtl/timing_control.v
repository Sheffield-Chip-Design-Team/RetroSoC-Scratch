module timing_control (
    input           clk,
    input           t_rst,
    input           instr_end,
    input   [2:0]   instr_len,
    output          instr_reg_en
);

reg [2:0] cycle_counter

assign instr_reg_en = (cycle_counter == 0);

always @(posedge clk or posedge instr_end) begin
    if (rst | instr_end) begin
        cycle_counter <= 0;
    end
end

endmodule