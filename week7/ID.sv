module ID#(parameter N=32)
(
	input logic [N-1:0]bin_inst,
	output logic [2:0]fun3,
	output logic [6:0]fun7,
	output logic [N-1:0]imm32,
	input logic  clk,
	output logic [N-1:0]read_data1,
	output logic [N-1:0]read_data2 );
	
	decoder2 d1(.bin_inst(bin_inst),.rs1(rs1),.rs2(rs2),.rd(rd),.imm12(imm12),.opcode(opcode),.fun3(fun3),.fun7(fun7));
	registerfile rgf(.clk(clk),.reset(reset),.reg_write(reg_write),.read_reg1(read_reg1),.read_reg2(read_reg2),.write_reg(write_reg),.write_data(write_data),.read_data1(read_data1),.read_data2(read_data2));
	signExtension si(.imm12(imm12),.imm32(imm32));
endmodule
