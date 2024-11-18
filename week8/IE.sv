module IE (
    input logic [31:0] rs1,          // Data from Register 1
    input logic [31:0] rs2,          // Data from Register 2
    input logic [31:0] immfinal,     // Immediate value
    input logic alu_src,             // ALU source control
    input logic [1:0] alu_op,        // ALU operation signal from Control Unit
    input logic [6:0] funct7,        // funct7 field from instruction
    input logic [2:0] funct3,        // funct3 field from instruction
    input logic branch,              // Branch signal
    output logic [31:0] alu_out,     // ALU output
    output logic and_out             // Branch decision signal
);

// Instantiate the ALU Control Unit
    ALU_Ctrl alu_control (
        .funct7(funct7),
        .funct3(funct3),
        .ALUOp(alu_op),
        .ALUControl(alu_control_signal)
    );

    // Internal signals
    logic [31:0] out;                // Input to ALU (mux output)
    logic zero;                      // ALU zero signal
    logic [3:0] alu_control_signal;  // ALU control signal from ALU_Ctrl

   

    // Instantiate the MUX for ALU inputs
    mux mux_inst (
        .rs2(rs2),
        .immfinal(immfinal),
        .alu_src(alu_src),
        .out(out)
    );

    // Instantiate the ALU
    alu alu_inst (
        .rs1(rs1),
        .out(out),
        .alu_op(alu_control_signal),  // Connect ALUControl signal
        .alu_out(alu_out),
        .zero(zero)
    );

    // Instantiate the Branch AND Gate
    andr andr_inst (
        .zero(zero),
        .branch(branch),
        .and_out(and_out)
    );

endmodule
