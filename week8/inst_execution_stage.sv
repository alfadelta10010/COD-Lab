//i)Write a SV program for Instruction Execute Stage

module inst_execution_stage #(parameter N=32) (input logic [N-1:0]imm32,addr,reg1,final_reg2,input logic [3:0]alu_op,output logic pc_sel,output logic [N-1:0]pc_imm,alu_out);
wire zero,branch;

alu_block_final g1(reg1,final_reg2,alu_op,zero,alu_out);
andgate g2(branch,zero,pc_sel);
adding g3(imm32,addr,pc_imm);

endmodule
