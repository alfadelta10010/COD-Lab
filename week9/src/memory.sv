module memory (
    output logic [31:0] rdata,
    input logic [31:0] wdata,
    input logic [31:0] address,
    input bit MemRead,
    input bit MemWrite
);
    logic [7:0] memarr [1023:0];
    always@(MemRead) rdata <= {memarr[address],memarr[address+1],memarr[address+2],memarr[address+3]};
    always@(MemWrite) {memarr[address],memarr[address+1],memarr[address+2],memarr[address+3]} <= wdata;
endmodule
