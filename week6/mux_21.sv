module mux_21 #(parameter n = 32)( 
    input logic [n-1:0] a,    // Input a
    input logic [n-1:0] b,    // Input b
    input logic s,            // Select signal
    output logic [n-1:0] out  // Output
);
    // Mux logic with ternary operator for selection
    assign out = s ? a : b;    // If s=1, output a, else output b
endmodule
