module PC #(parameter N=32) (input logic clk,input logic rst,input logic [N-1:0] pc_next,output logic [N-1:0] pc);
always_ff@(posedge clk)
begin 
  if (rst)
    pc<= 32'b0 ;
  else 
    pc<= pc_next ;
end
endmodule