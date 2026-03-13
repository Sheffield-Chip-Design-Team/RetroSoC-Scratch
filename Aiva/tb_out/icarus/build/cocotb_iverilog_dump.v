module cocotb_iverilog_dump();
initial begin
    string dumpfile_path;    if ($value$plusargs("dumpfile_path=%s", dumpfile_path)) begin
        $dumpfile(dumpfile_path);
    end else begin
        $dumpfile("/home/aaiva/Git-Repos/RetroSoC/RetroSoC-Scratch/HDL-Skills/Aiva/tb_out/icarus/build/data_bus_buffer_wtb.fst");
    end
    $dumpvars(0, data_bus_buffer_wtb);
end
endmodule
