.data
number:  .word 0x12      # Input number

.text
    la x5, number        # Load address of 'number' into x5
    lw x6, 0(x5)         # Load the value of 'number' into x6

    # Step 2: Initialize count register to 0 (to count the number of 1's)
    li x7, 0             # Initialize x7 to 0, will hold the number of 1's

check_bits:
    # Step 3: Test if the least significant bit is 1
    andi x8, x6, 1       # Check the least significant bit of x6

    # Step 4: If the least significant bit is 1, increment count
    add x7, x7, x8       # If x8 is 1, increment x7 (count)

    # Step 5: Right shift x6 by 1 to check the next bit
    srli x6, x6, 1       # Logical shift right x6 by 1 (discard the least significant bit)

    # Step 6: Repeat the process until x6 becomes 0
    bne x6, x0, check_bits   # If x6 != 0, continue looping

    # Step 7: Check if the count is exactly 2
    li x9, 2             # Load 2 into x9 for comparison
    bne x7, x9, not_2_out_of_5 # If x7 != 2, jump to not_2_out_of_5

    # If exactly 2-out-of-5, set x10 to 1 and exit
    li x10, 1            # Set x10 to 1 (indicates 2-out-of-5)
    j exit               # Jump to exit

not_2_out_of_5:
    # If not exactly 2-out-of-5, set x10 to 0
    li x10, 0            # Set x10 to 0 (not a 2-out-of-5 number)

exit:
    # Exit point (optional nop for alignment)
    nop

