module dataMemory #(parameter N = 32, WS = 32) (
  input logic [N-1:0] Addr,
  input logic [WS-1:0] Datain,
  output logic [WS-1:0] Dataout,
  
  input logic clk,
  input logic DataRead,
  input logic DataWrite
);
  reg [WS-1:0] DataFile[N-1:0];  // [Row][Col]
  // In Verilog and SystemVerilog, output ports cannot be directly driven by procedural assignments
  reg [WS-1:0] Dataout_reg;
  assign Dataout = Dataout_reg;
  
  always @(posedge clk) begin
    if (DataRead && !DataWrite) begin  // Load 
      Dataout_reg = DataFile[Addr];
    end
    else if (DataWrite == 1) begin
      DataFile[Addr] = Datain;
    end
    else begin
     // Dataout_reg = 32'b0;
    end
  end
  
endmodule
