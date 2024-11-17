# Check if a number is a 2 out of 5 number
    .text
    .globl _start
_start:
    li t0, 0b00011000   # Load the number to be checked (24 in decimal)
    
    # Mask the least significant 5 bits of the number
    andi t1, t0, 0b11111  # t1 = t0 & 0b11111 (masking the least significant 5 bits)

    # Count the number of 1's in t1 using the popcount trick
    li t2, 0              # Initialize counter to 0
popcount_loop:
    beq t1, zero, check_result   # If t1 is zero, exit the loop
    andi t3, t1, 1        # t3 = t1 & 1 (check if the least significant bit is 1)
    add t2, t2, t3        # Increment the counter if the bit is 1
    srli t1, t1, 1        # Shift t1 right by 1 to check the next bit
    j popcount_loop       # Repeat the loop

check_result:
    li t3, 2              # Load the value 2 into t3 (the target count)
    beq t2, t3, is_2_out_of_5   # If t2 == 2, it's a 2 out of 5 number

    # If it's not a 2 out of 5 number, set t4 to 0 (failure)
    li t4, 0              # Not a 2 out of 5 number
    j end_program         # Jump to end_program (exit the program)

is_2_out_of_5:
    li t4, 1              # 2 out of 5 number, set t4 to 1

end_program:
    # At this point, the result (1 for 2 out of 5, 0 for not) is in t4.
    # The program will effectively end here, and you can use `t4` as the final result.
    
    # End of program (we just "end" here, since RIPES does not require an explicit exit)
    nop                    # No operation, just to mark the end of the program
