module InstDecode (
    input  logic [31:0] inst,        
    input  logic [31:0] wrdata,     
    input  logic        rw,          
    input  logic        reset,      
    output logic [31:0] imm,        
    output logic [31:0] rs1_d,      
    output logic [31:0] rs2_d ,
    output logic [6:0] func7,
    output logic [2:0] func3
);

    logic [4:0] rd_addr, rs1_addr, rs2_addr;
    logic [11:0] imm12;

    Decoder decoder_inst (
        .inst(inst),
        .func7(func7),
        .func3(func3),
        .rd(rd_addr),
        .rs1(rs1_addr),
        .rs2(rs2_addr),
        .imm(imm12)
    );

    regfile regfile_inst (
        .rs1(rs1_addr),
        .rs2(rs2_addr),
        .rd_addr(rd_addr),
        .rw(rw),
        .wrdata(wrdata),
        .reset(reset),
        .rs1_d(rs1_d),
        .rs2_d(rs2_d)
    );

    signextend signextend_inst (
        .im12(imm12),
        .imm(imm)
    );

endmodule