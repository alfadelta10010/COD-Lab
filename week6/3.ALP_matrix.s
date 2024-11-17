#matrix
.data
    # Matrix A (2x3)
    A:  .word 1, 2, 3
        .word 4, 5, 6

    # Matrix B (3x2)
    B:  .word 7, 8
        .word 9, 10
        .word 11, 12

    # Matrix C (2x2) for result (initialized to 0)
    C:  .word 0, 0
        .word 0, 0

    # Matrix dimensions
    M:  .word 2  # Number of rows in A
    N:  .word 3  # Number of columns in A, and rows in B
    P:  .word 2  # Number of columns in B

.text
_start:
    # Load dimensions of matrices
    la   x10, M        # Address of M (rows of A)
    lw   x10, 0(x10)   # Load M (rows of A) into x10

    la   x11, N        # Address of N (columns of A and rows of B)
    lw   x11, 0(x11)   # Load N (columns of A) into x11

    la   x12, P        # Address of P (columns of B)
    lw   x12, 0(x12)   # Load P (columns of B) into x12

    # Load address of matrices A, B, C
    la   x13, A        # Load address of matrix A
    la   x14, B        # Load address of matrix B
    la   x15, C        # Load address of matrix C

    # Outer loop for rows of A (i loop)
    li   x16, 0        # Initialize i = 0 (x16 = i)
outer_loop:
    bge  x16, x10, end_outer # If i >= M, exit outer loop

    # Middle loop for columns of B (j loop)
    li   x17, 0        # Initialize j = 0 (x17 = j)
middle_loop:
    bge  x17, x12, end_middle # If j >= P, exit middle loop

    # Initialize sum = 0 (x18 = sum)
    li   x18, 0        # sum = 0 (x18 = sum)

    # Inner loop for summation (k loop)
    li   x19, 0        # Initialize k = 0 (x19 = k)
inner_loop:
    bge  x19, x11, end_inner # If k >= N, exit inner loop

    # Load A[i][k] into x20
    slli x21, x16, 2       # i * 4 (to get the byte offset for row i of A)
    add  x21, x21, x19     # Add k to get A[i][k]
    add  x21, x21, x13     # Add the base address of A
    lw   x20, 0(x21)       # Load A[i][k] into x20

    # Load B[k][j] into x22
    slli x23, x19, 2       # k * 4 (to get the byte offset for row k of B)
    add  x23, x23, x17     # Add j to get B[k][j]
    add  x23, x23, x14     # Add the base address of B
    lw   x22, 0(x23)       # Load B[k][j] into x22

    # Multiply A[i][k] by B[k][j] and accumulate to sum
    mul  x24, x20, x22     # x24 = A[i][k] * B[k][j]
    add  x18, x18, x24     # sum += x24

    # Increment k and repeat the inner loop
    addi x19, x19, 1
    j    inner_loop

end_inner:
    # Store sum in C[i][j]
    slli x25, x16, 2       # i * 4 (to get the byte offset for row i of C)
    add  x25, x25, x17     # Add j to get C[i][j]
    add  x25, x25, x15     # Add the base address of C
    sw   x18, 0(x25)       # Store sum in C[i][j]

    # Increment j and repeat the middle loop
    addi x17, x17, 1
    j    middle_loop

end_middle:
    # Increment i and repeat the outer loop
    addi x16, x16, 1
    j    outer_loop

end_outer:
    # End of matrix multiplication
    nop                 # No operation (end of program)
