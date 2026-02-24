module instruction_register (
  input   wire          clk,
  input   wire          rst,
  input   wire          en,
  input         [7:0]   curr_wrd,
  output        [23:0]  opcode,
  output  wire          op_rdy
);

reg [7:0] word_a;
reg [7:0] word_b;
reg [7:0] word_c;

reg   [1:0] wrd_counter;

wire  [1:0] opcode_len = word_a[7:6] + 1;

assign  opcode  = {word_a, word_b, word_c};
assign  op_rdy = {wrd_counter > opcode_len};

assign  opcode_len = word_a[7:6] + 1;

always @(posedge clk) begin
  if (rst) begin

    word_a  <=  0;
    word_b  <=  0;
    word_c  <=  0;
    
    wrd_counter  <=  0;

  end else begin

    if (en && (wrd_counter < opcode_len)) begin

      case (wrd_counter)

        0:  begin
          word_a  <=  curr_wrd;
        end

        1:  begin
          word_b  <=  curr_wrd;
        end

        2: begin
          word_c  <=  curr_wrd;
        end

      endcase

      wrd_counter <=  wrd_counter + 1;

    end
  end
end
  
endmodule