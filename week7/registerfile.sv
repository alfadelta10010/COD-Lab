module registerfile(rs1,rs2,rd,data1,data2,reset,wb_en,wb_out,clk);
	input logic	wb_en;			//register write back signal
	input logic [31:0] wb_out; 	// write back address
	input logic [4:0] rs1,rs2,rd;
	output logic [31:0] data1,data2;
	input logic reset;
	input logic clk;
   logic [31:0] regfile [31:0];
	assign data1 = reset ? 0 : regfile[rs1];
	assign data2 = reset ? 0 : regfile[rs2];
	
	always@(posedge clk)
	begin
	if(wb_en == 1)
		begin
			regfile[rd] = wb_out;
		end
	end
endmodule
