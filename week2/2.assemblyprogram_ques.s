.data
y:  .word 0x10       
m:  .word 0x20       
L:  .word 0x30       
D:  .word 0x40       
Z:  .word 0x50       
C:  .word 0x60       
x:  .word 0x00       # variable to store the result

.text

    la   x10, y        # Load address of y
    lw   x11, 0(x10)   # x11 = y

    la   x10, m        # Load address of m
    lw   x12, 0(x10)   # x12 = m
    add  x13, x11, x12 # x13 = y + m

    la   x10, L        # Load address of L
    lw   x14, 0(x10)   # x14 = L

    la   x10, D        # Load address of D
    lw   x15, 0(x10)   # x15 = D
    sub  x16, x14, x15 # x16 = L - D

    sub  x13, x13, x16 # x13 = (y + m) - (L - D)

    la   x10, Z        # Load address of Z
    lw   x14, 0(x10)   # x14 = Z

    la   x10, C        # Load address of C
    lw   x15, 0(x10)   # x15 = C
    add  x17, x14, x15 # x17 = Z + C

    add  x13, x13, x17 # x13 = ((y + m) - (L - D)) + (Z + C)

    sub  x13, x13, x15 # x13 = (((y + m) - (L - D)) + (Z + C)) - D

    # Store the result in memory (x)
    la   x10, x        # Load address of x
    sw   x13, 0(x10)   # Store result in x
    nop

