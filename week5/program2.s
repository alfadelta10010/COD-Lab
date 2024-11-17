.data
    a: .word 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x0000
    b: .word 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x0000
    c: .word 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x1234, 0x5678, 0x0000

.text

    li x1, 10               # Set loop counter (i = 10)
    li x2, 0                # Initialize index i = 0

loop_start:
    bge x2, x1, end_loop    # If i >= 10, exit loop

    # Load a[i] and b[i]
    la x3, a                # Load address of array a into x3
    la x4, b                # Load address of array b into x4
    lw x5, 0(x3)            # Load a[i] into x5 (a[x2])
    lw x6, 0(x4)            # Load b[i] into x6 (b[x2])

    # Multiply a[i] * b[i]
    mul x7, x5, x6          # x7 = a[i] * b[i]

    # Load c[i-1]
    la x8, c                # Load address of array c into x8
    lw x9, -4(x8)           # Load c[i-1] into x9 (c[x2-1])

    # Add result to c[i-1]
    add x7, x7, x9          # x7 = (a[i] * b[i]) + c[i-1]

    # Store result in c[i]
    sw x7, 0(x8)            # Store result in c[x2]

    addi x2, x2, 1          # Increment i
    j loop_start            # Jump back to start of loop

end_loop:
    ret                      # Return from main (if applicable)0