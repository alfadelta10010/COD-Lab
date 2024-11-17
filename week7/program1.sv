module ID_top (
    input logic [31:0] instruction,
    output logic [31:0] imm_exd,
    output logic [2:0] fun3,
    output logic [6:0] fun7,
    output logic [31:0] rs1_data, rs2_data
);

    wire [11:0] immi;
    wire [4:0] rd_dl, rs1_dl, rs2_dl;
    wire [6:0] op;
    logic Reg_Write; // Assume this signal is generated somewhere within your control logic

    decoder_unit decode (
        .instruction(instruction),
        .rd(rd_dl),
        .rs1(rs1_dl),
        .rs2(rs2_dl),
        .fun3(fun3),
        .fun7(fun7),
        .opcode(op),
        .immediate(immi)
    );

    reg_file register (
        .rs1_add(rs1_dl),
        .rs2_add(rs2_dl),
        .rd_add(rd_dl),
        .wr_data(32'b0), // Placeholder, should be connected to the data to write
        .Reg_Write(Reg_Write),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );

   // sign_extn signextn (
     //   .immi(immi),
       // .imm_exd(imm_exd)
   

endmodule
