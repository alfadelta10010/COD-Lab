module regfile #(parameter Inst_size = 32) (
    input logic [4:0] rs1,        
    input logic [4:0] rs2,      
    input logic [4:0] rd,        
    input logic reg_write,      
    input logic [31:0] wr_data,  
    input logic res,              
    output logic [31:0] reg1,    
    output logic [31:0] reg2      
);

   
    reg [Inst_size-1:0] mem [0:31];

   
    always_ff @(posedge res) begin
        integer i;
        for (i = 0; i < 32; i = i + 1) begin
            mem[i] = {Inst_size{1'b0}};  
        end
    end

   
    always_comb begin
        if (reg_write) begin
            mem[rd] = wr_data;  
        end
        reg1 = mem[rs1];  
        reg2 = mem[rs2];  
    end
endmodule
