// Write a SV program for 2:1 MUX

module mux_2to1 (
    input logic select,
    input logic [15:0] a,
    input logic [15:0] b,
    output logic [15:0] y
);
    always @* begin
        y = select ? b : a;
    end
endmodule