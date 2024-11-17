module writeback(
    input logic alu_out,data_out,logic memtoreg,
    output logic  wd
    );
    
    MUX #(32)g1(alu_out,data_out,memtoreg,wd);
endmodule
