module WB (
    output logic [31:0] wb_data,
    input logic [31:0] AluOut,
    input logic [31:0] MemData,
    input bit MemToReg
);
    mux wb_mux(wb_data, MemToReg, AluOut, MemData);
endmodule