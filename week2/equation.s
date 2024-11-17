.data
y: .word 0          # y (32-bit value)
m: .word 0          # m
L: .word 0          # L
D: .word 0          # D
Z: .word 0          # Z
C: .word 0          # C
x: .word 0          # Result of the expression will be stored here

.text
main:
    # Load values into registers
    lw t0, y        # Load y into t0
    lw t1, m        # Load m into t1
    lw t2, L        # Load L into t2
    lw t3, D        # Load D into t3
    lw t4, Z        # Load Z into t4
    lw t5, C        # Load C into t5

    # Calculate (y + m)
    add t6, t0, t1  # t6 = y + m

    # Calculate (L - D)
    sub t7, t2, t3  # t7 = L - D

    # Calculate (y + m) - (L - D)
    sub t8, t6, t7  # t8 = (y + m) - (L - D)

    # Calculate (Z + C)
    add t9, t4, t5  # t9 = Z + C

    # Calculate (y + m) - (L - D) + (Z + C)
    add t8, t8, t9  # t8 = (y + m) - (L - D) + (Z + C)

    # Calculate the final expression by subtracting D
    sub t8, t8, t3  # t8 = (y + m) - (L - D) + (Z + C) - D

    # Store the result in x
    sw t8, x        # Store result in x

    # Infinite loop to end the program
    loop:
        j loop
