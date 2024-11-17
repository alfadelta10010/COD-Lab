module mux21 #(parameter n=32) (a,b,s,out);
	input logic [n-1:0] a;
	input logic [n-1:0] b;
	input logic s;
	output logic [n-1:0] out;
	assign out = s? a:b;
endmodule
