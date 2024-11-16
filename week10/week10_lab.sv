week 10 
1  
module ControlUnit(
    input  logic [6:0] opcode,         // Opcode from the instruction
    input  logic [2:0] funct3,         // Function code (for ALU, memory)
    input  logic [6:0] funct7,         // Additional function code (for ALU)
    output logic       alu_src,        // ALU source (1 = immediate, 0 = register)
    output logic       mem_read,       // Memory read enable signal
    output logic       mem_write,      // Memory write enable signal
    output logic       reg_write,      // Register write enable signal
    output logic       branch,         // Branch control signal
    output logic       memToReg,       // Memory to register control signal
    output logic [3:0] alu_op          // ALU operation code
);

always @(*) begin
    // Default control signals to 'x' for unknown state
    alu_src   = 'x;
    mem_read  = 'x;
    mem_write = 'x;
    reg_write = 'x;
    branch    = 'x;
    memToReg  = 'x;
    alu_op    = 4'bxxxx;  // Unknown ALU operation by default

    // Decode based on opcode to set the control signals
    case (opcode)
        7'b0110011: begin // R-type (register-register ALU operations)
            alu_src   = 1'b0;  // Use registers as ALU inputs
            reg_write = 1'b1;  // Write the result to a register
            memToReg  = 1'b0;  // Use ALU result, not memory
            alu_op    = 4'b0010; // Assume some ALU operation code for ADD
        end

        7'b0010011: begin // I-type (ALU immediate operations)
            alu_src   = 1'b1;  // Use immediate as ALU input
            reg_write = 1'b1;  // Write the result to a register
            memToReg  = 1'b0;  // Use ALU result, not memory
            alu_op    = 4'b0011; // ALU operation for ADDI or similar
        end

        7'b0000011: begin // Load instruction (e.g., LW)
            alu_src   = 1'b1;  // Use immediate for address calculation
            mem_read  = 1'b1;  // Enable memory read
            reg_write = 1'b1;  // Write loaded value to a register
            memToReg  = 1'b1;  // Write memory data, not ALU result
            alu_op    = 4'b0000; // ADD for address calculation
        end

        7'b0100011: begin // Store instruction (e.g., SW)
            alu_src   = 1'b1;  // Use immediate for address calculation
            mem_write = 1'b1;  // Enable memory write
            alu_op    = 4'b0000; // ADD for address calculation
        end

        7'b1100011: begin // Branch instruction (e.g., BEQ)
            branch = 1'b1;    // Enable branching
            alu_op = 4'b0001; // SUB for comparison
        end

        default: begin
            // Set all outputs to unknown ('x') for undefined opcode
            alu_src   = 'x;
            mem_read  = 'x;
            mem_write = 'x;
            reg_write = 'x;
            branch    = 'x;
            memToReg  = 'x;
            alu_op    = 4'bxxxx; // Undefined ALU operation
        end
    endcase
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
