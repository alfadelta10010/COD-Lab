week 7
1 module InstructionDecodeStage(
    input  logic        clk,              // Clock signal
    input  logic        reset,            // Reset signal
    input  logic [31:0] instruction,      // Instruction fetched from IF stage
    input  logic        reg_write,        // Control signal to enable register write-back
    input  logic [4:0]  rd_write,         // Register to write back the result (from WB stage)
    input  logic [31:0] write_data,       // Data to be written to the destination register (from WB stage)
    output logic [31:0] rs1_data,         // Data read from source register 1
    output logic [31:0] rs2_data,         // Data read from source register 2
    output logic [31:0] imm_ext,          // Sign-extended immediate value
    output logic [4:0]  rs1, rs2, rd,     // Register addresses
    output logic [6:0]  opcode,           // Opcode extracted from the instruction
    output logic [2:0]  funct3,           // Function code for ALU or memory instructions
    output logic [6:0]  funct7,           // Additional function code for ALU operations
    output logic        alu_src,          // ALU source selection signal
    output logic        mem_read,         // Memory read enable signal
    output logic        mem_write,        // Memory write enable signal
    output logic        branch,           // Branch control signal
    output logic        reg_write_out,    // Register write enable signal (output from control unit)
    output logic [3:0]  alu_op            // ALU operation control signal
);

    // Signals to connect submodules
    logic [31:0] imm_ext_internal;        // Internal signal for sign-extended immediate
    logic [6:0]  opcode_internal;         // Internal signal for opcode
    logic [2:0]  funct3_internal;         // Internal signal for funct3
    logic [6:0]  funct7_internal;         // Internal signal for funct7
    logic [4:0]  rs1_internal, rs2_internal, rd_internal; // Internal signals for register addresses

    // Instruction Decoder Module
    Decoder decoder (
        .instruction(instruction),
        .opcode(opcode_internal),
        .rs1(rs1_internal),
        .rs2(rs2_internal),
        .rd(rd_internal),
        .funct3(funct3_internal),
        .funct7(funct7_internal)
    );

    // Control Unit Module
    ControlUnit control_unit (
        .opcode(opcode_internal),
        .funct3(funct3_internal),
        .funct7(funct7_internal),
        .alu_src(alu_src),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_write(reg_write_out),
        .branch(branch),
        .alu_op(alu_op)
    );

    // Register File Module
    RegisterFile reg_file (
        .clk(clk),
        .reset(reset),
        .rs1(rs1_internal),
        .rs2(rs2_internal),
        .rd(rd_write),
        .write_enable(reg_write),
        .write_data(write_data),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );

    // Sign Extension Unit
    SignExtender sign_ext (
        .instruction(instruction),
        .immediate_out(imm_ext_internal)
    );

    // Assign outputs from internal signals
    assign opcode  = opcode_internal;
    assign rs1     = rs1_internal;
    assign rs2     = rs2_internal;
    assign rd      = rd_internal;
    assign funct3  = funct3_internal;
    assign funct7  = funct7_internal;
    assign imm_ext = imm_ext_internal;

endmodule


2 module Decoder(
    input  logic [31:0] instruction,
    output logic [6:0]  opcode,
    output logic [4:0]  rs1, rs2, rd,
    output logic [2:0]  funct3,
    output logic [6:0]  funct7
);

always @(*) begin
    opcode = instruction[6:0];
    rs1    = instruction[19:15];
    rs2    = instruction[24:20];
    rd     = instruction[11:7];
    funct3 = instruction[14:12];
    funct7 = instruction[31:25];
end

endmodule

3 module RegisterFile(
    input  logic        clk,
    input  logic        reset,
    input  logic [4:0]  rs1, rs2, rd,    // Register addresses
    input  logic        write_enable,    // Control signal to enable register write-back
    input  logic [31:0] write_data,      // Data to be written to the destination register
    output logic [31:0] rs1_data,        // Data from source register 1
    output logic [31:0] rs2_data         // Data from source register 2
);

    logic [31:0] reg_file [31:0];        // 32 registers, each 32 bits wide

    // Read from the register file
    assign rs1_data = reg_file[rs1];
    assign rs2_data = reg_file[rs2];

    // Write to the register file on the rising edge of the clock if enabled
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            integer i;
            for (i = 0; i < 32; i = i + 1) begin
                reg_file[i] <= 32'b0;     // Initialize registers to 0 on reset
            end
        end else if (write_enable) begin
            reg_file[rd] <= write_data;   // Write data to destination register
        end
    end

endmodule

4 module SignExtender(
    input  logic [31:0] instruction,
    output logic [31:0] immediate_out
);

always @(*) begin
    // Extract immediate based on opcode (example for I-type and S-type)
    immediate_out = { {20{instruction[31]}}, instruction[31:20] }; // Sign-extend 12-bit immediate
end

endmodule
