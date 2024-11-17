module EX (
    input logic [31:0] rs1,        // Input from the first register
    input logic [31:0] rs2,        // Input from the second register
    input logic [31:0] immfinal,   // Immediate value
    input logic [3:0] alu_op,      // ALU operation code
    input logic alu_src,           // ALU source control (whether to use rs2 or immfinal)
    input logic zero_in,           // Zero flag from the previous stage (to check branch)
    input logic branch,            // Branch control signal
    output logic [31:0] alu_out,   // ALU result
    output logic zero,             // Zero flag output
    output logic branch_taken,     // Branch decision
    output logic [31:0] alu_input, // Input to the ALU (rs2 or immfinal)
    output logic and_out           // Add this output for the and_out signal
);

    // Wires to connect different modules
    wire [31:0] mux_out;           // Output from the mux

    // Instantiate the ex_mux (mux) module
    ex_mux #(32) mux_inst (
        .rs2(rs2),                    // 'a' connected to rs2
        .immfinal(immfinal),          // 'b' connected to immfinal
        .alu_src(alu_src),            // 's' connected to alu_src
        .out(mux_out)                 // Output connected to mux_out
    );

    // Instantiate the alu module
    alu alu_inst (
        .rs1(rs1),                    // 'rs1' input
        .out(mux_out),                // 'rs2' input is muxed value (mux_out)
        .alu_op(alu_op),              // ALU operation code
        .alu_out(alu_out),            // ALU output
        .zero(zero)                   // Zero flag output
    );
    // Instantiate the ex_and module
    ex_and and_inst (
        .zero(zero_in),               // Zero flag input from previous stage
        .branch(branch),              // Branch control signal
        .and_out(and_out)             // AND result for branch condition
    );

    // Branch decision logic
    always_comb begin
        if (and_out)                  // If and_out is true, branch is taken
            branch_taken = 1;
        else
            branch_taken = 0;        // No branch taken otherwise
    end

    // ALU input is selected from the mux
    assign alu_input = mux_out;

endmodule
