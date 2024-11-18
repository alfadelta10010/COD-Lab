module top(
    input logic clk,            // Clock signal
    input logic reset           // Reset signal
);

    // Program Counter and instruction signals
    logic [31:0] pc, next_pc;           // Current and next program counter
    logic [31:0] instruction;           // Current instruction

    // Control signals from Control Unit
    logic Branch, MemRead, MemToReg, MemWrite, ALUSrc, RegWrite;
    logic [1:0] ALUOp;
    logic [3:0] ALUControlOut;          // ALU Control Signal

    // Decoder output signals
    logic [6:0] opcode;                 // Opcode field
    logic [4:0] rs1, rs2, rd;           // Register fields
    logic [2:0] funct3;                 // Function3 field
    logic [6:0] funct7;                 // Function7 field
    logic [31:0] imm;                   // Immediate value

    // Register file signals
    logic [31:0] r1, r2;                // Read data from registers
    logic [31:0] write_data;            // Write data for register file

    // ALU and data memory signals
    logic [31:0] alu_result, alu_input2;
    logic alu_zero;
    logic [31:0] mem_read_data;

    // Instantiate Program Counter (PC) module
    program_counter pc_reg (
        .pcout(pc),
        .pcin(next_pc),
        .clk(clk),
        .reset(reset)
    );

    // Instruction Memory
    inst_mem instr_mem (
        .address(pc),
        .instruction(instruction),
        .clk(clk)
    );

    // Decoder (Splits instruction and generates the immediate)
    decoder instruction_decoder (
        .instruction(instruction),
        .opcode(opcode),
        .rd(rd),
        .funct3(funct3),
        .rs1(rs1),
        .rs2(rs2),
        .funct7(funct7),
        .imm(imm)
    );

    // Control Unit (Generates control signals based on opcode)
    controlunit control (
        .opcode(opcode),
        .ALUSrc(ALUSrc),
        .MemToReg(MemToReg),
        .RegWrite(RegWrite),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .ALUOp(ALUOp)
    );

    // Register File
    RegisterFile reg_file (
        .clk(clk),
        .wen(RegWrite),
        .ws(rd),
        .rs1(rs1),
        .rs2(rs2),
        .wd(write_data),
        .r1(r1),
        .r2(r2)
    );

    // ALU Control Unit
    alucontrol alu_control (
        .ALUOp(ALUOp),
        .funct3(funct3),
        .funct7(funct7),
        .ALUControl(ALUControlOut)
    );

    // ALU input MUX (selects between register data and immediate)
    mux_21 alu_input_mux (
        .d0(r2),
        .d1(imm),
        .s(ALUSrc),
        .y(alu_input2)
    );

    // ALU
    ALU alu (
        .A(r1),
        .B(alu_input2),
        .ALUControl(ALUControlOut),
        .ALUResult(alu_result),
        .Zero(alu_zero)
    );

    // Data Memory
    memory data_mem (
        .rdata(mem_read_data),
        .wdata(r2),
        .address(alu_result),
        .func3(funct3),
        .MemRead(MemRead),
        .MemWrite(MemWrite)
    );

    // Write-back MUX (selects between ALU result and memory read data)
    mux_21 write_back_mux (
        .d0(alu_result),
        .d1(mem_read_data),
        .s(MemToReg),
        .y(write_data)
    );

    // Shift Left by 1 for Branch Target Calculation
    logic [31:0] branch_offset;
    sll shift_left (
        .in(imm),
        .out(branch_offset)
    );

    // Add for Branch Target
    logic [31:0] branch_target;
    adder #(.WIDTH(32)) branch_add (
        .a(pc),
        .b(branch_offset),
        .y(branch_target)
    );

    // Add 4 to PC for Next Instruction
    logic [31:0] pc_plus_4;
    adder #(.WIDTH(32)) pc_increment (
        .a(pc),
        .b(32'd4),
        .y(pc_plus_4)
    );

    // Branch Condition AND Gate
    logic branch_taken;
    and_gate branch_and (
        .a(Branch),
        .b(alu_zero),
        .y(branch_taken)
    );

    // PC MUX (selects between next_pc and branch target)
    mux_21 pc_mux (
        .d0(pc_plus_4),
        .d1(branch_target),
        .s(branch_taken),
        .y(next_pc)
    );
endmodule
