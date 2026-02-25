module program_counter (
  input   wire        clk,              // System Clock Input
  input   wire        rst,              // On re -> rst, the program counter will reset to value 0.
  input   wire        en,               // When low, the program counter will not increment or branch on re -> clk.
  input   wire        branch_en,        // When high, the program counter will load the value on "next_instr_addr" on re -> clk. Otherwise the program counter will increment by one (given it is enabled).
  input         [8:0] next_instr_addr,  // Port / data input for when the program counter branches.
  output  reg   [8:0] curr_instr_addr   // The current value of the program counter.
);

always @(posedge clk or posedge rst) begin // On the rising edge of clk or rst, do this:
  if (rst) begin                                  // If triggered by rst, reset the program counter to 0.
    curr_instr_addr <= 0;                             //
  end else begin                                  // Otherwise:
    if (en) begin                                     // If the program counter is enabled:
      if (~branch_en) begin                               // And branch_en is low:
        curr_instr_addr <= curr_instr_addr +1;                // Increment the program counter by one.
      end else begin                                      // Otherwise (if branch_en is high and en is high):
        curr_instr_addr <= next_instr_addr;                   // Branch (program counter loads value on next_instr_addr).
      end
    end
  end
end

endmodule