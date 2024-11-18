module top_DECODER_black_box(
  input logic [31:0] Instruction,  // Instruction input
  output logic [31:0] imm32,       // Extended immediate output
  output logic [31:0] rs1_data,    // Data for source register 1
  output logic [31:0] rs2_data     // Data for source register 2
);

  // Internal signals
  logic [11:0] imm12_for_Sign;     // 12-bit immediate for sign extension
  logic [4:0] rs1_add, rs2_add;    // Source register addresses
  logic [4:0] rd_add;              // Destination register address
  logic [2:0] fun3;                // 3-bit function code (funct3)
  logic [6:0] fun7;                // 7-bit function code (funct7)
  logic [6:0] opcode;              // Opcode from instruction
  logic Reg_Write;					// Control signal for register write
  logic clk, reset;
  
  // Decoder module instance
  decoder dec(
    .instruction(Instruction),     // Input instruction
    .rd(rd_add),                   // Destination register address
    .rs1(rs1_add),                 // Source register 1 address
    .rs2(rs2_add),                 // Source register 2 address
    .fun3(fun3),                   // Function code (funct3)
    .fun7(fun7),                   // Function code (funct7)
    .opcode(opcode),               // Opcode
    .immediate(imm12_for_Sign)      // 12-bit immediate output
  );
  
  // Register file module instance
  register_file Register(
    .clk(clk),
    //.reset(reset),
    .reset(1'b0),                  // Assuming reset is inactive
    .rs1_add(rs1_add),             // Source register 1 address
    .rs2_add(rs2_add),             // Source register 2 address
    .rd_add(rd_add),               // Destination register address
    .Reg_Write(Reg_Write),         // Register write control signal
    .wr_data(32'b0),               // Assuming no data is written in this example
    .rs1_data(rs1_data),           // Output data from source register 1
    .rs2_data(rs2_data)            // Output data from source register 2
  );
  
  // Sign extension module instance
  sign_extension Sign (
    
    .imm(imm12_for_Sign),          // 12-bit immediate from decoder
    .imm_extended(imm32)           // 32-bit sign-extended immediate
  );

endmodule
