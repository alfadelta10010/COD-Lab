module top_IF(clk,reset,b_sel,b_in,pc_present,inst,pc_next   
    );
	input logic b_sel;
	input bit clk;
	input bit reset;
	input logic [31:0] b_in;
	output logic [31:0] pc_present;
	output logic [31:0] inst;
	const bit [31:0] offset = 4;
	const bit cin = 0;
	logic dump;
	logic [31:0] pc_in;
output logic [31:0] pc_next;
Instruction_mem dut(clk,pc_present,inst);
adder dut1(.a(offset), .b(pc_present), .s(pc_next), .cout(dump), .cin(cin));
mux dut2(.s(b_sel), .d0(pc_next), .d1(b_in), .y(pc_in));
pc dut3(clk, reset, pc_in,pc_present);
endmodule
