module mux2_1(
    input s,
    input logic [31:0] d0,
    input logic [31:0]d1,
    output logic [31:0]y
    );
    assign y=s?d0:d1;
endmodule