week 10 
1  
module control_unit(
    input logic clk,                  // Clock signal
    input logic reset,                // Reset signal
    input logic [5:0] opcode,         // Opcode field of the instruction (6 bits)
    input logic [2:0] funct3,         // funct3 field (3 bits)
    input logic [6:0] funct7,         // funct7 field (7 bits)
    output logic MemRead,             // Memory read signal
    output logic MemWrite,            // Memory write signal
    output logic RegWrite,            // Register write signal
    output logic ALUSrc,              // ALU source signal (whether to use immediate or register)
    output logic RegDst,              // Register destination signal (which register to write)
    output logic MemToReg,            // Memory to register signal (for load instructions)
    output logic Branch,              // Branch signal (for branch instructions)
    output logic Jump,                // Jump signal (for jump instructions)
    output logic [1:0] ALUOp          // ALU operation code (e.g., add, subtract, etc.)
);

    // Control signal initialization for Stage 1 (Instruction Fetch)
    logic [1:0] stage;  // Control stage (0 = IF, 1 = ID/EX)
    
    // Stage 1: Instruction Fetch (IF)
    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            stage <= 2'b00;  // Initial stage: IF
        end else begin
            case (stage)
                2'b00: stage <= 2'b01;  // After fetch, move to decode/execute
                2'b01: stage <= 2'b00;  // After decode/execute, move back to fetch
            endcase
        end
    end
    
    // Stage 2: Control signals for Decode/Execute (ID/EX)
    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            MemRead     <= 0;
            MemWrite    <= 0;
            RegWrite    <= 0;
            ALUSrc      <= 0;
            RegDst      <= 0;
            MemToReg    <= 0;
            Branch      <= 0;
            Jump        <= 0;
            ALUOp       <= 2'b00;
        end else begin
            case (opcode)
                6'b000000: begin  // R-type (ADD, SUB, AND, OR, etc.)
                    case (funct3)
                        3'b000: begin  // ADD or SUB (determined by funct7)
                            if (funct7 == 7'b0000000) begin  // ADD
                                MemRead     <= 0;
                                MemWrite    <= 0;
                                RegWrite    <= 1;
                                ALUSrc      <= 0;
                                RegDst      <= 1;
                                MemToReg    <= 0;
                                Branch      <= 0;
                                Jump        <= 0;
                                ALUOp       <= 2'b10;  // ADD operation
                            end else if (funct7 == 7'b0100000) begin  // SUB
                                MemRead     <= 0;
                                MemWrite    <= 0;
                                RegWrite    <= 1;
                                ALUSrc      <= 0;
                                RegDst      <= 1;
                                MemToReg    <= 0;
                                Branch      <= 0;
                                Jump        <= 0;
                                ALUOp       <= 2'b10;  // SUB operation
                            end
                        end
                        3'b111: begin  // AND
                            MemRead     <= 0;
                            MemWrite    <= 0;
                            RegWrite    <= 1;
                            ALUSrc      <= 0;
                            RegDst      <= 1;
                            MemToReg    <= 0;
                            Branch      <= 0;
                            Jump        <= 0;
                            ALUOp       <= 2'b11;  // AND operation
                        end
                        3'b110: begin  // OR
                            MemRead     <= 0;
                            MemWrite    <= 0;
                            RegWrite    <= 1;
                            ALUSrc      <= 0;
                            RegDst      <= 1;
                            MemToReg    <= 0;
                            Branch      <= 0;
                            Jump        <= 0;
                            ALUOp       <= 2'b11;  // OR operation
                        end
                        default: begin
                            // Handle other funct3 cases (e.g., XOR, SLT, etc.)
                            MemRead     <= 0;
                            MemWrite    <= 0;
                            RegWrite    <= 0;
                            ALUSrc      <= 0;
                            RegDst      <= 0;
                            MemToReg    <= 0;
                            Branch      <= 0;
                            Jump        <= 0;
                            ALUOp       <= 2'b00;
                        end
                    endcase
                end
                6'b100011: begin  // LW (Load Word)
                    MemRead     <= 1;
                    MemWrite    <= 0;
                    RegWrite    <= 1;
                    ALUSrc      <= 1;
                    RegDst      <= 0;
                    MemToReg    <= 1;
                    Branch      <= 0;
                    Jump        <= 0;
                    ALUOp       <= 2'b00;  // ALU operation: Add (for address calculation)
                end
                6'b101011: begin  // SW (Store Word)
                    MemRead     <= 0;
                    MemWrite    <= 1;
                    RegWrite    <= 0;
                    ALUSrc      <= 1;
                    RegDst      <= 0;
                    MemToReg    <= 0;
                    Branch      <= 0;
                    Jump        <= 0;
                    ALUOp       <= 2'b00;  // ALU operation: Add (for address calculation)
                end
                6'b000100: begin  // BEQ (Branch if Equal)
                    MemRead     <= 0;
                    MemWrite    <= 0;
                    RegWrite    <= 0;
                    ALUSrc      <= 0;
                    RegDst      <= 0;
                    MemToReg    <= 0;
                    Branch      <= 1;
                    Jump        <= 0;
                    ALUOp       <= 2'b01;  // ALU operation: Subtract (for comparison)
                end
                6'b000010: begin  // J (Jump)
                    MemRead     <= 0;
                    MemWrite    <= 0;
                    RegWrite    <= 0;
                    ALUSrc      <= 0;
                    RegDst      <= 0;
                    MemToReg    <= 0;
                    Branch      <= 0;
                    Jump        <= 1;
                    ALUOp       <= 2'b00;  // ALU operation: No operation (just jump)
                end
                default: begin
                    MemRead     <= 0;
                    MemWrite    <= 0;
                    RegWrite    <= 0;
                    ALUSrc      <= 0;
                    RegDst      <= 0;
                    MemToReg    <= 0;
                    Branch      <= 0;
                    Jump        <= 0;
                    ALUOp       <= 2'b00;
                end
            endcase
        end
    end
endmodule



2 single cycle \

module single_cycle(
    input  logic        clk,               // Clock signal
    input  logic        reset,             // Reset signal
    output logic [31:0] alu_result,        // ALU result or memory output
    output logic        zero_flag,         // Zero flag for branch decisions
    output logic [31:0] instruction_out    // Fetched instruction (for debugging)
);

    // Signals to connect between stages and submodules
    logic [31:0] pc_out;                    // Current PC value
    logic [31:0] next_pc;                   // Next PC value
    logic [31:0] branch_target;             // Branch target address
    logic [31:0] instruction;               // Fetched instruction
    logic [31:0] rs1_data, rs2_data;        // Data from registers (rs1 and rs2)
    logic [31:0] imm_ext;                   // Sign-extended immediate value
    logic [3:0]  alu_op;                    // ALU operation control signal
    logic [4:0]  rs1, rs2, rd;              // Register addresses
    logic [6:0]  opcode;                    // Opcode from instruction
    logic [2:0]  funct3;                    // funct3 field from instruction
    logic [6:0]  funct7;                    // funct7 field from instruction
    logic        alu_src;                   // ALU source select signal
    logic        branch;                    // Branch control signal
    logic        mem_read, mem_write;       // Memory control signals
    logic        reg_write;                 // Register write-back signal
    logic        memToReg;                  // Select signal for memory or ALU output

    // Program Counter
    ProgramCounter pc_module (
        .clk(clk),
        .reset(reset),
        .pc_in(next_pc),
        .pc_out(pc_out)
    );

    // Instruction Memory
    InstructionMemory instruction_memory (
        .pc_out(pc_out),
        .reset(reset),
        .instr(instruction)
    );

    // Decoder for instruction
    Decoder decoder (
        .instruction(instruction),
        .opcode(opcode),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .funct3(funct3),
        .funct7(funct7)
    );

    // Control Unit
    ControlUnit control_unit (
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .alu_src(alu_src),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_write(reg_write),
        .branch(branch),
        .alu_op(alu_op),
        .memToReg(memToReg)
    );

    // Register File
    RegisterFile reg_file (
        .clk(clk),
        .reset(reset),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .write_enable(reg_write),
        .write_data(alu_result),       // Writing ALU result or memory data back to rd
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );

    // Sign Extender for immediate values
    SignExtender sign_ext (
        .instruction(instruction),
        .immediate_out(imm_ext)
    );

    // ALU Input MUX (selects between rs2_data and imm_ext)
    logic [31:0] alu_input2;
    MUX alu_input_mux (
        .d1(imm_ext),                    // Immediate value
        .d0(rs2_data),                   // Register data from rs2
        .s(alu_src),                     // ALU source select signal
        .y(alu_input2)                   // Output selected value (second ALU input)
    );

    // ALU for executing instructions
    logic [31:0] alu_out;
    ALU alu (
        .a(rs1_data),                    // First ALU input (from rs1)
        .b(alu_input2),                  // Second ALU input (from mux)
        .alu_op(alu_op),                 // ALU operation control signal
        .result(alu_out),                // ALU result
        .zero(zero_flag)                 // Zero flag (used for branch decisions)
    );

    // PC Adder (PC + 4)
    logic [31:0] next_sequential_pc;
    Adder_2to1 pc_adder (
        .a(pc_out),
        .b(32'd4),
        .sel(1'b1),                      // Always adding 4
        .sum(next_sequential_pc)         // Output PC + 4
    );

    // Branch MUX (Selects between next_sequential_pc and branch target)
    MUX pc_mux (
        .d1(branch_target),              // Branch target address
        .d0(next_sequential_pc),         // Next sequential PC (PC + 4)
        .s(branch & zero_flag),          // Branch taken condition
        .y(next_pc)                      // Selected PC value
    );

    // Pass instruction out for debugging purposes
    assign instruction_out = instruction;

    // Data Memory
    logic [31:0] readData;
    DataMemory data_memory (
        .clk(clk),
        .memRead(mem_read),
        .memWrite(mem_write),
        .address(alu_out),
        .writeData(rs2_data),
        .readData(readData)
    );

    // MUX for selecting between ALU result and memory data
    logic [31:0] wb_data;  // Final data to be written back to the register file
    MUX mem_mux (
        .d1(readData),                   // Data from memory
        .d0(alu_out),                    // Data from ALU
        .s(memToReg),                    // Control signal
        .y(wb_data)                      // Selected output for Write Back stage
    );

    // Connect the output of the MUX to the ALU result (for debug and register write-back)
    assign alu_result = wb_data;

endmodule
