module halfadder #(parameter N=32)(
	input logic [N-1:0]a,
	input logic [N-1:0]b,
	output logic cout,
	output logic [N-1:0]sum);
	
	assign sum =a+b;
	
endmodule