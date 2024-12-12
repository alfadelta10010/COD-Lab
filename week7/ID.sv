module ID #(parameter n=32)(  
    input logic reset,  
    input logic [n-1:0] wr_data,     // input for write-back data  
    input logic write_enable,         // write_enable signal  
    input logic clk,                  // Clock signal  
    input logic [n-1:0] instr,       // Instruction input  
    output logic [2:0] func3,        // 3-bit function code  
    output logic [6:0] func7,        // 7-bit function code  
    output logic [n-1:0] immfinal,   // 32-bit immediate value  
    output logic [n-1:0] rdata1,     // Register data output 1  
    output logic [n-1:0] rdata2      // Register data output 2  
);  

    // Internal signals for register addresses and immediate value  
    logic [4:0] rd, rs1, rs2;  
    logic [11:0] imm;  

    // Decoder instantiation  
    decoder d (  
        .instr(instr),  
        .rd(rd),  
        .rs1(rs1),  
        .rs2(rs2),  
        .imm(imm),  
        .func3(func3),  
        .func7(func7)  
    );  

    // Register file instantiation  
    regfile #(n) rf (  // Explicitly define parameter n for regfile  
        .rd(rd),  
        .wr_data(wr_data),          // Connect wr_data from WB  
        .rs1(rs1),  
        .rs2(rs2),  
        .reset(reset),  
        .write_enable(write_enable),  
        .clk(clk),  
        .rdata1(rdata1),  
        .rdata2(rdata2)  
    );  

    // Sign extension module for immediate values  
    signext sig (  
        .imm(imm),  
        .immfinal(immfinal)  
    );  

endmodule