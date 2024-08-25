#Write an assembly program to add 2 64-bit numbers.
.data
a: .dword 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0  # Define two 64-bit unsigned numbers

.text
la x1, a                                     # Load base address of 'a' into 'x1'
lw x2, 0(x1)                                 # Load lower 32 bits of first 64-bit number into x2
lw x3, 4(x1)                                 # Load upper 32 bits of first 64-bit number into x3
lw x4, 8(x1)                                 # Load lower 32 bits of second 64-bit number into x4
lw x5, 12(x1)                                # Load upper 32 bits of second 64-bit number into x5

add x6, x2, x4                                 #Add the lower 32 bits of both numbers. x6=x2+x4
sltu x7, x6, x2                                # Set x7 = 1 if there is a carry from the lower 32-bit addition
                                               # Carry is detected if the result (x7) is less than the first operand (x2)
add x8, x3, x5                                 #adding the upper 32 bits of both numbers (x8 = x3 + x5)
sltu x9, x8, x3                                # Set x9 = 1;if there is a carry from the upper 32-bit addition

add x10, x8, x7                                # Add the carry (x5) from lower 32-bit addition to the upper 32-bit sum
sltu x11, x10, x8                              # Set x11 = 1 if there is a carry from the second 32-bit addition

sw x15, 16(x10)                                # Store the lower 32-bit result (x15) in memory at offset value 16
sw x17, 20(x10)                                # Store the upper 32-bit result (x17) in memory at offset value 20

sw x18, 24(x10)                                # Store the carry (x18) in memory at offset value 24