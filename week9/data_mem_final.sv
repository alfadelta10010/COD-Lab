//ii)Write a SV program for Data memory

module data_mem_final #(parameter N=32)(input logic [N-1:0]alu_out,data_in, input logic memread,memwrite,output logic [N-1:0]data_out, input logic [1:0]mem_size);


data_mem g1(alu_out,data_in,memread,memwrite,data_out,mem_size);


endmodule