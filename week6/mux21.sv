module mux21(
    input logic [31:0] in1,in2,
    input logic select,
    output logic [31:0] y
    );
    assign y = select ? in1 : in2;
endmodule