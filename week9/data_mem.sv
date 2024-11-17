module  data_mem #(parameter N=32) (
    input logic [N-1:0] alu_out, data_in,
    input logic mem_read, mem_write,
    output logic [N-1:0] data_out
);

memstage g1(alu_out, data_in,mem_read, mem_write,data_out);

endmodule
