# Program 4: Calculating x = (y + m) - (L - D) + (Z + C) - D
    .text
    .globl _start
_start:
    # Load values into registers
    li t0, 10       # y = 10
    li t1, 5        # m = 5
    li t2, 20       # L = 20
    li t3, 8        # D = 8
    li t4, 30       # Z = 30
    li t5, 12       # C = 12

    # Compute (y + m)
    add t6, t0, t1  # t6 = y + m

    # Compute (L - D)
    sub t0, t2, t3  # t0 = L - D

    # Compute (Z + C)
    add t1, t4, t5  # t1 = Z + C

    # Compute (y + m) - (L - D)
    sub t2, t6, t0  # t2 = (y + m) - (L - D)

    # Compute (Z + C) - D
    sub t3, t1, t3  # t3 = (Z + C) - D

    # Final result: x = (y + m) - (L - D) + (Z + C) - D
    add t0, t2, t3  # t0 = x

    # End of program
