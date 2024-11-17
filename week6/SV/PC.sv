module PC (
    input logic clk,                    // Clock signal
    input logic rst,                    // Reset signal
    input logic [31:0] pc_in,           // Input PC value
    output logic [31:0] current_pc          // Current PC value
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            current_pc <= 32'b0;         // Reset PC to 0
        end else begin
            current_pc <= pc_in;         // Load the new PC value
         
        end
    end
endmodule
