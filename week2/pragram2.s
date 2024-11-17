.data
y:  .word 10      # Example value for y
m:  .word 20      # Example value for m
L:  .word 50      # Example value for L
D:  .word 15      # Example value for D
Z:  .word 30      # Example value for Z
C:  .word 25      # Example value for C
x:  .word 0       # Result variable

.text
.globl main
main:
    # Load values into registers
    la t0, y         # Load address of y
    lw t1, 0(t0)     # t1 = y

    la t0, m         # Load address of m
    lw t2, 0(t0)     # t2 = m

    la t0, L         # Load address of L
    lw t3, 0(t0)     # t3 = L

    la t0, D         # Load address of D
    lw t4, 0(t0)     # t4 = D

    la t0, Z         # Load address of Z
    lw t5, 0(t0)     # t5 = Z

    la t0, C         # Load address of C
    lw t6, 0(t0)     # t6 = C

    # -------------------------------
    # Compute intermediate results
    # -------------------------------
    # (y + m)
    add t0, t1, t2     # t0 = y + m

    # (L - D)
    sub t1, t3, t4     # t1 = L - D

    # (Z + C)
    add t2, t5, t6     # t2 = Z + C

    # -------------------------------
    # Combine results for x
    # -------------------------------
    # (y + m) - (L - D)
    sub t3, t0, t1     # t3 = (y + m) - (L - D)

    # (Z + C) - D
    sub t4, t2, t4     # t4 = (Z + C) - D

    # Final x
    add t5, t3, t4     # t5 = (y + m) - (L - D) + (Z + C) - D

    # Store result in x
    la t0, x           # Load address of x
    sw t5, 0(t0)       # Store result in memory

    # Exit program
    li a7, 10          # Load ecall code for exit
    ecall
