module programcount #(parameter N=32)(clk,reset,pc,pc_next);
  input logic [N-1:0]pc_next;
  input logic clk;
  input logic reset;
  output logic[N-1:0] pc;
  always_ff@(posedge clk)
    begin
      if(reset)
        pc<=0;
      else
        pc<=pc_next;
    end
endmodule