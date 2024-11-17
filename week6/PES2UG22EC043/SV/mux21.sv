module mux21(input logic a, b, s, output logic y);
    assign y = s ? b : a;
endmodule
