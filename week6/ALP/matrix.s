.data
A:  .word 1, 2, 3, 4      # Matrix A: 1 2 / 3 4
B:  .word 5, 6, 7, 8      # Matrix B: 5 6 / 7 8
C:  .word 16             # Result matrix C (2x2), 4 words (each 4 bytes)

.text
    # Load matrix A elements
    la x5, A            # Load address of A into x5
    lw x6, 0(x5)        # Load A[0][0] into x6 (1)
    lw x7, 4(x5)        # Load A[0][1] into x7 (2)
    lw x8, 8(x5)        # Load A[1][0] into x8 (3)
    lw x9, 12(x5)       # Load A[1][1] into x9 (4)

    # Load matrix B elements
    la x10, B           # Load address of B into x10
    lw x11, 0(x10)      # Load B[0][0] into x11 (5)
    lw x12, 4(x10)      # Load B[0][1] into x12 (6)
    lw x13, 8(x10)      # Load B[1][0] into x13 (7)
    lw x14, 12(x10)     # Load B[1][1] into x14 (8)

    # Matrix multiplication C[0][0] = A[0][0]*B[0][0] + A[0][1]*B[1][0]
    mul x15, x6, x11    # x15 = A[0][0] * B[0][0] (1 * 5 = 5)
    mul x16, x7, x13    # x16 = A[0][1] * B[1][0] (2 * 7 = 14)
    add x17, x15, x16   # C[0][0] = 5 + 14 = 19
    la x18, C           # Load address of C into x18
    sw x17, 0(x18)      # Store C[0][0] = 19 in C

    # Matrix multiplication C[0][1] = A[0][0]*B[0][1] + A[0][1]*B[1][1]
    mul x15, x6, x12    # x15 = A[0][0] * B[0][1] (1 * 6 = 6)
    mul x16, x7, x14    # x16 = A[0][1] * B[1][1] (2 * 8 = 16)
    add x17, x15, x16   # C[0][1] = 6 + 16 = 22
    sw x17, 4(x18)      # Store C[0][1] = 22 in C

    # Matrix multiplication C[1][0] = A[1][0]*B[0][0] + A[1][1]*B[1][0]
    mul x15, x8, x11    # x15 = A[1][0] * B[0][0] (3 * 5 = 15)
    mul x16, x9, x13    # x16 = A[1][1] * B[1][0] (4 * 7 = 28)
    add x17, x15, x16   # C[1][0] = 15 + 28 = 43
    sw x17, 8(x18)      # Store C[1][0] = 43 in C

    # Matrix multiplication C[1][1] = A[1][0]*B[0][1] + A[1][1]*B[1][1]
    mul x15, x8, x12    # x15 = A[1][0] * B[0][1] (3 * 6 = 18)
    mul x16, x9, x14    # x16 = A[1][1] * B[1][1] (4 * 8 = 32)
    add x17, x15, x16   # C[1][1] = 18 + 32 = 50
    sw x17, 12(x18)     # Store C[1][1] = 50 in C

exit:
    nop

