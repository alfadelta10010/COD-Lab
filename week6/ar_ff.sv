//i)Write a SV program for asynchronous Reset Flip Flop

module ar_ff #(parameter N=32)(input logic[N-1:0]d, input logic clk,reset, output logic [N-1:0]q);

always_ff@(posedge clk, posedge reset)
begin
if (reset)
	q<= 0 ;
	
else
	q<= d;
end
endmodule