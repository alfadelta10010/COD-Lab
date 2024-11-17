module mux31 #(parameter N = 32) (a, b, c, s, y);
	input logic [N-1:0] a; //00
	input logic [N-1:0] b; //01
	input logic [N-1:0] c; //10
	input logic [1:0] s;
	output logic [N-1:0] y;
	assign y = s[1] ? c : (s[0] ? b : a);
endmodule
