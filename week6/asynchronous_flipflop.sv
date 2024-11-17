module asynchronous_flipflop_32bit#(parameter N=32)
(input logic clk, input logic reset, input logic [N-1:0]pc_next, output logic [N-1:0]pc);
always @ (posedge clk,posedge reset)
begin
if(reset==1)
pc<=0;
else
pc<=pc_next;
end
endmodule
