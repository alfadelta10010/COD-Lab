module ALU #(parameter N = 32, M = 4) (
  input logic [N-1:0] ip1, ip2,
  input logic [M-1:0] ALUop,
  output logic [N-1:0] ALUout,
  output logic flag
);
  
  always_comb begin
    // Default flag to 0, assume ALUout is not zero unless computed otherwise
    flag = 0;

    case (ALUop)
      4'b0000:  // AND
        ALUout = ip1 & ip2;

      4'b0001:  // OR
        ALUout = ip1 | ip2;

      4'b0010:  // ADD
        ALUout = ip1 + ip2;

      4'b0110:  // SUB
        ALUout = ip1 - ip2;

      default: 
        ALUout = 0;
    endcase
    
    // Flag set if ALUout is zero
    if (ALUout == 0) 
      flag = 1;
    else
      flag = 0;
  end
  
endmodule
