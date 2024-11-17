// Write a SV program for Memory Access & Writeback Stage

module mem_wb_top #(parameter N = 32) (
    input logic [N-1:0] Addr,
    input logic [N-1:0] Datain,
    output logic [N-1:0] Final_Data,
    input logic clk,
    input logic MemToReg,
    input logic DataRead,
    input logic DataWrite
);

    logic [N-1:0] DataO;

    // Instantiate data memory
    dataMemory #(N, N) datafile (
        .Addr(Addr),
        .Datain(Datain),
        .Dataout(DataO), 
        .clk(clk),
        .DataRead(DataRead),
        .DataWrite(DataWrite)
    );

    // Instantiate 2-to-1 MUX
    mux31 #(N) MUX3 (
        .DataO(DataO),
        .ALU_O(Datain), // Assuming ALU_O is provided as Datain for writeback
        .RegWrite(MemToReg),
        .DataIn(Final_Data)
    );

endmodule

module mux31 #(parameter N = 32) (
    input logic [N-1:0] DataO,
    input logic [N-1:0] ALU_O,
    input logic RegWrite, 
    output logic [N-1:0] DataIn
);

    assign DataIn = (RegWrite ? DataO : ALU_O);

endmodule