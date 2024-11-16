`timescale 1ns / 1ps
module decoder(
input logic [31:0] inst,
output logic [2:0] func3,
output logic [6:0] func7,
output logic [4:0] rd,
output logic [4:0] rs2,
output logic [4:0] rs1,
output logic [12:0] imm,
output logic [6:0] opcode
);



assign opcode = inst[6:0];

always_comb 
begin
func3 = 3'b0;
    func7 = 7'b0;
    rd    = 5'b0;
    rs1   = 5'b0;
    rs2   = 5'b0;
    imm   = 12'b0;
    case(opcode)
        7'b0110011: begin // R
            func3 = inst[14:12];
            func7 = inst[31:25];
            rd = inst[11:7];
            rs1 = inst[19:15];
            rs2 = inst[24:20];
          
        end

        7'b0010011: begin // I
            func3 = inst[14:12];
            rd = inst[11:7];
            rs1 = inst[19:15];
            imm = {1'b0,inst[31:20]}; 
          
        end

        7'b0100011: begin // S
            func3 = inst[14:12];
            imm = {1'b0,inst[31:25], inst[11:7]};  
            rs1 = inst[19:15];
            rs2 = inst[24:20];
        end

        7'b1100011: begin // B
            func3 = inst[14:12];
            imm = {inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};//13 bit 
            rs1 = inst[19:15];
            rs2 = inst[24:20];
         
        end

        7'b0000011: begin // load
            func3 = inst[14:12];
            rd = inst[11:7];
            rs1 = inst[19:15];
            imm = {1'b0,inst[31:20]}; 
        end
    endcase
    
end

endmodule
