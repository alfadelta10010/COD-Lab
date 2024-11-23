module mux2_1(input logic sel, input logic a, b, output logic y);
  always_comb
    y = sel ? b : a;
endmodule
