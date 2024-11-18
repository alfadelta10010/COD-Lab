module Top(
    input logic clk,
    input logic rst
);

    // Wire declarations for inter-module connections
    logic [31:0] pc, next_pc, pc_plus_4, branch_offset, branch_target, instruction, reg_data1, reg_data2, alu_result, mem_data;
    logic [31:0] extended_imm, wb_data, alu_input2;
    logic [4:0] rs1, rs2, rd;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [11:0] i_type_imm, s_type_imm, b_type_imm;
    logic [19:0] u_type_imm, j_type_imm;

    // Control signals
    logic reg_wr, mem_rd, mem_wr, wb_ctrl, branch_ctrl, alu_s2;
    logic [1:0] alu_ctrl;
    logic [3:0] alu_op;
    logic branch_taken, branch_enable;

    // ALU branch flags
    logic zf, eq, ne, lt, ltu, ge, geu;

    // IF Stage: PC Register and PC Increment
    regis_if pc_reg (.din(next_pc), .clk(clk), .rst(rst), .q(pc));
    adder_if #(32) pc_adder (.a(pc), .sum(pc_plus_4));  // Increment PC by 4

    // Branch Target Calculation using shift_left and adder_ma modules
    shift_left #(32) branch_shift (.a(extended_imm), .c(branch_offset));  // Shift immediate left by 1
    adder_ma #(32) branch_adder (.a(pc), .b(branch_offset), .sum(branch_target));  // Calculate branch target address

    // Mux for Branch Decision Logic
    mux7_1 branch_mux (
        .d0(eq),         // BEQ (Branch if Equal)
        .d1(ne),         // BNE (Branch if Not Equal)
        .d2(lt),         // BLT (Branch if Less Than, signed)
        .d3(ge),         // BGE (Branch if Greater Than or Equal, signed)
        .d4(ltu),        // BLTU (Branch if Less Than, unsigned)
        .d5(geu),        // BGEU (Branch if Greater Than or Equal, unsigned)
        .d6(1'b0),       // Default (No branch)
        .sel(funct3),    // Select signal based on funct3
        .y(branch_taken) // Output to branch_taken
    );

    // Use and1 module for branch enable
    and1 branch_and_gate (
        .a(branch_ctrl),
        .b(branch_taken),
        .c(branch_enable)
    );

    // Next PC Selection using mux2_1
    mux2_1 pc_mux (
        .d0(pc_plus_4),
        .d1(branch_target),
        .s(branch_enable),
        .y(next_pc)
    );

    // Instruction Memory Fetch
    mem_if instruction_memory (.clk(clk), .addr(pc), .dout(instruction));

    // ID Stage: Instruction Decode and Register Read
    decoder_id decode (
        .instruction(instruction),
        .rs1(rs1), .rs2(rs2), .rd(rd),
        .opcode(opcode), .funct3(funct3), .funct7(funct7),
        .i_type_imm(i_type_imm), .s_type_imm(s_type_imm), .b_type_imm(b_type_imm),
        .u_type_imm(u_type_imm), .j_type_imm(j_type_imm)
    );

    // Register File
    reg_id register_file (
        .clk(clk), .rst(rst), .reg_wr(reg_wr), .rs1(rs1), .rs2(rs2), .rd(rd),
        .wd(wb_data), .reg1(reg_data1), .reg2(reg_data2)
    );

    sign_extension sign_extender (
        .iti(i_type_imm), .sti(s_type_imm), .bti(b_type_imm),
        .uti(u_type_imm), .jti(j_type_imm), .opcode(opcode),
        .eimm(extended_imm)
    );

    // Control Unit
    control_unit control (
        .opcode(opcode),
        .reg_wr(reg_wr), .mem_rd(mem_rd), .mem_wr(mem_wr),
        .wb_ctrl(wb_ctrl), .branch_ctrl(branch_ctrl),
        .alu_s2(alu_s2), .alu_ctrl(alu_ctrl)
    );

    // ALU Input 2 Mux - selects between reg_data2 and extended_imm based on alu_s2
    mux2_1 alu_input_mux (
        .d0(reg_data2),       // reg_data2 as one of the inputs
        .d1(extended_imm),    // immediate value from the sign extender as the other input
        .s(alu_s2),           // mux control signal
        .y(alu_input2)        // output for ALU second operand
    );

    // ALU Controller
    alu_controller alu_ctrl_unit (
        .f3(funct3), .f7(funct7), .alu_ctrl(alu_ctrl), .alu_op(alu_op)
    );

    // ALU Execution Stage
    ALU alu (
        .alu_op(alu_op), .rs1(reg_data1), .rs2(alu_input2),
        .rd1(alu_result), .zf(zf), .eq(eq), .ne(ne), .lt(lt), .ltu(ltu), .ge(ge), .geu(geu)
    );

    // Memory Access Stage
    mem_access #(32) data_memory (
        .data(reg_data2),      // Data input for memory write
        .addr(alu_result),     // Address from ALU result
        .clk(clk),
        .mR(mem_rd),           // Memory read enable
        .mW(mem_wr),           // Memory write enable
        .mout(mem_data)        // Data output for memory read
    );

    // Write Back Stage
    wb write_back (
        .md(mem_data), .f3(funct3), .ar(alu_result), .mtr(wb_ctrl), .wbd(wb_data)
    );

endmodule
