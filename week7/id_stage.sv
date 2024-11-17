module id_stage(if_out,rs1_data,rs2_data,reset,imm_out,reg_write,wb_data,opcode_out_d,fn7_out_d,fn3_out_d,imm_out_d,clk);
input logic [31:0]if_out,wb_data;
input logic reset,reg_write,clk;
output logic [11:0]imm_out_d;
output logic [31:0]rs1_data,rs2_data,imm_out;
output logic [6:0]opcode_out_d,fn7_out_d;
output logic [2:0]fn3_out_d;
wire [4:0]rs1_out_d,rs2_out_d,rd_out_d;
wire [19:0]imm_uj_outd;
decoder #(32) decode (.if_out(if_out),.rs1(rs1_out_d),.rs2(rs2_out_d),.rd(rd_out_d),.imm(imm_out_d),.imm_uj(imm_uj_outd),.fn3(fn3_out_d),.fn7(fn7_out_d),.opcode(opcode_out_d));
imm_generator imm_gen (.imm_input_uj(imm_uj_outd),.imm_input(imm_out_d),.imm_output(imm_out),.opcode(opcode_out_d));
reg_file register_file (.clk(clk),.rs1_addr(rs1_out_d),.rs2_addr(rs2_out_d),.rd_addr(rd_out_d),.reg_write(reg_write),.wb_data(wb_data),.reset(reset),.rs1_data(rs1_data),.rs2_data(rs2_data));
endmodule
