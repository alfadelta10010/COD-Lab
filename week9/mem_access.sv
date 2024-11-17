module mem_access #(parameter N=32) (input logic [N-1:0]data_in,alu_result,input logic mem_read,mem_write,mem2reg,output logic [N-1:0]wr_data);
wire [N-1:0]line1;
memory_unit g1(alu_result,data_in,mem_read,mem_write,line1);
mux_2_1 g2(alu_result,line1,mem2reg,wr_data);
endmodule