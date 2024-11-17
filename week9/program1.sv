module memory_access_stage(
    input clk,
    //input reset,
    input [31:0] ALU_result,   
    input [31:0] reg2,          
    input MemRead,              
    input MemWrite,             
    input MemtoReg,             
    output [31:0] mem_data_out,
    output [31:0] data_to_write, 
    output [31:0] data   
);

    wire [31:0] mem_data_in;

    // Data Memory (read and write operations)
    DataMem data_mem(
        .clk(clk),
        .dataW(reg2),           
        .addr(ALU_result),      
        .memR(MemRead),        
        .memW(MemWrite),        
        .dataR(mem_data_in)     
    );

    // Select memory data or ALU result based on MemtoReg
    mux wb_mux(
        .s(MemtoReg),           
        .d0(ALU_result),        
        .d1(mem_data_in),       
        .y(mem_data_out)       
    );


    assign data_to_write = reg2;           
    assign data = ALU_result;       

endmodule
