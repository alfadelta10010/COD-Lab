//ii)Write a SV program for synchronous Reset Flip Flop

module sr_ff #(parameter N=32)(input logic[N-1:0]d, input logic clk,reset, output logic [N-1:0]q);

always_ff@(posedge clk)
begin
if (reset)
	q<= 0 ;
	
else
	q<= d;
end
endmodule