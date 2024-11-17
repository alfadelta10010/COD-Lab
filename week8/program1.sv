// Write a SV program for Instruction Execute Stage

module ALU_Top_BlackBox #(parameter N = 32, M = 6) (
    input logic [N-1:0] ALUin1, ALUin2,
    input logic Branch,
    input logic [N-1:0] rs2_data, Imm32,
    input logic [M-1:0] ALUop,
    input logic ALU_src,  // Should be a single bit
    input logic [2:0] b_control, // Branch control signals
    output logic AND_out,
    output logic [N-1:0] ALU_Final_Out,
    output logic branch_sel // Output for branch selection
);
  
    logic [N-1:0] mux_to_alu;
    logic zero_alu;

    // MUX to select between rs2_data and Imm32
    mux21 #(32) my_Mux(
        .rs2(rs2_data),
        .imm32(Imm32),
        .ALUsrc(ALU_src),
        .ALUin(mux_to_alu)
    );

    // ALU instance with extended operations
    alu_ex #(32, 6) ALU_Block (
        .op1(ALUin1),
        .op2(mux_to_alu),
        .aluop(ALUop),
        .res(ALU_Final_Out),
        .zero(zero_alu)
    );

    // AND gate for branching decision
    and_gate AND_Gate (
        .zero(zero_alu),
        .branch(Branch),
        .ANDout(AND_out)
    );

    // Branch control instance to determine if a branch should be taken
    branch_control BC (
        .b_control(b_control),
        .r1(ALUin1),  // Assuming r1 is represented by ALUin1
        .r2(ALUin2),  // Assuming r2 is represented by ALUin2
        .branch_sel(branch_sel)
    );

endmodule