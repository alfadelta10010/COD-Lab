module controlunit (
    input  logic [6:0] opcode,        
    output logic [3:0] ALUOp,         
    output logic ALUSrc,              
    output logic Branch,              
    output logic MemRead,             
    output logic MemWrite,            
    output logic MemToReg,            
    output logic RegWrite             
);

    always_comb begin
       
        ALUOp     = 4'b0000;
        ALUSrc    = 1'b0;
        Branch    = 1'b0;
        MemRead   = 1'b0;
        MemWrite  = 1'b0;
        MemToReg  = 1'b0;
        RegWrite  = 1'b0;

        
        case (opcode)
            
            7'b0110011: begin
                ALUOp     = 4'b0010;  
                ALUSrc    = 1'b0;     
                RegWrite  = 1'b1;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;     
                MemWrite  = 1'b0;     
                Branch    = 1'b0;     
            end

            
            7'b0010011: begin
                ALUOp     = 4'b0011;  
                ALUSrc    = 1'b1;     
                RegWrite  = 1'b1;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;     
                MemWrite  = 1'b0;     
                Branch    = 1'b0;     
            end

            
            7'b0000011: begin
                ALUOp     = 4'b0000;  
                ALUSrc    = 1'b1;     
                RegWrite  = 1'b1;     
                MemToReg  = 1'b1;     
                MemRead   = 1'b1;     
                MemWrite  = 1'b0;     
                Branch    = 1'b0;     
            end

            
            7'b0100011: begin
                ALUOp     = 4'b0000;  
                ALUSrc    = 1'b1;     
                RegWrite  = 1'b0;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;     
                MemWrite  = 1'b1;
                Branch    = 1'b0;     
            end

            
            7'b1100011: begin
                ALUOp     = 4'b0110;  
                ALUSrc    = 1'b0;     
                RegWrite  = 1'b0;     
                MemToReg  = 1'b0;     
                MemRead   = 1'b0;   
                MemWrite  = 1'b0;     
                Branch    = 1'b1;     
            end

            default: begin
               
                ALUOp     = 4'b0000;
                ALUSrc    = 1'b0;
                Branch    = 1'b0;
                MemRead   = 1'b0;
                MemWrite  = 1'b0;
                MemToReg  = 1'b0;
                RegWrite  = 1'b0;
            end
        endcase
    end
endmodule
