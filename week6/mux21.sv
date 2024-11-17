//iv)Write a SV program for 2:1 MUX

module mux21 (input logic a,b,s,output logic y);

assign y=s?b:a;

endmodule