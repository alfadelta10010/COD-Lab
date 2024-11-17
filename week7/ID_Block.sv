module ID_Block(input logic [31:0]instr,wb_data,
input logic reset,reg_write,
output logic[31:0]rs1_data,rs2_data,imm_out,
output logic [6:0]opcode_out,
output logic [2:0]fn3,
output logic [6:0]fn7);
wire[4:0]rs1_out,rs2_out,rd_out;
wire[11:0]imm_output;



decode_block #(32) decoder (.instr(instr),.rs1(rs1_out),.rs2(rs2_out),.rd(rd_out),
                            .imm(imm_output),.opcode(opcode_out),.fn3(fn3),.fn7(fn7));
reg_file register_file (.rs1_addr(rs1_out),.rs2_addr(rs2_out),.rd_addr(rd_out),
                        .reg_write(reg_write),.rs1_data(rs1_data),.rs2_data(rs2_data),.reset(reset),.wb_data(wb_data));
imm_generator imm_gen (.imm(imm_output),.opcode(opcode_out),.imm_out(imm_out)); 
                           
endmodule
