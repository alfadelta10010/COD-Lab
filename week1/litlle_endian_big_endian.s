.data 
a: .word 0x12345678   # Original little-endian word

.text
    la x10, a         # Load the address of 'a' into x10
    lw x11, 0(x10)    # Load the word at 'a' into x11 (0x12345678 in little-endian)

    # Convert to big-endian by shifting and masking each byte
    andi x12, x11, 0xFF       # Extract least significant byte (0x78)
    slli x13, x12, 24         # Shift to most significant byte position in big-endian

    srli x11, x11, 8          # Shift right to bring next byte (0x56)
    andi x12, x11, 0xFF       # Extract byte
    slli x12, x12, 16         # Shift to second byte position in big-endian
    or x13, x13, x12          # OR to build up big-endian result

    srli x11, x11, 8          # Shift right to bring next byte (0x34)
    andi x12, x11, 0xFF       # Extract byte
    slli x12, x12, 8          # Shift to third byte position in big-endian
    or x13, x13, x12          # OR to build up big-endian result

    srli x11, x11, 8          # Shift right to bring most significant byte (0x12)
    andi x12, x11, 0xFF       # Extract byte
    or x13, x13, x12          # OR to complete the big-endian result

    sw x13, 4(x10)            # Store the big-endian result at offset 4
