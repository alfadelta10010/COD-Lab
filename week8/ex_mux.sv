module ex_mux #(parameter n = 32) (
    input logic [n-1:0] rs2,         // Input from rs2
    input logic [n-1:0] immfinal,    // Input from immfinal
    input logic alu_src,              // Input for ALU source selection
    output logic [n-1:0] out         // Output
);
    // Mux logic here: select between rs2 and immfinal based on alu_src
    always_comb begin
        if (alu_src) begin
            out = immfinal;  // If alu_src is 1, select immfinal
        end else begin
            out = rs2;       // Otherwise, select rs2
        end
    end
endmodule

