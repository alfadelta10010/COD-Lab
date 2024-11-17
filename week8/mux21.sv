module mux21(rs2, immfinal, alu_src, out);
    input logic [31:0] rs2;
    input logic [31:0] immfinal;
    input logic alu_src;  // changed to single-bit control
    output logic [31:0] out;

    assign out = alu_src ? rs2 : immfinal;
endmodule