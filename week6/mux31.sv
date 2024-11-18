module mux31 #(parameter N = 32) (
    input logic [N-1:0] DataO,
    input logic [N-1:0] ALU_O,
    input logic RegWrite, 
    output logic [N-1:0] DataIn);
  
  assign DataIn = (RegWrite ? DataO : ALU_O);
endmodule