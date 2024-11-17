//vii)Write a SV program for Instruction Memory

module inst_mem #(parameter N=32)( input logic[N-1:0] addr, output logic[N-1:0] inst);

reg [N-1:0] mem [0:2**(N)-1]  /* synthesis read_only_mem = 1 */;

initial
 begin
    $readmemh("C:/Users/Megha/OneDrive/Desktop/today/dump1.hex", mem);
 end

  
assign inst= mem[addr];


endmodule
