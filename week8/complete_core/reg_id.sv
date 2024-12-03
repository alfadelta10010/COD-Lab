module reg_id (
    input  logic         clk,      // Clock
    input  logic         rst,      // Synchronous reset
    input  logic         reg_wr,   // Write enable
    input  logic [4:0]   rs1,      // Read address 1
    input  logic [4:0]   rs2,      // Read address 2
    input  logic [4:0]   rd,       // Write address
    input  logic [31:0]  wd,       // Write data
    output logic [31:0]  reg1,     // Read data 1
    output logic [31:0]  reg2      // Read data 2
);

    // 32-register array to store 32-bit values
    logic [31:0] registerfile [31:0];

    // Synchronous read and write logic, with reset
    always_ff @(posedge clk) begin
        if (rst) begin
            // Reset register 0, and optionally other registers
            registerfile[0] <= 32'b0;
            // Optionally clear other registers on reset
            // for (int i = 1; i < 32; i++) registerfile[i] <= 32'b0;
        end else begin
            // Write data to register specified by rd if reg_wr is enabled
            if (reg_wr && rd != 0) begin
                registerfile[rd] <= wd;
            end
            
            // Update reg1 and reg2 outputs synchronously based on read addresses
            reg1 <= registerfile[rs1];
            reg2 <= registerfile[rs2];
        end
    end

endmodule
