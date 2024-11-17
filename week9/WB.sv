module WB(memctrl,aludat,memdat,datreg,pc4);
input logic[31:0]aludat;
input logic[31:0]memdat;
input logic[31:0]pc4;
output logic[31:0]datreg;
input logic[1:0] memctrl;

always_comb
begin
    case(memctrl)
        2'b00: datreg=memdat;
        2'b01: datreg=aludat;
        2'b10: datreg=pc4;
        default: datreg=32'b0;
        
    endcase
end

endmodule