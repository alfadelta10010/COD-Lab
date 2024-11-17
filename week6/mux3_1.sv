module mux3_1(input logic [1:0] sel, input logic a, b, c, output logic y);
  always_comb
    case (sel)
      2'b00: y = a;
      2'b01: y = b;
      2'b10: y = c;
      default: y = 0;
    endcase
endmodule
