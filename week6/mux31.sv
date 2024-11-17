//iii)Write a SV program for 3:1 MUX
module mux31(input logic a,b,c, input logic [1:0] s, output logic y);

always_comb
begin

case(s)
	2'b00: y= a;
	2'b01: y= b;
	2'b10: y= c;
	default: y=1'b0;
endcase

end

endmodule