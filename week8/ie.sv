`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2024 14:17:41
// Design Name: 
// Module Name: topmodule_EXE
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



module topmodule_EXE (
    input logic [31:0] rs1_data,        
    input logic [31:0] rs2_data,        
    input logic [31:0] imm_new,         
    input logic alusrc,                 
    input logic branch,
    input logic [2:0]func3,
    input logic [6:0]func7,                 
    input logic [3:0] aluop,           
    output logic [31:0] aluresult,     
    output logic branchop          
);

    // Internal Signals
    logic [31:0] alu_input2;            // ALU input 2 (either rs2_data or immediate)
    logic zero_flag;                    // Zero flag from ALU (1 if ALU result is zero)

    // MUX to select between rs2_data and imm_new with select=alusrc
    mux mux_ex(rs2_data,imm_new,alusrc,alu_input2);
   
    // ALU instantiation
    alu alu_inst(rs1_data, alu_input2, aluop,aluresult,zero      
    );

    // AND gate for branch decision: branch_taken is high if both Branch and zero_flag are high
    andgat branchand(zero_flag,branch,branchop);

endmodule
