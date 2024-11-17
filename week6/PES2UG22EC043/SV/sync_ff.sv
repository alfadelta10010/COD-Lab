module sync_ff(input logic clk, reset, d, output logic q);

    always_ff @(posedge clk) begin // synchronous since reset is not in the sensitiviy list
        if(reset) q <= 1'b0;
        else q <= d;
    end
endmodule
