week 9 
1 module MemoryAccessStage(
    input wire clk,
    input wire memRead,               // Control signal to read from memory
    input wire memWrite,              // Control signal to write to memory
    input wire [31:0] address,        // Memory address from EX stage
    input wire [31:0] writeData,      // Data to be written to memory
    input wire [31:0] aluResult,      // Result from ALU in EX stage
    input wire memToReg,              // Select signal for MUX (1 = Memory data, 0 = ALU result)
    output wire [31:0] memOut         // Output to WB stage
);

    // Internal wire for memory read data
    wire [31:0] readData;

    // Instantiate the Data Memory module
    DataMemory dataMemory (
        .clk(clk),
        .memRead(memRead),
        .memWrite(memWrite),
        .address(address),
        .writeData(writeData),
        .readData(readData)
    );

    // Instantiate the MUX to select between memory data and ALU result
    MUX mux (
        .d1(readData),                 // Data read from memory
        .d0(aluResult),                // ALU result from EX stage
        .s(memToReg),                  // Select signal (1 for memory data, 0 for ALU result)
        .y(memOut)                     // Final output for WB stage
    );

endmodule



2  module DataMemory(
    input wire clk,
    input wire memRead,            // Control signal to read from memory
    input wire memWrite,           // Control signal to write to memory
    input wire [31:0] address,     // Address input
    input wire [31:0] writeData,   // Data to be written to memory
    output reg [31:0] readData     // Data output from memory
);

    // Declare memory array (e.g., 1024 32-bit memory locations)
    reg [31:0] memory [0:1023];

    // Synchronous Memory Write
    always @(posedge clk) begin
        if (memWrite) begin
            memory[address[9:0]] <= writeData; // Write data to the memory address
        end
    end

    // Asynchronous Memory Read
    always @(*) begin
        if (memRead) begin
            readData = memory[address[9:0]]; // Read data from the memory address
        end else begin
            readData = 32'b0;
        end
    end

endmodule

