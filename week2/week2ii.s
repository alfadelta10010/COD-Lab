.data
y:  .word 10          # Value of y
m:  .word 5           # Value of m
L:  .word 20          # Value of L
D:  .word 4           # Value of D
Z:  .word 15          # Value of Z
C:  .word 6           # Value of C
x:  .word 0           # Placeholder for the result of x

.text
.globl _start
_start:
    # Step 1: Load values from memory
    la x1, y           # Load address of y
    lw x2, 0(x1)       # Load y into x2

    la x1, m           # Load address of m
    lw x3, 0(x1)       # Load m into x3

    la x1, L           # Load address of L
    lw x4, 0(x1)       # Load L into x4

    la x1, D           # Load address of D
    lw x5, 0(x1)       # Load D into x5

    la x1, Z           # Load address of Z
    lw x6, 0(x1)       # Load Z into x6

    la x1, C           # Load address of C
    lw x7, 0(x1)       # Load C into x7

    # Step 2: Calculate (y + m)
    add x8, x2, x3     # x8 = y + m

    # Step 3: Calculate (L - D)
    sub x9, x4, x5     # x9 = L - D

    # Step 4: Subtract (L - D) from (y + m)
    sub x10, x8, x9    # x10 = (y + m) - (L - D)

    # Step 5: Calculate (Z + C)
    add x11, x6, x7    # x11 = Z + C

    # Step 6: Add (Z + C) to the result of previous step
    add x12, x10, x11  # x12 = (y + m) - (L - D) + (Z + C)

    # Step 7: Subtract D from the result
    sub x13, x12, x5   # x13 = (y + m) - (L - D) + (Z + C) - D

    # Step 8: Store the result (x) back to memory
    la x1, x           # Load address of x
    sw x13, 0(x1)      # Store the final result in x

    # End program (exit simulation)
    li a7, 10          # Syscall for program termination
    ecall
