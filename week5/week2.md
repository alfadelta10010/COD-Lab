week2
a.
.data
array: .word 5, 10, 15, 20, 25  # Array of N words

.text


    la x1, array        # Load the address of the array into a0
    lw x2, 0(a0)        # Load array[0] into a1
    lw x3, 4(a0)        # Load array[1] into a2
    lw x4, 8(a0)        # Load array[2] into a3
    lw x5, 12(a0)       # Load array[3] into a4
    lw x6, 16(a0)       # Load array[4] into a5

    # Perform the additions using only registers
    add x7, x2, x3     # a1 = array[0] + array[1]
    add x8, x7, x4      # a1 = a1 + array[2]
    add x9, x8, x5     # a1 = a1 + array[3]
    add x10, x9, x6      # a1 = a1 + array[4]

    
b.
.data
array: .half 5, 10, 15, 20, 25  # Array of N half-words

.text

main:
    la x1, array        # Load the base address of the array into a0

    # Load half-words into registers
    lh x11, 0(x1)        # Load array[0] (half-word) into a1
    lh x12, 2(x1)        # Load array[1] (half-word) into a2
    lh x13, 4(x1)        # Load array[2] (half-word) into a3
    lh x14, 6(x1)        # Load array[3] (half-word) into a4
    lh x15, 8(x1)        # Load array[4] (half-word) into a5

    # Perform the additions using only registers
    add x11, x11, x12      # a1 = array[0] + array[1]
    add x16, x11, x13      # a1 = a1 + array[2]
    add x17, x16, x14      # a1 = a1 + array[3]
    add x18, x17, x15      # a1 = a1 + array[4]

    c.
.data
array_bytes: .byte 1, 2, 3, 4, 5  # Array of N bytes

.text

main:
    la x10, array_bytes  # Load the base address of the array into a0

    # Load bytes into registers and sum them
    lb x1, 0(x10)        # Load array[0] into a1
    lb x2, 1(x10)        # Load array[1] into a2
    lb x3, 2(x10)        # Load array[2] into a3
    lb x4, 3(x10)        # Load array[3] into a4
    lb x5, 4(x10)        # Load array[4] into a5

    # Perform the additions using only registers
    add x6, x1, x2     # a1 = array[0] + array[1]
    add x7, x6, x3      # a1 = a1 + array[2]
    add x8, x7, x4      # a1 = a1 + array[3]
    add x9, x8, x5      # a1 = a1 + array[4]



   d.
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

   

