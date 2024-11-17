module mem_stage_final#(parameter N=32)(alu_out,data_in,mem_read,mem_write,mem_out,fn3);
input logic  [N-1:0]alu_out,data_in;
input logic mem_read,mem_write;
output logic [N-1:0]mem_out;
input logic [2:0]fn3;
wire [1:0]out;
memory_stage memory (.mem_by_in(out),.alu_out(alu_out),.mem_read(mem_read),.mem_write(mem_write),.data_in(data_in),.mem_out(mem_out));
addressing addre (.fn3(fn3),.out(out),.mem_read(mem_read),.mem_write(mem_write));
endmodule
