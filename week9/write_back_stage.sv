module write_back_stage #(parameter N=32)(data_out,alu_result,wr_data,mem_read);

output logic [N-1:0]wr_data;
input logic [N-1:0]data_out;
input logic [N-1:0]alu_result;
input logic mem_read;

mux_2_1 unit (.a(data_out),.b(alu_result),.s(mem_read),.y(reg_data));
endmodule
