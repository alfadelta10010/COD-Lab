module mem_access(alures,mem_read,mem_write,data_in,data_out);
input logic [31:0] alures;
input logic [31:0] mem_read;
input logic [31:0] mem_write;
input logic [31:0] data_in;
output logic [31:0] data_out;
logic [31:0] memory [0:1024];
always@(*)
begin
if(mem_write)
memory[alures]=data_in;
if(mem_read)
data_out=memory[alures];
end 
endmodule