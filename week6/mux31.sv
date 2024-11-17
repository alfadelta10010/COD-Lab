module mux31(a,b,c,s,out);
input logic a;
input logic b;
input logic c;
output logic out;
input logic[1:0] s;

always_comb
begin
    case(s)
        2'b00: out=a;
        2'b01: out=b;
        2'b10: out=c;
        default: out=1'b0;
        
    endcase
end

endmodule