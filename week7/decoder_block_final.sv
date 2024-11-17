//ii)Write a SV program for the Decoder

module decoder_block_final #(parameter N=32) (input logic [N-1:0] inst, output logic [4:0]rs1,rs2,rd, output logic [11:0]imm12,output logic[2:0]func3,output logic [6:0]opcode,func7);

decoder_block g1(inst,rs1,rs2,rd,imm12,func3,opcode,func7);

endmodule