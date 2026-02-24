module cocotb_iverilog_dump();
initial begin
    string dumpfile_path;    if ($value$plusargs("dumpfile_path=%s", dumpfile_path)) begin
        $dumpfile(dumpfile_path);
    end else begin
        $dumpfile("/home/aaiva/Git-Repos/RetroSoC/RetroSoC-Scratch/HDL-Skills/Aiva/icarus/instr_mem_wtb.fst");
    end
    $dumpvars(0, instr_mem_wtb);
end
endmodule
