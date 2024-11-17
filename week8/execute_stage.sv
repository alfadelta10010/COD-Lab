module execute_stage #(parameter N=32)(branch,rs1,rs2,immi,alu_src,alu_op,branch_op,alu_result);
input logic [N-1:0] rs1,rs2,immi;
input logic branch,alu_src;
input logic [3:0] alu_op;
output logic branch_op;
output logic [N-1:0] alu_result;
logic [N-1:0] mux_to_alu;
logic alu_to_and;
mux g8 (.a(rs2), .b(immi), .s(alu_src), .y(mux_to_alu));
ALU g9 (.ip1(rs1), .ip2(mux_to_alu), .alu_op(alu_op), .op(alu_result), .zero(alu_to_and));
and g10 (branch_op, branch, alu_to_and);
endmodule
