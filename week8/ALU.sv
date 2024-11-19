module ALU(
    input logic [31:0] opr1,opr2,
    input logic [3:0] alu_control,
    output logic [31:0] result
    );
    
    logic [31:0] sd1,sd2;
    
    always_comb
    case(alu_control)
        4'b0000 : result = opr1 & opr2;  //and
        4'b0001 : result = opr1 | opr2;  //or
        4'b0010 : result = opr1 + opr2;  //add
        4'b0110 : result = opr1 - opr2;  //sub
        4'b1100 : result = !(opr1 + opr2); //nor
        default : result = 0;
    endcase 
endmodule