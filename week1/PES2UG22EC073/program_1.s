#write a program to add -3 with +1

.data
a: .byte 0xFD, 0x01, 0    # Define a data block with 8-bit values (bytes)
                          # 0xFD (signed: -3), 0x01 (signed: +1), and 0

.text
# Load the base address of the array 'a' into register x10
la x10, a                 # Load address of 'a' into register x10

# Load the first byte (signed) from memory into x11
lb x11, 0(x10)            # Load signed byte at offset 0 (0xFD) into x11
                          # x11 = 0xFD (signed: -3)

# Load the second byte (signed) from memory into x12
lb x12, 1(x10)            # Load signed byte at offset 1 (0x01) into x12
                          # x12 = 0x01 (signed: +1)

# Add the two signed 8-bit numbers in x11 and x12, store the result in x13
add x13, x11, x12         # x13 = x11 + x12 (signed addition: -3 + 1 = -2)

# Store the result (x13) back into memory as a byte at offset 2 (a[2])
sb x13, 2(x10)            # Store signed byte from x13 into memory at offset 2
                          # Result stored in 'a[2]' will be 0xFE (signed: -2)
