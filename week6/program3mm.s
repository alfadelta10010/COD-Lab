.data
A:  .word 1, 2, 3, 4      # Matrix A (2x2)
B:  .word 5, 6, 7, 8      # Matrix B (2x2)
C:  .word 0, 0, 0, 0      # Matrix C (Resultant matrix initialized to 0)

.text
    la x5, A           
    la x6, B               
    la x7, C               

    # Matrix multiplication:
    # C[0,0] = A[0,0]*B[0,0] + A[0,1]*B[1,0]
    lw x8, 0(x5)         
    lw x9, 4(x5)       
    lw x10, 0(x6)          
    lw x11, 4(x6)          
    mul x12, x8, x10       # Multiply A[0,0] * B[0,0]
    mul x13, x9, x11       # Multiply A[0,1] * B[1,0]
    add x14, x12, x13      # Add the results to get C[0,0]
    sw x14, 0(x7)          # Store the result in C[0,0]

    # C[0,1] = A[0,0]*B[0,1] + A[0,1]*B[1,1]
    lw x8, 0(x5)           # Reload A[0,0] into x8
    lw x9, 4(x5)           # Reload A[0,1] into x9
    lw x10, 4(x6)          # Load B[0,1] into x10
    lw x11, 8(x6)          # Load B[1,1] into x11
    mul x12, x8, x10       # Multiply A[0,0] * B[0,1]
    mul x13, x9, x11       # Multiply A[0,1] * B[1,1]
    add x14, x12, x13      # Add the results to get C[0,1]
    sw x14, 4(x7)          # Store the result in C[0,1]

    # C[1,0] = A[1,0]*B[0,0] + A[1,1]*B[1,0]
    lw x8, 8(x5)           # Load A[1,0] into x8
    lw x9, 12(x5)          # Load A[1,1] into x9
    lw x10, 0(x6)          # Load B[0,0] into x10
    lw x11, 4(x6)          # Load B[1,0] into x11
    mul x12, x8, x10       # Multiply A[1,0] * B[0,0]
    mul x13, x9, x11       # Multiply A[1,1] * B[1,0]
    add x14, x12, x13      # Add the results to get C[1,0]
    sw x14, 8(x7)          # Store the result in C[1,0]

    # C[1,1] = A[1,0]*B[0,1] + A[1,1]*B[1,1]
    lw x8, 8(x5)           # Reload A[1,0] into x8
    lw x9, 12(x5)          # Reload A[1,1] into x9
    lw x10, 4(x6)          # Load B[0,1] into x10
    lw x11, 8(x6)          # Load B[1,1] into x11
    mul x12, x8, x10       # Multiply A[1,0] * B[0,1]
    mul x13, x9, x11       # Multiply A[1,1] * B[1,1]
    add x14, x12, x13      # Add the results to get C[1,1]
    sw x14, 12(x7)         # Store the result in C[1,1]
exit:
     nop
