module MEM(ALU_res,mem_read,mem_write,data2,data_out);
	input logic [31:0] data2,ALU_res;
	input logic mem_read,mem_write;
	output logic [31:0] data_out;
	logic [0:31] memory [31:0];

	assign data_out = mem_read ? memory[ALU_res] : 32'b0; 

always@(posedge mem_write)
	begin
		memory[ALU_res] = data2;
	end
endmodule