#Program3: Write a SV program for the Register File

module Registers#(parameter n=5)(input logic [n-1:0]rs1,
                                 input logic [n-1:0]rs2,
                                 input logic RegWrite,
                                 input logic [n-1:0]rd,
                                 input logic clk,
                                 input logic datain,
                                 output logic [31:0]reg1,
                                 output logic [31:0]reg2
                                  );
   logic [31:0] regs [0:31];
   
   initial begin
		for (int i = 0; i < 32; i++)
			regs[i] <= 32'b0;
	end
   
   always @(posedge clk)
begin
    reg1 = regs[rs1]; 
    reg2 = regs[rs2]; 
end

always @(negedge clk)
begin
    if (RegWrite == 1)
        regs[rd] <= datain; 
end

  
endmodule
