module decoder(input logic [31:0] instruction,
               output logic [4:0] rd,
               output logic [4:0] rs1,
               output logic [4:0] rs2,
               output logic [2:0] fun3,
               output logic [6:0] fun7,
               output logic [6:0] opcode,
               output logic mux,
               output logic [31:0] immediate);

  // Assign opcode
  assign opcode = instruction[6:0];
  
  always_comb begin
    // Default values to avoid latches
    rd = 5'b0;
    rs1 = 5'b0;
    rs2 = 5'b0;
    fun3 = 3'b0;
    fun7 = 7'b0;
    immediate = 32'b0;
    
    case (opcode)
    
      7'b0101111:  // R - type
      begin
        rd = instruction[11:7];
        fun3 = instruction[14:12];
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        fun7 = instruction[31:25];
      end
      
      7'b0010011:  // I - type
      begin
        rd = instruction[11:7];
        fun3 = instruction[14:12];
        rs1 = instruction[19:15];
        immediate = {{20{instruction[31]}}, instruction[31:20]}; // sign-extend
      end 
      
      7'b0000011:  // Lw
      begin
        rd = instruction[11:7];
        fun3 = instruction[14:12];
        rs1 = instruction[19:15];
        immediate = {{20{instruction[31]}}, instruction[31:20]}; // sign-extend
      end
      
      7'b0100011:  // Sw
      begin
        immediate[4:0] = instruction[11:7];
        fun3 = instruction[14:12];
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        immediate[11:5] = instruction[31:25];
        immediate = {{20{instruction[31]}}, immediate[11:0]}; // sign-extend
      end
      
      7'b1100011:  // beq
      begin
        immediate[4:1] = instruction[11:8];
        immediate[11] = instruction[7];
        fun3 = instruction[14:12];
        rs1 = instruction[19:15];
        rs2 = instruction[24:20];
        immediate[10:5] = instruction[30:25];
        immediate[12] = instruction[31];
        immediate = {{19{instruction[31]}}, immediate[12:1], 1'b0}; // sign-extend and shift left
        // immediate = {instruction[31],instruction[7],instruction[30:25],instruction[11:0]};
      end
      
      default: 
      begin
        // Do nothing, default case
      end
      
    endcase
  end
endmodule
