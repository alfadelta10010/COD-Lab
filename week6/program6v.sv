module adder #(parameter N = 32)(a, b, cin, s, cout);
	input logic [N-1:0] a;
	input logic [N-1:0] b;
	output logic [N-1:0] s;
	input logic cin;
	output logic cout;
	assign {cout, s} = a + b + cin;
endmodule