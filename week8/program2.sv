module alu #(parameter n=32) (inp1,inp2,aluop,zero,alu_out);
  input logic [n-1:0] inp1;
  input logic [n-1:0] inp2;
  input logic [3:0] aluop;
  output logic zero;
  output logic[n-1:0] alu_out;
 
  always_comb
    begin
      case(aluop)
        4'b0000: alu_out = inp1 + inp2;
      
        4'b0001: alu_out = inp1 << inp2;
          
        4'b0010: alu_out = (inp1<inp2)?1:0;
         
        4'b0011: alu_out = (unsigned'(inp1)<unsigned'(inp2))?1:0;

        4'b0100: alu_out = inp1 ^ inp2;
        
        4'b0101: alu_out = inp1 >> inp2;
        
        4'b0110:alu_out = inp1 | inp2;
        
        4'b0111: alu_out = inp1 & inp2;
        
        4'b1000: alu_out = inp1 - inp2;
        
        4'b1101: alu_out = inp1 >>> inp2;
        
      endcase
    end
endmodule
