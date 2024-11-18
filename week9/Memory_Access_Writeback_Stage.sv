module mem_top #(parameter N = 32) (
  input logic [N-1:0] Addr,
  input logic [N-1:0] Datain,
  //output logic [N-1:0] Dataout,
  output logic [N-1:0] Final_Data,
  
  
  input logic clk,RegWrite,
  input logic DataRead,
  input logic DataWrite
  
);
  
  logic[N-1:0] DataO;
  
  dataMemory #(32, 32) datafile (
    .Addr(Addr),
    .Datain(Datain),
    .Dataout(DataO),  // This was missing in your instantiation
    .clk(clk),
    .DataRead(DataRead),
    .DataWrite(DataWrite)
  );
  
  mux31 #(32) MUX3 (
    .DataO(DataO),
    .ALU_O(Addr),
    .RegWrite(RegWrite),
    .DataIn(Final_Data)
);endmodule