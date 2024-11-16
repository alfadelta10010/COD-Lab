week 8 
1 module InstructionExecuteStage(
    input  logic        clk,              // Clock signal
    input  logic        reset,            // Reset signal
    input  logic [31:0] rs1_data,         // Data from source register 1
    input  logic [31:0] rs2_data,         // Data from source register 2
    input  logic [31:0] imm_ext,          // Sign-extended immediate value
    input  logic [3:0]  alu_op,           // ALU operation control signal
    input  logic        alu_src,          // ALU source select signal (1: immediate, 0: register)
    output logic [31:0] alu_result,       // ALU result
    output logic        zero_flag         // Zero flag for branch decisions
);

    // Signals to connect submodules
    logic [31:0] alu_input2;              // Second input to the ALU (either rs2_data or imm_ext)

    // MUX to select between rs2_data and the immediate value for ALU input
    MUX alu_input_mux (
        .d1(imm_ext),                    // Immediate value
        .d0(rs2_data),                   // Source register 2 data
        .s(alu_src),                     // ALU source select signal
        .y(alu_input2)                   // Output (ALU input 2)
    );

    // ALU Module
 // ALU Module Instantiation (case-sensitive check)
     ALU alu (
    .a(rs1_data),              // First ALU input (from rs1)
    .b(alu_input2),            // Second ALU input (from mux)
    .alu_op(alu_op),           // ALU operation control signal
    .result(alu_result),       // Output: ALU result
    .zero(zero_flag)           // Output: Zero flag
);


endmodule

2 module ALU(
    input  logic [31:0] a,           // First input (from rs1)
    input  logic [31:0] b,           // Second input (from mux)
    input  logic [3:0]  alu_op,      // ALU operation control signal
    output logic [31:0] result,      // ALU result
    output logic        zero         // Zero flag
);
    always_comb begin
        case (alu_op)
            4'b0000: result = a + b;    // ADD operation
            4'b0001: result = a - b;    // SUB operation
            4'b0010: result = a & b;    // AND operation
            4'b0011: result = a | b;    // OR operation
            // Add more ALU operations as needed
            default: result = 32'd0;
        endcase
        zero = (result == 32'd0);        // Set zero flag if result is zero
    end
endmodule
