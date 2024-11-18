module ID (
    input  logic [31:0] instruction,
    input  logic reg_write,
    input  logic [31:0] wr_data,
    input  logic res,
    output logic [6:0] opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic [4:0] rd,
    output logic [4:0] rs1,
    output logic [4:0] rs2,
    output logic [31:0] imm_ext,
    output logic [31:0] reg1,
    output logic [31:0] reg2
);

    logic [31:0] imm;

    decoder dec (
        .instruction(instruction),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rd(rd),
        .rs1(rs1),
        .rs2(rs2),
        .imm(imm)
    );

    signext se (
        .imm(imm[11:0]),  // Use only 12-bit immediate for sign extension
        .imm_ext(imm_ext)
    );

    regfile #(32) rf (
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .reg_write(reg_write),
        .wr_data(wr_data),
        .res(res),
        .reg1(reg1),
        .reg2(reg2)
    );
endmodule
