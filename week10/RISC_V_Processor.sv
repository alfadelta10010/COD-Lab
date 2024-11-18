module RISC_V_Processor (
    input logic clk,
    input logic reset
);

    // Internal signals
    logic [31:0] instruction, pc_next, pc_imm;
    logic [31:0] rs1, rs2, imm_ext, alu_out;
    logic [31:0] read_data, write_data;
    logic [6:0] opcode, funct7;
    logic [2:0] funct3;
    logic [4:0] rd, rs1_addr, rs2_addr;
    logic reg_write, mem_read, mem_write, branch, alu_src;
    logic [1:0] alu_op;
    logic and_out;

    // Instantiate Fetch Stage (IF)
    IF IF_stage (
        .clk(clk),
        .reset(reset),
        .pc_next(pc_next),
        .pc_imm(pc_imm),
        .instruction(instruction)
    );

    // Decode Stage (ID)
    ID ID_stage (
        .instruction(instruction),
        .reg_write(reg_write),
        .wr_data(write_data),
        .res(reset),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rd(rd),
        .rs1(rs1_addr),
        .rs2(rs2_addr),
        .imm_ext(imm_ext),
        .reg1(rs1),
        .reg2(rs2)
    );

    // Control Unit
    CU Control_Unit (
        .opcode(opcode),
        .reg_write(reg_write),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .branch(branch),
        .alu_src(alu_src),
        .alu_op(alu_op)
    );

    // Execute Stage (IE)
    IE IE_stage (
        .rs1(rs1),
        .rs2(rs2),
        .immfinal(imm_ext),
        .alu_src(alu_src),
        .alu_op(alu_op),
        .funct7(funct7),
        .funct3(funct3),
        .branch(branch),
        .alu_out(alu_out),
        .and_out(and_out)
    );

    // Memory Access Stage (MA)
    MA MA_stage (
        .ALU_result(alu_out),
        .rs2_data(rs2),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .clk(clk),
        .read_data(read_data)
    );

    // Write Back Stage (WB)
    WB WB_stage (
        .read_data(read_data),
        .ALU_result(alu_out),
        .mem_to_reg(mem_read), // mem_read determines the source for write-back
        .write_data(write_data)
    );
    

endmodule
