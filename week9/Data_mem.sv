module Data_mem#(parameter N=32)(alu_out,data_in,mem_read,mem_write,mem_out);
input logic  [N-1:0]alu_out,data_in;
input logic mem_read,mem_write;
output logic [N-1:0]mem_out;
memory mem_stage (.alu_out(alu_out),.mem_read(mem_read),.mem_write(mem_write),
                  .data_in(data_in),.mem_out(mem_out));
endmodule

