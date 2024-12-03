
// hopefull
module alu #(
    parameter N = 8
) (
    output logic [N - 1:0] y,
    output logic flg,  // Flag
    input logic [3:0] op,  // Opcode
    input logic [N - 1:0] a,
    input logic [N - 1:0] b
);
  logic bor, ovf;

  logic [N - 1:0] r_sum, r_diff, r_and, r_or, r_xor, r_lshift, r_rshift;
  logic [2 * N - 1:0] r_prod;

  //Internal operations
  // Add & Sub
  //rca_add #(N) u_add ( a, b, r_sum, ovf);
  //rca_add #(N) u_sub ( a, -b, r_diff, bor);

  // Logic
  ands #(N) u_and ( a, b, r_and);
  ors #(N) u_or ( a, b, r_or);
  xors #(N) u_xor ( a, b, r_xor);

  // Shifters

  //shift #(N) u_lshifter (r_lshift, 1'b0, clk, inp, 0, a);  // Left shift
  //shift #(N) u_rshifter (r_rshift, 1'b1, clk, inp, 0, a);  // Right logical shift
  //shift #(N) u_arshifter (r_rshift, 1'b1, clk, inp, 1, a);  // Right Arithmetic shift

  // Multiplier
  //array_mul #(N) u_mul (r_prod, a, b, inp, clk);

  //output mux
  always @(*) begin
    case (op)
      4'b0000: begin // add;
        y = a+b;
      end
      4'b0001: begin // sub
        y = a-b;
      end
      4'b0010: begin // and
        y = r_and;
      end
      4'b0011: begin // or
        y = r_or;
      end
      4'b0100: begin // xor
        y = r_xor;
      end
      4'b0101: begin // sll
        y = a << b; // r_lshift;
      end
      4'b0110: begin // srl
        y = a >> b; // r_rshift;
      end
      4'b0111: begin // sra
        y = a >>> b; // r_rshift;
      end
      default: y = 0;
    endcase
    if (a-b == 0) 
        flg = 1'b1; // zero for comparators
    else
        flg = 1'b0;
  end
endmodule
