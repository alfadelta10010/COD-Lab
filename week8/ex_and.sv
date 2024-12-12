module ex_and(
    input bit zero,         // Zero flag from previous stage
    input bit branch,       // Branch control signal
    output bit and_out      // AND result for branch condition
);

    always_comb begin
        and_out = zero & branch; // AND result for branch decision
    end

endmodule
