module top_ex(
    input logic [3:0] alu_op,        // ALU operation selector
    input logic [31:0] rs1, rs2,     // Source registers from RegFile
    input logic [31:0] imm,          // Immediate value from Decode stage
    input logic alu_src,             // Control signal to select rs2 or imm
    output logic [31:0] alu_result,  // ALU result
    output logic zf           // Zero flag
);

    // Wire to hold the MUX output
    wire [31:0] mux_out;

    // MUX to select between rs2 and imm
    mux2_1 mux (
        .d0(rs2), 
        .d1(imm), 
        .s(alu_src), 
        .y(mux_out)
    );

    // ALU instance for operations
    ALU alu (
        .alu_op(alu_op), 
        .rs1(rs1), 
        .rs2(mux_out), 
        .rd1(alu_result), 
        .zf(zf)
    );

endmodule
