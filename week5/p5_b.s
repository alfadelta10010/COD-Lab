.data
a: .byte 0x11, 0x22, 0x33, 0x44, 0x11
b: .byte 0x11, 0x22, 0x33, 0x44, 0x11
c: .byte 0x11
.text
la x10, a       # Load the address of the array `a` into register x10.
la x11, b       # Load the address of the array `b` into register x11.
la x12, c       # Load the address of the array `c` into register x12.
addi x15, x10, 10 # Calculate the ending index (address after processing 10 bytes).
sw x0, -1(x12)
ll:
    lb x20, 0(x10)  # Load a byte from array `a` into register x20.
    lb x21, 0(x11)  # Load a byte from array `b` into register x21.
    lb x22, -1(x12) # Load a byte from one position before `x12` (invalid access!).
    mul x23, x20, x21 # Multiply the value in x20 with x12 (address of `c`).
    add x24, x23, x22 # Add the result of the multiplication with the byte in x22.
    sw x22, 0(x22) # Store the byte in x22 back into memory at its own location.
    addi x10, x10, 1 # Move to the next byte in `a`.
    addi x11, x11, 1 # Move to the next byte in `b`.
    bne x10, x15, ll # Continue looping until `x10` reaches `x15`.