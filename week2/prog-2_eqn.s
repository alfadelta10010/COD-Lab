.data
y:  .word 10       # Value of y
m:  .word 20       # Value of m
L:  .word 50       # Value of L
D:  .word 35      # Value of D
Z:  .word 30       # Value of Z
C:  .word 15      # Value of C
x:  .word 0        # Result (x), initialized to 0

.text
    # Load variables from memory into registers
    la x5, y         # Load address of y
    lw x6, 0(x5)     # Load value of y into x6

    la x5, m         # Load address of m
    lw x7, 0(x5)     # Load value of m into x7

    la x5, L         # Load address of L
    lw x8, 0(x5)     # Load value of L into x8

    la x5, D         # Load address of D
    lw x9, 0(x5)     # Load value of D into x9

    la x5, Z         # Load address of Z
    lw x10, 0(x5)    # Load value of Z into x10

    la x5, C         # Load address of C
    lw x11, 0(x5)    # Load value of C into x11

    # Calculate (y + m)
    add x12, x6, x7  # x12 = y + m

    # Calculate (L - D)
    sub x13, x8, x9  # x13 = L - D

    # Calculate (y + m) - (L - D)
    sub x14, x12, x13 # x14 = (y + m) - (L - D)

    # Calculate (Z + C)
    add x15, x10, x11 # x15 = Z + C

    # Add (Z + C) to the previous result
    add x16, x14, x15 # x16 = (y + m) - (L - D) + (Z + C)

    # Subtract D
    sub x17, x16, x9  # x17 = (y + m) - (L - D) + (Z + C) - D

    # Store the result (x)
    la x5, x          # Load address of x
    sw x17, 0(x5)     # Store the result in memory

