module EX (
    output logic [31:0] AluOut,
    output bit zero,
    input logic [31:0] pc, rs1, rs2, imm,
    input logic [3:0] AluOp,
    input bit AluSrc, pc_relative
);
    logic [31:0] r1, r2;
    mux mux_imm(r2, AluSrc, rs2, imm);
    mux mux_pc(r1, pc_relative, rs1, pc);
    alu #(32) alu_unit(AluOut, zero, AluOp, r1, r2);
endmodule
