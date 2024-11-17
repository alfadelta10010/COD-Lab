module instruction_decode(/*clk,*/ reset, instruction, register_write, write_data, rs1_data, rs2_data, imm_extended, fn3, fn7, opcode, imm10);
    input logic /*clk,*/ reset;
    input logic[31:0] instruction, write_data;
    output logic[31:0] rs1_data, rs2_data, imm_extended;
    output logic[2:0] fn3;
	output logic[6:0] fn7, opcode;
	output logic imm10;
    
	logic[4:0] rs1, rs2, rd;
	//logic[11:0] imm;

	input logic register_write;
    
    decoder decoder1(instruction, rs1, rs2, rd, imm_extended, fn3, fn7, opcode, imm10);
    register_file register(/*clk,*/ reset, register_write, rs1, rs2, rd, write_data, rs1_data, rs2_data);
    //sign_extender immediate_generator(imm, imm_extended); sign extension is being done in the decoder
endmodule

