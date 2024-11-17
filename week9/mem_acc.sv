module mem_acc #(parameter N=32 , L=1024)(
input logic [N-1:0] alu_out,data_in,
input logic mem_read,mem_write,
output logic data_out);

logic [N-1:0] memory [0:L-1];

always_comb

begin

if((mem_read)&&(!mem_write))
begin
data_out=alu_out;
end

else if((mem_write)&&(!mem_write))
begin
data_out=data_in;
end

end

endmodule