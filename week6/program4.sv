module mux(
    input s,
    input d0,
    input d1,
    output y
    );
    assign y=s?d0:d1;
endmodule
