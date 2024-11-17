module decoder(  input  logic [31:0] instruction,    
    output logic [6:0]  opcode,         
    output logic [4:0]  rd,             
    output logic [2:0]  funct3,         
    output logic [4:0]  rs1,            
    output logic [4:0]  rs2,            
    output logic [6:0]  funct7,         
    output logic [31:0] imm             
);

    always_comb begin
        rd = 5'b0;
        funct3 = 3'b0;
        rs1 = 5'b0;
        rs2 = 5'b0;
        funct7 = 7'b0;
        imm = 32'b0; 
        opcode = instruction[6:0]; 

        // Decode based on opcode
        case (opcode)
            // R-type
            7'b0110011: begin
                rd      = instruction[11:7];   
                funct3  = instruction[14:12];  
                rs1     = instruction[19:15];  
                rs2     = instruction[24:20];  
                funct7  = instruction[31:25];  
                imm     = 32'b0;   
            end

            // I-type
            7'b0010011: begin 
                rd      = instruction[11:7];   
                funct3  = instruction[14:12];  
                rs1     = instruction[19:15];  
                imm     = {{20{instruction[31]}}, instruction[31:20]};  
            end
            // Load-type
            7'b0000011: begin 
                rd      = instruction[11:7];   
                funct3  = instruction[14:12];
                rs1     = instruction[19:15];  
                imm     = {{20{instruction[31]}}, instruction[31:20]};  
            end

            // B-type
            7'b1100011: begin 
                funct3  = instruction[14:12];  
                rs1     = instruction[19:15];  
                rs2     = instruction[24:20];  
                imm     = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0}; // Sign-extended 13-bit immediate
            end

            // S-type
            7'b0100011: begin 
                funct3  = instruction[14:12];  
                rs1     = instruction[19:15];  
                rs2     = instruction[24:20];  
                imm     = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]}; 
            end

            // J-type
            7'b1101111: begin 
                rd      = instruction[11:7];   
                imm     = {{12{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21], 1'b0}; 
            end
             // U-type
            7'b0110111: begin 
                rd      = instruction[11:7];   
                imm     = {instruction[31:12], 12'b0}; 
            end

            7'b0010111: begin 
                rd      = instruction[11:7];   
                imm     = {instruction[31:12], 12'b0}; 
            end

            default: begin
                rd = 5'b0;
                funct3 = 3'b0;
                rs1 = 5'b0;
                rs2 = 5'b0;
                funct7 = 7'b0;
                imm = 32'b0;  
            end
        endcase
      end  

endmodule