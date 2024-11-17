module synchronous_ff #(parameter N=32)(d,q,clk,reset);
input logic [N-1:0]d;
output logic [N-1:0]q;
input logic clk,reset;
always_ff@(posedge clk)
if(reset)
q<=0;
else 
q<=d;
endmodule
