module ALU(
    input logic[32-1:0] d1,d2,
    input logic [3:0]alu_op,
    output logic[32-1:0] alur,
    output logic zero
    );
    
    always_comb  begin
    case(alu_op)
    4'b 0000: alur=d1 & d2;
   4'b 0001: alur=d1 | d2;
   4'b 0010: alur= d1+d2;
   4'b 0110: alur=d1-d2;
   endcase
   end
   
    assign zero=(!alur)?1:0;
    
    endmodule