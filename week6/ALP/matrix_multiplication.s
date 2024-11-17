.data
A:  .word 1, 2, 3, 4     # Matrix A (2x2)
B:  .word 5, 6, 7, 8     # Matrix B (2x2)
C:  .word 0, 0, 0, 0     # Matrix C (2x2) initialized to zero

.text

    # Load Matrix A into registers
    la x1, A          # Load address of A into x1
    lw x2, 0(x1)      # x2 = A[0,0]
    lw x3, 4(x1)      # x3 = A[0,1]
    lw x4, 8(x1)      # x4 = A[1,0]
    lw x5, 12(x1)     # x5 = A[1,1]

    # Load Matrix B into registers
    la x6, B          # Load address of B into x6
    lw x7, 0(x6)      # x7 = B[0,0]
    lw x8, 4(x6)      # x8 = B[0,1]
    lw x9, 8(x6)      # x9 = B[1,0]
    lw x10, 12(x6)    # x10 = B[1,1]

    # Calculate C[0,0] = A[0,0]*B[0,0] + A[0,1]*B[1,0]
    mul x11, x2, x7   # x11 = A[0,0] * B[0,0]
    mul x12, x3, x9   # x12 = A[0,1] * B[1,0]
    add x13, x11, x12 # x13 = C[0,0] = x11 + x12
    la x14, C         # Load address of C into x14
    sw x13, 0(x14)    # Store C[0,0] into memory

    # Calculate C[0,1] = A[0,0]*B[0,1] + A[0,1]*B[1,1]
    mul x11, x2, x8   # x11 = A[0,0] * B[0,1]
    mul x12, x3, x10  # x12 = A[0,1] * B[1,1]
    add x13, x11, x12 # x13 = C[0,1] = x11 + x12
    sw x13, 4(x14)    # Store C[0,1] into memory

    # Calculate C[1,0] = A[1,0]*B[0,0] + A[1,1]*B[1,0]
    mul x11, x4, x7   # x11 = A[1,0] * B[0,0]
    mul x12, x5, x9   # x12 = A[1,1] * B[1,0]
    add x13, x11, x12 # x13 = C[1,0] = x11 + x12
    sw x13, 8(x14)    # Store C[1,0] into memory

    # Calculate C[1,1] = A[1,0]*B[0,1] + A[1,1]*B[1,1]
    mul x11, x4, x8   # x11 = A[1,0] * B[0,1]
    mul x12, x5, x10  # x12 = A[1,1] * B[1,1]
    add x13, x11, x12 # x13 = C[1,1] = x11 + x12
    sw x13, 12(x14)   # Store C[1,1] into memory