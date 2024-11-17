`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2024 14:09:05
// Design Name: 
// Module Name: Inst_Decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Inst_Decoder(
input  logic[31:0] Inst,
output logic[4:0] rs1,rs2,rd,
output logic[11:0] Imm,
output logic[19:0] Imm20,
output logic[6:0] func7,
output logic [1:0]strip_func7,
output logic[2:0]func3, 
output logic [6:0] opcode
);
assign strip_func7 = {Inst[30],Inst[25]};
always @(*) begin
    Imm = 0;
    Imm20 = 0;
    func7 = 0;
    func3 = 0;
    opcode = 0;
    rs1 = 0;rs2=0;rd=0;
    case(Inst[6:0])
        7'b0110011: begin//R-type
            func7  = Inst[31:25];
            rs2    = Inst[24:20];
            rs1    = Inst[19:15];
            func3  = Inst[14:12];
            rd     = Inst[11:7];
            opcode = Inst[6:0];
        end
        7'b0010011: begin  //Immediate
            Imm    = Inst[31:20];
            rs1    = Inst[19:15];
            func3  = Inst[14:12];
            rd     = Inst[11:7];
            opcode = Inst[6:0];
        end        
        7'b0100011: begin//S-type
            rs2    = Inst[24:20];
            rs1    = Inst[19:15];
            func3  = Inst[14:12];
            Imm    = {Inst[31:25],Inst[11:7]}; 
            opcode = Inst[6:0];
        end
        7'b1100011: begin // B-type
            rs2    = Inst[24:20];
            rs1    = Inst[19:15];
            func3  = Inst[14:12];
            // B-Type Immediate Extraction
                   //12       11        10:5        11-8
            Imm = {Inst[31], Inst[7] ,Inst[30:25], Inst[11:8]};   // opcode = Inst[6:0];
            opcode = Inst[6:0];
        end
        7'b0110111 | 7'b0010111 : begin//U-type
            Imm20  = Inst[31:12];
            rd     = Inst[11:7];
            opcode = Inst[6:0];
        end
        7'b1101111: begin // J-type
            Imm20[19] = {Inst[31]};
            Imm20[10:1] = Inst[30:21];
            Imm20[11] = Inst[20];
            Imm20[19:12] = Inst[19:12];
            rd     = Inst[11:7];
            opcode = Inst[6:0];
        end
        default:begin
            Imm = 0;
            Imm20 = 0;
            func7 = 0;
            func3 = 0;
            opcode = 0;
            rs1 = 0; rs2=0 ;rd=0;    
        end
    endcase
end
endmodule
