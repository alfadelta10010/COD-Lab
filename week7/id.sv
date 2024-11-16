`timescale 1ns / 1ps

// Description: Decode stage: register file, control unit, mux, and gate.
// Inputs: rs1, rs2, ws, wd, opcode, imm value.
// Outputs: reg1, muxop, zero.
// Control Outputs: ALU src, ALU op, branch, regwrite, memread, memwrite, mem2reg.
// 
//////////////////////////////////////////////////////////////////////////////////

module topmodule_ID ( 
     input logic [31:0] inst, 
     input logic wr_en,          
   input  logic [31:0] wr_data,  

     output logic [31:0] imm_new, 
     output logic [31:0] rs1_data, 
     output logic [31:0] rs2_data, 
     output logic [2:0] func3,     
     output logic [6:0] func7, 
     output logic [6:0] opcode
);

logic clk;              
      logic reset;          

 
    logic [4:0] rs1_addr;  
    logic [4:0] rs2_addr;  
    logic [4:0] rd_addr;   
    logic [12:0] imm;      

  
  
    decoder d1(
        inst, 
        func3, 
        func7, 
        rd_addr, 
        rs2_addr, 
        rs1_addr, 
        imm, 
        opcode
    );

    // register file 
    regfile rfile(reset,clk,rs1_addr,rs2_addr,rd_addr,wr_en, wr_data ,rs1_data,rs2_data);
    
    immgen immgenerator (opcode, imm, imm_new);
    endmodule

  
