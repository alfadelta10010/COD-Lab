module registerfile(
    input  logic        clk,          // Clock signal
    input  logic        reset,        // Reset signal
    input  logic        reg_write,    // Write enable signal
    input  logic [4:0]  read_reg1,    // Read register 1 address
    input  logic [4:0]  read_reg2,    // Read register 2 address
    input  logic [4:0]  write_reg,    // Write register address
    input  logic [31:0] write_data,   // Data to write
    output logic [31:0] read_data1,   // Output data for read register 1
    output logic [31:0] read_data2    // Output data for read register 2
);

    logic [31:0] registers [31:0];  // 32 registers of 32 bits each

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            for (int i = 0; i < 32; i++) begin
                registers[i] <= 32'b0;
            end
        end else if (reg_write && write_reg != 5'b0) begin
            registers[write_reg] <= write_data;  // Write data to register
        end
    end

    assign read_data1 = (read_reg1 != 5'b0) ? registers[read_reg1] : 32'b0; // Read reg1
    assign read_data2 = (read_reg2 != 5'b0) ? registers[read_reg2] : 32'b0; // Read reg2
endmodule