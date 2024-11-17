module IF #(parameter XLEN = 32)(clk, reset, branch_sel, branch_inp, pc_present, pc_next, inst);
	input logic branch_sel;
	input bit clk;
	input bit reset;
	input logic [31:0] branch_inp;
	output logic [31:0] pc_present;
	output logic [31:0] inst;
	const bit [31:0] offset = 4;
	const bit cin = 0;
	logic dump;
	logic [31:0] pc_in;
	output logic [31:0] pc_next;
	Inst_Mem mem(.pcin(pc_present), .dout(inst));
	adder add (.a(offset), .b(pc_present), .s(pc_next), .cout(dump), .cin(cin));
	Mux21 mux (.a(pc_next), .y(pc_in), .b(branch_inp), .s(branch_sel));
	PC pc1 (.clk(clk), .reset(reset), .inp(pc_in), .pc_out(pc_present));
endmodule