.data
number:  .word 0x12    # Example hexadecimal value (change as needed)

.text
    # Step 1: Load the number into register x5
    la x5, number         # Load address of 'number' into x5
    lw x6, 0(x5)          # Load the hexadecimal number into register x6

    # Step 2: Initialize count register to 0 (to count the number of 1's)
    li x7, 0              # Set x7 to 0, will hold the number of 1's

check_bits:
    # Step 3: Test if the least significant bit is 1
    andi x8, x6, 1        # x8 = x6 & 1 (check the least significant bit)

    # Step 4: If the least significant bit is 1, increment count
    add x7, x7, x8        # If x8 is 1, increment count (x7)

    # Step 5: Right shift x6 by 1 to check the next bit
    srli x6, x6, 1        # x6 = x6 >> 1 (shift right by 1 bit)

    # Step 6: Repeat the process until x6 becomes 0
    bneq x6, check_bits   # If x6 is not 0, continue checking

    # Step 7: Check if the count is exactly 2
    li x9, 2              # Load 2 into x9
    beq x7, x9, is_2_out_of_5 # If count is 2, it's a 2-out-of-5 number

    # If not 2-out-of-5, set x10 to 0 and exit
    li x10, 0             # Set x10 to 0 (not a 2-out-of-5 number)
    j exit_program
nop
