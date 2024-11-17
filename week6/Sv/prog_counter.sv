module Program_Counter(
    input  logic        clk,         // Clock signal
    input  logic        reset,       // Reset signal
    input  logic [31:0] pc_in,       // Input new PC value
    output logic [31:0] pc_out       // Output current PC value
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_out <= 32'b0;  // Reset PC to zero
        end else begin
            pc_out <= pc_in;  // Load new PC value
        end
    end

endmodule
