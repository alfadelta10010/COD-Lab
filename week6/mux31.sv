module mux31 #(parameter N=32)(a,b,c,out,cntrl);
input logic [N-1:0]a,b,c;
input logic [1:0]cntrl;
output logic [N-1:0]out;

always_comb
begin
case(cntrl)
2'b00:
out = a;
2'b01:
out = b;
2'b10:
out = c;
endcase
end
endmodule
