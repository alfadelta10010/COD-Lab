//iv)Write a SV program for the Immediate Unit

module imm_gen_final #(parameter N=32) (input logic [11:0]imm12,input logic [6:0]opcode, output logic [N-1:0]imm32);

imm_gen g1(imm12,opcode,imm32);  

endmodule