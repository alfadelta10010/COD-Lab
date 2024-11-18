module AsynchronousFF (
    input  logic d,          // Data input
    input  logic clk,        // Clock input
    input  logic preset_n,   // Asynchronous preset (active-low)
    input  logic reset_n,    // Asynchronous reset (active-low)
    output logic q           // Flip-flop output
);

    always_ff @(posedge clk or negedge preset_n or negedge reset_n) begin
        if (!preset_n)         // Active-low preset, forces Q = 1
            q <= 1'b1;
        else if (!reset_n)      // Active-low reset, forces Q = 0
            q <= 1'b0;
        else                    // On positive clock edge, D input is sampled
            q <= d;
    end

endmodule
