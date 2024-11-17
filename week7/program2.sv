// Write a SV program for the Decoder

module decoder(
  input logic [31:0] instIn,
  output logic [4:0] rd,
  output logic [4:0] rs1,
  output logic [4:0] rs2,
  output logic [31:0] immediate,
  output logic [6:0] opcode,
  output logic [2:0] fn3,
  output logic [6:0] fn7
);
  
  always_comb begin
    // Default values to avoid latches
    rd = 5'bX;
    rs1 = 5'bX;
    rs2 = 5'bX;
    fn3 = 3'bX;
    fn7 = 7'bX;
    immediate = 32'bX;

    // Assign opcode
    opcode = instIn[6:0];

    case (opcode)
      // LUI
      7'b0110111: begin
        rd = instIn[11:7];
      end
      
      // JAL
      7'b1101111: begin
        rd = instIn[11:7];
      end
      
      // AUIPC
      7'b0010111: begin
        rd = instIn[11:7];
      end
      
      // JALR
      7'b1100111: begin
        rd = instIn[11:7];
        rs1 = instIn[19:15];
        fn3 = instIn[14:12];
      end
      
      // B-type (e.g., BEQ)
      7'b1100011: begin
        rs1 = instIn[19:15];
        rs2 = instIn[24:20];
        fn3 = instIn[14:12];
        immediate[4:1] = instIn[11:8];
        immediate[10:5] = instIn[30:25];
        immediate[11] = instIn[7];
        immediate[12] = instIn[31];
        immediate = {{19{instIn[31]}}, immediate[12:1], 1'b0}; // sign-extend and shift left
      end
      
      // Load-type (e.g., LW)
      7'b0000011: begin 
        rd = instIn[11:7];
        rs1 = instIn[19:15];
        fn3 = instIn[14:12];
        immediate = {{20{instIn[31]}}, instIn[31:20]}; // sign-extend
      end

      // Store-type (e.g., SW)
      7'b0100011: begin
        immediate[4:0] = instIn[11:7];
        rs1 = instIn[19:15];
        rs2 = instIn[24:20];
        immediate[11:5] = instIn[31:25];
        immediate = {{20{instIn[31]}}, immediate}; // sign-extend
      end

      // I-type Arithmetic (e.g., ADDI, SLTI, XORI, ORI, ANDI)
      7'b0010011: begin
        rd = instIn[11:7];
        rs1 = instIn[19:15];
        fn3 = instIn[14:12];
        immediate = {{20{instIn[31]}}, instIn[31:20]}; // sign-extend
      end

      // R-type Arithmetic (e.g., ADD)
      7'b0110011: begin
        rd = instIn[11:7];
        rs1 = instIn[19:15];
        rs2 = instIn[24:20];
        fn3 = instIn[14:12];
        fn7 = instIn[31:25]; 
      end

      // Fence instructions
      7'b0001111 : begin 
          fn3 = instIn[14:12]; 
          // No rd or rs needed for fence instructions 
          // Immediate can be used for additional parameters if needed.
      end

      // System instructions (e.g., ECALL, EBREAK)
      7'b1110011 : begin 
          fn3 = instIn[14:12]; 
          // No rd or rs needed for system instructions 
          // Immediate can be used for additional parameters if needed.
      end

      default:
        begin
          // Do nothing, default case already sets to X values.
        end
    endcase
  end
  
endmodule