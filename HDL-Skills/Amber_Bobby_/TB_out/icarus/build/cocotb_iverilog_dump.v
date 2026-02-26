module cocotb_iverilog_dump();
initial begin
    string dumpfile_path;    if ($value$plusargs("dumpfile_path=%s", dumpfile_path)) begin
        $dumpfile(dumpfile_path);
    end else begin
        $dumpfile("/home/amr/GitReposNStuff/RetroSoC/retroSoC-Scratch/HDL-Skills/Amber_Bobby_/TB_out/icarus/build/counter_wtb.fst");
    end
    $dumpvars(0, counter_wtb);
end
endmodule
