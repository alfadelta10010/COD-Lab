.data
input:  .byte 0b1101     # Input 4-bit data (d1=1, d2=1, d3=0, d4=1)
output: .space 4          # Space to store the Hamming code (7 bits)

.text
main:
    la x10, input         # Load address of the input data
    lb x11, 0(x10)        # Load the 4-bit data into x11

    # Extract individual data bits
    andi x12, x11, 0x1    # d1 = x11 & 0x1 (Least significant bit)
    srli x13, x11, 1
    andi x13, x13, 0x1    # d2 = (x11 >> 1) & 0x1
    srli x14, x11, 2
    andi x14, x14, 0x1    # d3 = (x11 >> 2) & 0x1
    srli x15, x11, 3
    andi x15, x15, 0x1    # d4 = (x11 >> 3) & 0x1

    # Calculate parity bits
    xor x16, x12, x13     # p1 = d1 ^ d2
    xor x16, x16, x15     # p1 = p1 ^ d4
    xor x17, x12, x14     # p2 = d1 ^ d3
    xor x17, x17, x15     # p2 = p2 ^ d4
    xor x18, x13, x14     # p3 = d2 ^ d3
    xor x18, x18, x15     # p3 = p3 ^ d4

    # Combine the Hamming code (p1, p2, d1, p3, d2, d3, d4)
    slli x19, x18, 3      # p3 << 3
    or x19, x19, x14      # Add d3
    slli x19, x19, 1
    or x19, x19, x13      # Add d2
    slli x19, x19, 1
    or x19, x19, x17      # Add p2
    slli x19, x19, 1
    or x19, x19, x12      # Add d1
    slli x19, x19, 1
    or x19, x19, x16      # Add p1

    # Store the result in output
    la x20, output
    sw x19, 0(x20)        # Store the Hamming code

    # End program
    nop

