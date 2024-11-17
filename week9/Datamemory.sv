`timescale 1ns / 1ps
module DataMemory #(parameter SIZE = 12) (
    input logic clk,
    input logic [31:0] dataW,                 // Data to write
    input logic [SIZE-1:0] addr,              // Address (word-aligned)
    input logic memR,                         // Memory read enable
    input logic memW,                         // Memory write enable
    output logic [31:0] dataR                 // Data read
);

    // Define the memory as 32-bit words
    logic [31:0] datafile [0 : 2**(SIZE-2) - 1];  // Adjust size to hold 32-bit words

    // Synchronous read
    always_ff @(posedge clk) begin
        if (memR)
            dataR <= datafile[addr[SIZE-1:2]]; // Shift address by 2 to access word-aligned
        else
            dataR <= 32'bX;                    // Undefined when not reading
    end

    // Synchronous write
    always_ff @(posedge clk) begin
        if (memW)
            datafile[addr[SIZE-1:2]] <= dataW; // Write entire 32-bit word
    end

endmodule