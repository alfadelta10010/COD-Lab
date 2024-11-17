module adder #(parameter n=32)(a,b,cin,cout,sum);
	input logic [n-1:0]a,b;
	input logic cin;
	output logic [n-1:0]sum;
	output logic cout;
	assign cout=(a|b)&(b|cin)&(cin|a);
	assign sum=(a^b)^cin;
endmodule
