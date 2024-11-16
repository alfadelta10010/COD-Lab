# Write an assembly program to do matrix multiplication

.data
N: .word 3                       # Size of the matrices (3x3)
A: .word 1, 2, 3                 # Matrix A
B: .word 4, 5, 6                 # Matrix B
C: .word 0, 0, 0                 # Matrix C initialized to zero

.text
.globl main

main:
    lw t0, N                     # Load N into t0 (size of matrices)
    li t1, 0                     # Initialize i = 0 (row index for C)

outer_loop:
    bge t1, t0, end_outer        # If i >= N, exit outer loop
    li t2, 0                     # Initialize j = 0 (column index for C)

inner_loop:
    bge t2, t0, end_inner        # If j >= N, exit inner loop
    li t3, 0                     # Initialize k = 0 (for dot product)
    li t4, 0                     # Initialize sum = 0

k_loop:
    bge t3, t0, store_result      # If k >= N, store the result

    # Load A[i][k]
    slli t5, t1, 2               # Calculate offset for row i in A (i * sizeof(int))
    add t5, t5, t3                # Add k to get A[i][k]
    lw t6, A(t5)                  # Load A[i][k] into t6

    # Load B[k][j]
    slli t5, t3, 2                # Calculate offset for row k in B (k * sizeof(int))
    add t5, t5, t2                # Add j to get B[k][j]
    lw t5, B(t5)                  # Load B[k][j] into t5

    mul t5, t6, t5                # Multiply A[i][k] * B[k][j]
    add t4, t4, t5                # sum += A[i][k] * B[k][j]

    addi t3, t3, 1                # Increment k
    j k_loop                      # Repeat k loop

store_result:
    slli t5, t1, 2               # Calculate offset for row i in C (i * sizeof(int))
    addi t5, t5, (t2 << 2)        # Add j * sizeof(int) to get C[i][j]
    sw t4, C(t5)                  # Store sum in C[i][j]

    addi t2, t2, 1                # Increment j
    j inner_loop                  # Repeat inner loop

end_inner:
    addi t1, t1, 1                # Increment i
    j outer_loop                  # Repeat outer loop

end_outer:
    li a7, 10                     # Load exit syscall number
    ecall                         # Exit program