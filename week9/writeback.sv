module wb #(parameter n=32)(   
    input logic [n-1:0] alu_out,     // ALU output  
    input logic [n-1:0] data_in,     // Data from memory  
    input logic mem_reg,             // Memory-to-register control signal  
    output logic [n-1:0] wr_data     // Write-back data  
);  

    // MUX to select between ALU result and data from memory  
    assign wr_data = mem_reg ? data_in : alu_out;  

endmodule
