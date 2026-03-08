module decoder (
  input   wire        decoder_rst,
  input   wire        clk,
  input   wire  [7:0] opcode,
  output  reg         pc_en,
  output  reg         instr_en,
  output  reg         data_buff_en
); 

wire [3:0] HI_NIBBLE = opcode[7:4];
wire [3:0] LO_NIBBLE = opcode[3:0];

always @(posedge clk) begin
  if (decoder_rst) begin
    pc_en <= 1;
    instr_en <= 1;
    data_buff_en <= 0;
  end else begin
    if ((LO_NIBBLE == 9) && (HI_NIBBLE[0] == 0)) begin
      data_buff_en <= 0;
    end
  end
end

endmodule