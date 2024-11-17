//i)Write a SV program for Memory Access 

module mem_access_stage #(parameter N=32)(input logic [N-1:0]alu_out,data_in,input logic memread,memwrite,input logic [2:0]func3,output logic [N-1:0]data_out);
wire [1:0] mem_size;


data_mem_final g1(alu_out,data_in,memread,memwrite,data_out,mem_size);
addressing g2(func3,memread,memwrite,mem_size);

endmodule