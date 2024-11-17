module memory#(parameter N=32)(input logic [N-1:0]alu_out,data_in,
input logic mem_read,mem_write,
output logic [N-1:0] mem_out);

reg [N-1:0]memory[0:N-1];

always_ff@(posedge mem_write)

begin
memory[data_in] <= alu_out ;
end

assign mem_out = memory[alu_out];
endmodule
