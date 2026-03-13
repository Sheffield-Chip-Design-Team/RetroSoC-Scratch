module decoder (
  input   wire        clk,
  input   wire        decoder_rst,
  input   wire  [7:0] opcode,
  input   wire  [3:0] cycle_counter,
  output  wire        instr_en,
  output  wire        data_buff_en
  output  reg         pc_en,
); 

wire [3:0] HI_NIBBLE = opcode[7:4];
wire [3:0] LO_NIBBLE = opcode[3:0];

data_buff_en = ((LO_NIBBLE == 9) && (HI_NIBBLE[0] == 0)) || (opcode == 162) || ((LO_NIBBLE == 0) && (HI_NIBBLE == 10 || HI_NIBBLE == 12 || HI_NIBBLE == 14)) && (cycle_counter == 1);

always @(posedge clk) begin
  if (decoder_rst) begin
    pc_en <= 1;
    instr_en <= 1;
  end else begin
    if ((LO_NIBBLE == 9) && (HI_NIBBLE[0] == 0)) begin
      data_buff_en <= 1;
    end
  end
end

endmodule