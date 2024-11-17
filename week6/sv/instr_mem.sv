module instr_mem ( // instruction memory
	output logic [31:0] instruction,
	input logic [31:0] address,
	input bit del_clk
);
    parameter INS = 64;
	logic [7:0] instruction_tb [0:INS*4];
	logic [31:0] ins_mem_file[0:INS];
    initial begin
    //$readmemh("/home/xubundadu/Desktop/Projects/rv32_core/test/program_dump.hex", ins_mem_file);
    for (int i = 0; i < INS; i++) begin
            instruction_tb[4*i + 3] = ins_mem_file[i][31:24];
            instruction_tb[4*i + 2] = ins_mem_file[i][23:16];
            instruction_tb[4*i + 1] = ins_mem_file[i][15:8];
            instruction_tb[4*i]     = ins_mem_file[i][7:0];
	end
	end
	
	always@(posedge del_clk) begin
        instruction = {instruction_tb[address+3],instruction_tb[address+2],instruction_tb[address+1],instruction_tb[address]};
	end
endmodule
