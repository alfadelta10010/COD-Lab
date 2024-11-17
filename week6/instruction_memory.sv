module instruction_memory#(parameter length=32,width=1024)(input reset,clk, input logic [length-1:0] addr, output logic [length-1:0] instr);
logic [length-1:0] mem [0:width-1];
always_ff @(posedge clk)
begin
if (reset) 
begin
for (int i = 0; i < width; i++) 
begin
mem[i] <= {length{1'b0}};
end
end
end
endmodule
