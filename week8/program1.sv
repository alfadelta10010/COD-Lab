module execution_stage(
    input clk,
    input reset,
    input [31:0] pc_present,
    input [31:0] reg1,         
    input [31:0] reg2,          
    input [31:0] immOut,        
    input [3:0] ALUoperation,   
    input ALUSrc,               
    input Branch,               
    input zero,                 
    output [31:0] exec_result,  
    output [31:0] sum,          
    output b_sel                
);
    logic [31:0] a;             
    logic [31:0] ALU_result;   

    // ALU Mux to select input for ALU (either reg2 or immediate value)
    mux ALU_mux(
        .d0(immOut),
        .d1(reg2),
        .s(ALUSrc),
        .y(a)
    );

    // ALU operation
    ALU ALU_unit(
        .d1(reg1),        
        .d2(a),           
        .control(ALUoperation),
        .result(ALU_result),    
        .zero(zero)            
    );

    // Calculate the branch target (pc_present + immOut)
    exec_adder exec_adder_unit(
        .a(pc_present),
        .b(immOut),
        .s(sum),       
        .cin(0)        
    );

    AND_gate branch_control(
        .a(Branch),
        .b(zero),
        .y(b_sel)      
    );

    assign exec_result = ALU_result;

endmodule