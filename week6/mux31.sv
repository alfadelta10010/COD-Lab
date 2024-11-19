module mux31(
    input logic [31:0] a,b,c,
    input logic [1:0] select,
    output logic [31:0] y
    );
    
    assign y = select[1] ? c : (select[0] ? b : a);
    
endmodule