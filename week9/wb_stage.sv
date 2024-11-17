module wb_stage#(parameter N=32)(mem_out,alu_out,memtoreg,wb_data,return_addr);
input logic [N-1:0]mem_out,alu_out,return_addr;
output logic [N-1:0]wb_data;
input logic [1:0]memtoreg;
mux31 mux_wb (.a(mem_out),.b(alu_out),.c(return_addr),.cntrl(memtoreg),.out(wb_data));
endmodule
