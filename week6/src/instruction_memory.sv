/* -------------------------------------------------------

		// R type testing ---------------

		00800513, // addi x10 x0 8
		00950593, // addi x11 x10 9
		40a58633, // sub x12 x11 x10
		00864693, // xori x13 x12 9
		
		
		// B type testing ---------------

		00000513, 	// addi x10, x0, 0 # starting index
		00c00593, 	// addi x11, x0, 12 # starting number
		00858613, 	// addi x12, x11, 8 # number of numbers
			        //   start:
		00b501a3, 	// sb x11, 3(x10)
		00150513, 	// addi x10, x10, 1 # increment
		00158593, 	// addi x11, x11, 1 # increment
		fec5cae3, 	// bne x11, x12, start
		fff50513,   // addi x10, x10, -1
		00354083, 	// lbu x1, 3(x10)
		
		
		// U, J type testing ---------------
		
		00100393, 	// addi x7, x0, 1 # starting index
			        //  start:
		00138393, 	// addi x7, x7, 1 # starting index
		00002517,   // aupic x10, 0
		000122b7,   // lui x5, 0x12
		ff5ff06f,	// j start

------------------------------------------------------- */

module ins_mem ( // instruction memory
	output logic [31:0] instruction,
	input logic [31:0] address,
	input bit del_clk
);
    parameter INS = 64;
	logic [7:0] instruction_tb [0:INS*4];
	logic [31:0] ins_mem_file[0:INS];
    initial begin
    $readmemh("/home/xubundadu/Desktop/Projects/rv32_core/test/program_dump.hex", ins_mem_file);
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
