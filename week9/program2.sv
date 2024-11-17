module MEM(ALU_res,mread,mwrite,rs2,data_out);
	input logic [31:0] rs2,ALU_res;
	input logic mread,mwrite;
	output logic [31:0] data_out;
	logic [0:31] memory [31:0];

	assign data_out = mread?memory[ALU_res]:32'b0; 

always@(posedge mwrite)
	begin
		memory[ALU_res] = rs2;
	end
endmodule


module WB(ALU_res,data_out,wb_out,mem_reg);
	input logic [31:0] ALU_res,data_out;
	input logic mem_reg;
	output logic [31:0]wb_out;

	assign wb_out = mem_reg?data_out:ALU_res;
endmodule
