module memstage #(parameter N=32, D=1024)(
input logic [N-1:0] alu_result,
input logic [N-1:0] data_in,
input logic mem_read,
input logic mem_write,
output logic [N-1:0] data_out
);

logic [N-1:0] memory1 [0:D-1];

    always_comb
begin
if(mem_write==1)
memory1[alu_result]=data_in;
if(mem_read==1)
data_out=memory1[alu_result];
    end
endmodule