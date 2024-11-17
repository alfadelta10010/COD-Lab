module reg_file(clk, wen, ws, rs1, rs2, r1, r2, wd);
	input logic clk, wen;
	input logic [4:0] ws;
	input logic [4:0] rs1;
	input logic [4:0] rs2;
	input logic [31:0] wd;
	output logic [31:0] r1;
	output logic [31:0] r2;

	logic [31:0] regs [0:31];

	initial begin
		for (int i = 0; i < 32; i++)
			regs[i] <= 32'b0;
	end
	
	always @(negedge clk)
		if (wen) 
			regs[ws] <= wd;
    
    always_comb begin
    
        r1 <= regs[rs1];
	    r2 <= regs[rs2];
	    end
	    
endmodule