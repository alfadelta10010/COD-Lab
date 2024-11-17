module mem_WB(alures,data_in,data_out,mem_rg,data,mem_read,mem_write);
input logic[31:0] alures;
output logic [31:0] data_out;
input logic [31:0] data_in;
input logic [31:0] mem_read;
input logic [31:0] mem_write;
input bit mem_rg;
output logic[31:0] data;

mux2_1 wb_mux(.a(alures),.b(data_out),.s(mem_rg),.out(data));
mem_access mem_access(.data_in(data_in),.data_out(data_out),.alures(alures),.mem_read(mem_read),.mem_write(mem_write));
endmodule
