.data
array:      .word 10, 18, 25, 36, 42, 53    # Array of numbers
length:     .word 6                         # Length of the array
divisible_by_9: .word 0                     # Flag to check if any number is divisible by 9

.text
main:
    la t0, array                    # Load address of the array into t0
    la t1, length                   # Load address of the length into t1
    lw t2, 0(t1)                    # Load length of the array into t2

    addi t3, zero, 0                # Initialize index to 0 in t3
    addi t4, zero, 0                # Flag to indicate if a number divisible by 9 is found

check_loop:
    bge t3, t2, end_label           # If index >= length, end the loop

    lw t5, 0(t0)                    # Load current element of array into t5

    addi t6, t5, -9                 # Subtract 9 from the number
    addi t7, zero, 0                # Initialize counter (to track subtraction steps)
    
subtract_loop:
    bge t6, zero, subtract_again    # If t6 >= 0, we can subtract 9 again
    beq t7, zero, divisible         # If no subtraction was done, it's divisible by 9 (i.e., initial value was already divisible by 9)

    j check_loop                    # Continue to next number if not divisible

subtract_again:
    addi t6, t6, -9                 # Subtract 9 again
    addi t7, t7, 1                  # Increment counter
    j subtract_loop                 # Continue subtraction loop

divisible:
    addi t4, zero, 1                # Set flag to 1 if divisible by 9
    j end_label                     # Jump to end after finding a divisible number

end_label:
    # End of the program
    # At this point, the flag t4 will indicate whether a number was divisible by 9 or not
    # If t4 == 1, a number divisible by 9 was found. Otherwise, no number was divisible by 9.
    j end_label                      # Infinite loop to terminate program
