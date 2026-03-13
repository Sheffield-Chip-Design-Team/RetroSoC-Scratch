module cocotb_iverilog_dump();
initial begin
    string dumpfile_path;    if ($value$plusargs("dumpfile_path=%s", dumpfile_path)) begin
        $dumpfile(dumpfile_path);
    end else begin
        $dumpfile("/home/person/git_repos/retroSoC/RetroSoC-Scratch/HDL-Skills/Dima/TB_out/icarus/build/workshop_counter_wtb.fst");
    end
    $dumpvars(0, workshop_counter_wtb);
end
endmodule
