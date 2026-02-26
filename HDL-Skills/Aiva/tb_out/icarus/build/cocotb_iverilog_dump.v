module cocotb_iverilog_dump();
initial begin
    string dumpfile_path;    if ($value$plusargs("dumpfile_path=%s", dumpfile_path)) begin
        $dumpfile(dumpfile_path);
    end else begin
        $dumpfile("/home/aaiva/Git-Repos/RetroSoC/RetroSoC-Scratch/HDL-Skills/Aiva/tb_out/icarus/build/program_counter_wtb.fst");
    end
    $dumpvars(0, program_counter_wtb);
end
endmodule
