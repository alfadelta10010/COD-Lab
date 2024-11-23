module idecode(
    input logic reset,
    input logic [31:0] instr,
    output logic [2:0] func3,       
    output logic [6:0] func7,        // func7 is 7 bits
    output logic [31:0] immfinal,   
    output logic [4:0] rdata1, rdata2
);
    logic [11:0] imm;
    logic [4:0] rd, rs1, rs2;

    // Instantiate the decoder module
    decode d (
        .instr(instr),
        .rd(rd),
        .rs1(rs1),
        .rs2(rs2),
		  .imm(imm),
     
        .func3(func3),    // Connect func3
        .func7(func7)     // Connect func7
    );

    // Instantiate the register file module
    regfile rf (
        .rd_addr(rd),
        .rs1_addr(rs1),
        .rs2_addr(rs2),
        .reset(reset),
        .rs1_data(rdata1),
        .rs2_data(rdata2)
    );

    // Instantiate the sign extension module
    signext sig (
        .imm(imm),
        .immfinal(immfinal)
    );
endmodule