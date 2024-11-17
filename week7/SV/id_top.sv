module id_top (
    input  logic        clk,              // Clock signal
    input  logic        rst,              // Reset signal
    input  logic        reg_wr,           // Register write enable
    input  logic [31:0] instruction,      // 32-bit instruction input
    input  logic [31:0] wr_data,          // Data to write into the register file
    input  logic [4:0]  wr_addr,          // Write-back destination address (rd)
    
    output logic [31:0] operand1,         // Output from register rs1
    output logic [31:0] operand2          // Output from register rs2
);

    // Internal signals for the decoder outputs
    logic [4:0] rs1, rs2, rd;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [31:0] i_type_imm, s_type_imm, b_type_imm, u_type_imm, j_type_imm;

    // Instantiate the decoder module
    decoder dec (
        .instruction(instruction),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .i_type_imm(i_type_imm),
        .s_type_imm(s_type_imm),
        .b_type_imm(b_type_imm),
        .u_type_imm(u_type_imm),
        .j_type_imm(j_type_imm)
    );

    // Instantiate the register file module
    regfile rf (
        .clk(clk),
        .rst(rst),
        .reg_wr(reg_wr),           // Enable writing to the register file
        .rs1(rs1),                 // Read address 1 from decoder
        .rs2(rs2),                 // Read address 2 from decoder
        .rd(wr_addr),              // Write-back address for register write
        .wd(wr_data),              // Write-back data
        .reg1(operand1),           // Operand 1 (data from rs1)
        .reg2(operand2)            // Operand 2 (data from rs2)
    );

endmodule
