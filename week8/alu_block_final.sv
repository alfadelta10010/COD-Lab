//ii)Write a SV program for the ALU
module alu_block_final #(parameter N=32) (input logic [N-1:0]reg1,final_reg2, input logic [3:0]alu_op, output logic zero, output logic [N-1:0]alu_out);

alu_block g1(reg1,final_reg2,alu_op,zero,alu_out);

endmodule