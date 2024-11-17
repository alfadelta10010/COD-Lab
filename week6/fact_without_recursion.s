.data
    num:    .word 5               # Number for which factorial is to be calculated
    result: .word 1               # Result initialized to 1

.text
    la x2, num                    # Load address of 'num' into x2
    lw x3, 0(x2)                  # Load num into x3
    la x4, result                 # Load address of 'result' into x4
    lw x5, 0(x4)                  # Load result (initially 1) into x5

    addi x6, x3, -1               # Calculate num - 1 and store in x6
    addi x7, x0, 1                # Initialize counter i = 1

iterative_loop:
    bge x7, x3, done              # If i >= num, exit loop
    mul x5, x5, x7                # result = result * i
    addi x7, x7, 1                # Increment i
    j iterative_loop               # Repeat loop

done:
    sw x5, 0(x4)                  # Store the result back to 'result'
    j done                         # Infinite loop to halt the program
