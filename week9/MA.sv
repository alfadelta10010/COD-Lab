module memoryaccess #(parameter n=32)(
	input logic [n-1:0]alures,
	input logic [n-1:0]rs2,
	input logic mem_write,
	input logic mem_read,
	output logic out,
	input logic mem_reg
);
logic [n-1:0] mid;
mem_acc mem (.mem_write(mem_write),.mem_read(mem_read),.alures(alures),.datain(rs2),.dataout(mid));
mux2 writeback(.b(mid),.a(alures),.sel(mem_reg),.out(out));
endmodule
	
