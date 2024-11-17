module mux2_1 (
    input logic sel,  // 1-bit selection input
    input logic a,    // Input a
    input logic b,    // Input b
    output logic y     // Output
);

    always @(*) begin
        if (sel)      // If sel is 1, select b
            y = b;
        else           // If sel is 0, select a
            y = a;
    end

endmodule
