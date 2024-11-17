module mux2 #(parameter n=32)(a,b,sel,out);
	input logic [n-1:0] a,b;
	input logic sel;
	output logic [n-1:0]out;
	always_comb
	begin if (sel)
		out<=b;
	else out<=a;
	end
endmodule
