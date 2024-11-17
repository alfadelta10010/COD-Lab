    .data
y:  .word 10         # Value of y
m:  .word 20         # Value of m
L:  .word 30         # Value of L
D:  .word 5          # Value of D
Z:  .word 40         # Value of Z
C:  .word 25         # Value of C
x:  .word 0          # Result stored here

    .text
    .globl main

main:
    # Step 1: Load y and m into registers and calculate y + m
    lw t0, y          # Load y into t0
    lw t1, m          # Load m into t1
    add t0, t0, t1    # t0 = y + m

    # Step 2: Load L and D, and calculate L - D
    lw t2, L          # Load L into t2
    lw t3, D          # Load D into t3
    sub t2, t2, t3    # t2 = L - D

    # Step 3: Subtract (L - D) from (y + m)
    sub t0, t0, t2    # t0 = (y + m) - (L - D)

    # Step 4: Load Z and C, and calculate Z + C
    lw t4, Z          # Load Z into t4
    lw t5, C          # Load C into t5
    add t4, t4, t5    # t4 = Z + C

    # Step 5: Add (Z + C) to the result
    add t0, t0, t4    # t0 = (y + m) - (L - D) + (Z + C)

    # Step 6: Subtract D from the result
    sub t0, t0, t3    # t0 = (y + m) - (L - D) + (Z + C) - D

    # Step 7: Store the result in x
    la t1, x          # Load the address of x into t1
    sw t0, 0(t1)      # Store the value of t0 at the memory address in t1

    # Exit the program
    li a7, 10         # ecall code for exit
    ecall
