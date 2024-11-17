module write_back(input logic [31:0]alu_out,
    input logic [31:0]data_out,
    input logic memtoreg,zero,br,
    output logic [31:0]wb,
    output logic pc_src);

mux21 mux4(alu_out,data_out,memtoreg,wb);
AND1 and1(br,zero,pc_src);
endmodule
