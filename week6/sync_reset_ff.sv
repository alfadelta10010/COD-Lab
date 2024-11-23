module sync_reset_ff(input logic clk, reset, d, output logic q);
  always_ff @(posedge clk)
    if (reset)
      q <= 0;
    else
      q <= d;
endmodule
