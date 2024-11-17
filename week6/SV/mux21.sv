module MUX2to1(
    input logic [31:0] in0,      // Input 0
    input logic [31:0] in1,      // Input 1
    input logic sel,             // Selector
    output logic [31:0] out      // Output
);
    out <= sel ? in1 : in0;
	 
endmodule
