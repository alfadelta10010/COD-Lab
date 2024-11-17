module instruction_execute(
    input logic[3:0] alu_control,
    input logic[31:0] rs1_data, rs2_data, imm_extended, pc_old,
    input logic alu_src, branch_control, jalr,
    output logic[31:0] alu_result, pc_branch,
    output logic pc_src
    );

wire[31:0] alu_op2, imm_shifted, pc_imm, pc_rs1;
wire zero;

assign imm_shifted = imm_extended << 1'b1;

fulladder pc_adder(imm_shifted, pc_old, 0, pc_imm,);
fulladder pc_rs1_adder(rs1_data, pc_old, 0, pc_rs1,);
mux21 muxpc(pc_imm, pc_rs1, jalr, pc_branch);
mux21 mux2(rs2_data, imm_extended, alu_src, alu_op2);
alu alu1(alu_control, rs1_data, alu_op2, pc_old, alu_result, zero);
and_gate and1(branch_control, zero, pc_src);

endmodule
