.data
y: .word 0x00000005    # Example value for y
m: .word 0x00000003    # Example value for m
L: .word 0x00000008    # Example value for L
D: .word 0x00000002    # Example value for D
Z: .word 0x00000004    # Example value for Z
C: .word 0x00000001    # Example value for C
x: .word 0x00000000    # Allocate space for x

.text
main:
    # Load values into registers
    la x10, y          # Load address of y
    lw x11, 0(x10)     # Load y into x11

    la x10, m          # Load address of m
    lw x12, 0(x10)     # Load m into x12

    la x10, L          # Load address of L
    lw x13, 0(x10)     # Load L into x13

    la x10, D          # Load address of D
    lw x14, 0(x10)     # Load D into x14

    la x10, Z          # Load address of Z
    lw x15, 0(x10)     # Load Z into x15

    la x10, C          # Load address of C
    lw x16, 0(x10)     # Load C into x16

    # Compute y + m
    add x17, x11, x12  # x17 = y + m

    # Compute L - D
    sub x18, x13, x14  # x18 = L - D

    # Compute (y + m) - (L - D)
    sub x19, x17, x18  # x19 = (y + m) - (L - D)

    # Compute Z + C
    add x20, x15, x16  # x20 = Z + C

    # Compute (Z + C) - D
    sub x21, x20, x14  # x21 = (Z + C) - D

    # Compute final result: x = (y + m) - (L - D) + (Z + C) - D
    add x22, x19, x21  # x22 = (y + m) - (L - D) + (Z + C) - D

    # Store result in memory
    la x10, x          # Load address of x
    sw x22, 0(x10)     # Store the result into x

    # Exit
    nop

