module fc #(parameter n = 32) (
    input logic clk,               // Clock input
    input logic reset             // Reset input
   
);

    // Internal signals for each stage
    logic [n-1:0] pc_imm, pc_4;
    logic [n-1:0] instr, rdata1, rdata2, immfinal;
    logic [n-1:0] alu_out, data_out, wr_data;
    logic [3:0] alu_opra;           // ALU operation code
    logic alu_src, mem_read, mem_write, mem_reg, branch_control, write_enable; // Control signals
    logic [2:0] func3;              // Function code 3
    logic [6:0] func7;              // Function code 7

    // Instruction Fetch Stage (IF)
    IF #(.n(n)) if_stage (
        .clk(clk),
        .reset(reset),
        //.pc_imm(pc_imm),
        .s(branch_control),         // Branch control signal
        .instr(instr),
        .pc_next(pc_4)              // Next PC after increment
	 );

    // Instruction Decode Stage (ID)
    ID #(.n(n)) id_stage (
        .reset(reset),
		   // Connect the output of wb_stage as input  
    .write_enable(1'b1), // Control signal for writing  
        .wr_data(wr_data),
        .instr(instr),
        .func3(func3),               // Connect function code 3
        .func7(func7),               // Connect function code 7
        .rdata1(rdata1),             // Register data output 1 (32 bits)
        .rdata2(rdata2),             // Register data output 2 (32 bits)
        .immfinal(immfinal)          // Sign-extended immediate value
    );

    // Execute Stage (EX)
    EX EX (
        .rs1(rdata1),                // 32-bit data from register file for rs1
        .rs2(rdata2),                // 32-bit data from register file for rs2
        .immfinal(immfinal),
        .alu_src(alu_src),           // ALU source selection
        .alu_op(alu_opra),           // ALU operation code
        .branch(branch_control),     // Branch signal
        .alu_out(alu_out),
        .and_out(branch_control)     // Branch condition output
    );

    // Data Memory Access Stage (MA)
    ma #(.n(n)) ma_stage (
        .alu_out(alu_out),
        .data_in(rdata2),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .data_out(data_out)
    );

   
	 // Assuming the instance names from the diagram remain the same  
	wb #(.n(n)) wb_stage (  
    .alu_out(alu_out),  
    .data_in(data_out),  
    .mem_reg(mem_reg),  
    .wr_data(wr_data)   // Direct connection to next stage  
);  


    // Program Counter Update Logic
    always_comb begin
        // Default control signals
        mem_read = 0;
        mem_write = 0;
        mem_reg = 0;
        alu_src = 0;
        branch_control = 0;          // Branch control internal signal
        alu_opra = 4'b0000;          // Default ALU operation code
    end

endmodule
