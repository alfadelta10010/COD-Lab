module memory_stage #(parameter N=32, M=1024)(alu_out, mem_read, mem_write, data_in, mem_out,clk,mem_by_in);
input logic [N-1:0] alu_out, data_in;
output logic [N-1:0] mem_out;
input logic mem_read, mem_write,clk;
input logic [1:0]mem_by_in;
reg [N-1:0] mem[0:M-1];  


always_ff@(posedge mem_write)
begin
if(mem_by_in == 2'b00)  //byte
mem[alu_out] <= data_in[7:0];
if(mem_by_in == 2'b01)  //half
mem[alu_out] <= data_in[15:0];
if(mem_by_in == 2'b10)  //word
mem[alu_out] <= data_in[31:0];
end


always_comb
begin
case(mem_by_in)
2'b00:  //byte
mem_out = mem_read? {24'b0,mem[alu_out][7:0]}:0;
2'b01:  //half-word
mem_out = mem_read? {16'b0,mem[alu_out][15:0]}:0;
2'b10:  //word
mem_out = mem_read? {mem[alu_out][31:0]}:0;


endcase
end
endmodule
