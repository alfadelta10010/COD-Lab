module async_reset_ff(input logic clk, reset, d, output logic q);
  always_ff @(posedge clk or posedge reset)
    if (reset)
      q <= 0;
    else
      q <= d;
endmodule
