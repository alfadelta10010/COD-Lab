     .data
y:  .word 0          # Declare y (initialize with 0)
m:  .word 0          # Declare m (initialize with 0)
L:  .word 0          # Declare L (initialize with 0)
D:  .word 0          # Declare D (initialize with 0)
Z:  .word 0          # Declare Z (initialize with 0)
C:  .word 0          # Declare C (initialize with 0)

    .text
    


    # Load values from data section into registers
    lw   t0, y         # Load y into t0
    lw   t1, m         # Load m into t1
    lw   t2, L         # Load L into t2
    lw   t3, D         # Load D into t3
    lw   t4, Z         # Load Z into t4
    lw   t5, C         # Load C into t5

    # Compute (y + m) and store in t6
    add  t6, t0, t1    # t6 = y + m

    # Compute (L - D) and store in t7
    sub  x7, t2, t3    # t7 = L - D

    # Compute (Z + C) and store in t8
    add  x8, t4, t5    # t8 = Z + C

    # Compute the final expression (y + m) - (L - D) + (Z + C) - D
    sub  x9, t6, x7    # t9 = (y + m) - (L - D)
    add  x9, x9, x8    # t9 = (y + m) - (L - D) + (Z + C)
    sub  x9, x9, x3    # t9 = (y + m) - (L - D) + (Z + C) - D

    # Store the result in x (x = t9)
    sw   x9, 0(x9)         # Store the result in the address of x

   
