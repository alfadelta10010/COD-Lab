.data
message: .word 0b1101       # New 4-bit input message (D4 = 1, D3 = 1, D2 = 0, D1 = 1)
encoded: .word 0            # Output: 7-bit Hamming encoded message
.text
    la x5, message
    lw x6, 0(x5)           # x6 = D4 D3 D2 D1
    # Extract each data bit from x6
    andi x7, x6, 1         # D1 (LSB)
    srli x6, x6, 1
    andi x8, x6, 1         # D2
    srli x6, x6, 1
    andi x9, x6, 1         # D3
    srli x6, x6, 1
    andi x10, x6, 1        # D4
    # Compute parity bits  
    xor x11, x7, x8        # x11 = D1 ^ D2
    xor x11, x11, x10      # x11 = D1 ^ D2 ^ D4  # P1 = D1 ^ D2 ^ D4
    xor x12, x7, x9        # x12 = D1 ^ D3
    xor x12, x12, x10      # x12 = D1 ^ D3 ^ D4  # P2 = D1 ^ D3 ^ D4
    xor x13, x8, x9        # x13 = D2 ^ D3
    xor x13, x13, x10      # x13 = D2 ^ D3 ^ D4   # P4 = D2 ^ D3 ^ D4
   # Construct the encoded 7-bit number   # Format: P1 P2 D1 P4 D2 D3 D4
    li x14, 0              # x14 will store the encoded result
    slli x14, x11, 6       # P1
    or x14, x14, x12       # P2
    slli x14, x14, 1
    or x14, x14, x7        # D1
    slli x14, x14, 1
    or x14, x14, x13       # P4
    slli x14, x14, 1
    or x14, x14, x8        # D2
    slli x14, x14, 1
    or x14, x14, x9        # D3
    slli x14, x14, 1
    or x14, x14, x10       # D4
    la x5, encoded
    sw x14, 0(x5)   # Store the encoded 7-bit number in memory
