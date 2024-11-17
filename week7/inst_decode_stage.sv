//i)Write a SV program for Instruction Decode Stage
module inst_decode_stage #(parameter N=32) (input logic [N-1:0]inst,wd,output logic [N-1:0]final_reg2,reg1,imm32,output logic [2:0]func3,output logic [6:0]func7,opcode,input logic reset,alu_src);
wire [N-1:0]reg2;
wire [4:0]rs1,rs2,rd;
wire [11:0]imm12;
wire regwrite;

decoder_block_final g1(inst,rs1,rs2,rd,imm12,func3,opcode,func7);
reg_file_final g2(rs1,rs2,rd,reg1,reg2,wd,reset,regwrite);
imm_gen_final g3(imm12,opcode,imm32);
mux_21 g4(reg2,imm32,alu_src,final_reg2);

endmodule