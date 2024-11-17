module sync_ff #(parameter N=32)(clk,reset,y,d);
  input logic [N-1:0]d;
  input logic clk;
  input logic reset;
  output logic[N-1:0] y;
  always_ff@(posedge clk)
    begin
      if(reset)
        y<=0;
      else
        y<=d;
    end
endmodule