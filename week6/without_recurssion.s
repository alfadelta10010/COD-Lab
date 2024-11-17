.data
    num: .word 5           # The number to calculate the factorial of
    result: .word 1        # Store the result of the factorial

.text
    la x5, num            # Load address of 'num' into x5
    lw x6, 0(x5)          # Load 'num' into x6 (x6 = 5)

    li x7, 1              # Initialize the result to 1 (x7 = 1)

factorial_loop:
    beq x6, x0, done      # If x6 is 0 (end of the loop), done
    mul x7, x7, x6        # result = result * x6
    addi x6, x6, -1       # Decrement x6 (x6 = x6 - 1)
    j factorial_loop      # Repeat the loop

done:
    la x8, result         # Load address of result into x8
    sw x7, 0(x8)          # Store the result in memory
    j exit                # Jump to exit (end of program)

exit:
    j exit                # Infinite loop to end the program
