week6
1 Asynchronous Reset D Flip-Flop
module async_reset_dff (
    input logic clk,
    input logic async_reset,
    input logic d,
    output logic q
);

    always_ff @(posedge clk or posedge async_reset) begin
        if (async_reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule


2 Synchronous Reset D Flip-Flop
module sync_reset_dff (
    input logic clk,
    input logic sync_reset,
    input logic d,
    output logic q
);

    always_ff @(posedge clk) begin
        if (sync_reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule



module MUX (
    input logic [31:0] d1,  // 4-bit input d1
    input logic [31:0] d0,  // 4-bit input d0
    input logic s,         // select line
    output logic [31:0] y   // 4-bit output y
);

    assign y = s ? d1 : d0;  // If s=1, select d1; if s=0, select d0

endmodule


5 module Adder_2to1 (
    input  logic [31:0] a,   // First 32-bit input
    input  logic [31:0] b,   // Second 32-bit input
    input  logic        sel, // Select line for controlling the addition
    output logic [31:0] sum  // 32-bit sum output
);

    always_comb begin
        if (sel) begin
            sum = a + b;  // If select is 1, perform the addition
        end else begin
            sum = 32'b0;  // If select is 0, output zero
        end
    end

endmodule


6 module InstructionFetch(
    input  logic        clk,            // Clock signal
    input  logic        reset,          // Reset signal
    input  logic        branch_taken,    // Branch control signal (selects between pc+4 or branch target)
    input  logic [31:0] branch_target,  // Branch target address
    output logic [31:0] instruction      // Output fetched instruction
);

    logic [31:0] pc_out;              // Current program counter value
    logic [31:0] next_pc;             // Next PC value (MUX output)
    logic [31:0] next_sequential_pc;  // Next sequential PC (PC + 4)

    // Program Counter Module
    ProgramCounter pc_module (
        .clk(clk),
        .reset(reset),
        .pc_in(next_pc),     // The selected next PC value
        .pc_out(pc_out)      // The current PC value
    );
    
    // Instruction Memory Module
     InstructionMemory instruction_memory (
        .pc_out(pc_out),         // Fetch instruction based on the current PC
        .reset(reset),
        .instr(instruction)  // Output fetched instruction
    );

    // Adder to compute the next sequential PC (PC + 4)
    Adder_2to1 pc_adder (
        .a(pc_out),           // Current PC value
        .b(32'd4),          // Typically 4 for word-aligned instructions
        .sum(next_sequential_pc)  // Next sequential PC (PC + 4)
    );

    // MUX to select between next sequential PC (PC + 4) and branch target
    MUX pc_mux (
        .d1(branch_target),      // Branch target address (chosen if branch is taken)
        .d0(next_sequential_pc), // Next sequential PC (PC + 4)
        .s(branch_taken),        // Select signal (1 = branch taken, 0 = sequential execution)
        .y(next_pc)              // Output the next PC value (from MUX)
    );

endmodule



7 module InstructionMemory(
    input logic [31:0] pc_out,  // Program Counter output
    input logic        reset,   // Reset signal
    output logic [31:0] instr   // Instruction output
);
    reg [31:0] mem[1023:0];  // Memory array (1024 x 32 bits)

    // Assign instruction: fetch instruction from memory or output zero if reset is active
    assign instr = (reset == 1'b1) ? mem[pc_out >> 2] : 32'b0;

    // Initialize memory with instructions
    initial begin
        mem[0] = 32'h00000033;  // NOP (ADD x0, x0, x0)
        mem[1] = 32'h00100093;  // ADDI x1, x0, 1 (x1 = x0 + 1)
        mem[2] = 32'h00208133;  // ADD x2, x1, x2 (x2 = x1 + x2)
    end
endmodule
