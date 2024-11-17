module singlecycle (
    input logic clk,                 // Clock signal
    input logic reset                // Reset signal
);

    // Intermediate signals for each stage
    logic [31:0] pc_next, pc_imm, instruction, imm_ext, reg1, reg2;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [4:0] rd, rs1, rs2;
    logic [31:0] alu_out, read_data, write_data;
    logic and_out, branch, mem_read, mem_write, mem_to_reg, reg_write;
    logic alu_src;
    logic [3:0] alu_op;

    // Instantiate each stage and control unit

    // Instruction Fetch (IF) Stage
    IF IF_stage (
        .clk(clk),
        .pc_next(pc_next),
        .pc_imm(pc_imm),
        .reset(reset),
        .instruction(instruction),
        .s(and_out)   // Branch decision from the Execute (IE) stage
    );

    // Instruction Decode (ID) Stage
    ID2 ID_stage (
        .instruction(instruction),
        .reg_write(reg_write),
        .wr_data(write_data),
        .res(reset),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rd(rd),
        .rs1(rs1),
        .rs2(rs2),
        .imm_ext(imm_ext),
        .reg1(reg1),
        .reg2(reg2)
    );

    // Control Unit
    controlunit control_unit (
        .opcode(opcode),
        .ALUOp(alu_op),
        .ALUSrc(alu_src),
        .Branch(branch),
        .MemRead(mem_read),
        .MemWrite(mem_write),
        .MemToReg(mem_to_reg),
        .RegWrite(reg_write)
    );

    // ALU Control Unit (instantiating the ALU control unit here)
    alu_control_unit alu_ctrl_unit (
        .funct3(funct3),
        .funct7(funct7),
        .alu_op(alu_op),
        .alu_ctrl(alu_op)  // ALU control signal to be used in the Execute (IE) stage
    );

    // Execute (IE) Stage
    IE2 IE_stage (
        .rs1(reg1),
        .rs2(reg2),
        .immfinal(imm_ext),
        .alu_src(alu_src),
        .alu_op(alu_op),
        .branch(branch),
        .alu_out(alu_out),
        .and_out(and_out)
    );

    // Memory Access (MA) Stage
    MA MA_stage (
        .ALU_result(alu_out),
        .rs2_data(reg2),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .clk(clk),
        .read_data(read_data)
    );

    // Write Back (WB) Stage
    WB WB_stage (
        .read_data(read_data),
        .ALU_result(alu_out),
        .mem_to_reg(mem_to_reg),
        .write_data(write_data)
    );

    // PC adder logic for branch or sequential next instruction
    assign pc_imm = imm_ext + pc_next;

endmodule
