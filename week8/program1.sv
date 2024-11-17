module ALU_Top_BlackBox#(parameter N = 32,M = 4) (
  input logic ALUin1,ALUin2,
  input logic Branch,
  input logic rs2_data,Imm32,
  input logic[M-1:0] ALUop,
//   input logic[1:0] ALU_src,
//   output logic[1:0] AND_out,
  input logic ALU_src,
input logic[N-1:0] pc_present,offset,  // Should be a single bit, not [1:0]
  //output logic AND_out,
  output logic [N-1:0] ALU_Final_Out, pc_new
);
  
  logic[N-1:0] mux_to_alu;
  logic zero_alu;
  logic pc_src;
  
  alu_mux21  my_Mux(
    .rs2_data(rs2_data),
    .imm_exd(Imm32),
    .alu_src(ALU_src),
    .y(mux_to_alu)
  );
  
  alu_ex  ALU_Block (
    .rs1_data(ALUin1),
    .mux_op(mux_to_alu),
    .Alu_op(ALUop),
    .alu_res(ALU_Final_Out),
    .zero(zero_alu)
  );
  
  alu_andgate AND_Gate (
    .zero(zero_alu),
    .branch(Branch),
    .pc_src(Pc_src)
  );
  
 alu_adder adder(
    .pc_pr(pc_present),
	 .offset(offset),
	 .and_out(Pc_src),
	 .Pc_branch_new(pc_new)
);
  
  
endmodule
