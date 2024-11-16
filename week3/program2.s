.data
data:   .byte 0x6        # 4-bit data to encode (e.g., 0x6 = 0110)
.text
    .globl _start

_start:
    # Load 4-bit data
    la a0, data          # Load address of data into a0
    lb a1, 0(a0)         # Load data into a1

    # Extract individual bits of data
    andi a2, a1, 1       # D1 = data[0]
    srli a3, a1, 1
    andi a3, a3, 1       # D2 = data[1]
    srli a4, a1, 2
    andi a4, a4, 1       # D3 = data[2]
    srli a5, a1, 3
    andi a5, a5, 1       # D4 = data[3]

    # Calculate parity bits
    xor t0, a2, a3       # temp = D1 ^ D2
    xor t0, t0, a5       # P1 = temp ^ D4

    xor t1, a2, a4       # temp = D1 ^ D3
    xor t1, t1, a5       # P2 = temp ^ D4

    xor t2, a3, a4       # temp = D2 ^ D3
    xor t2, t2, a5       # P3 = temp ^ D4

    # Combine parity and data bits into the encoded word
    slli t0, t0, 6       # P1 << 6
    slli t1, t1, 5       # P2 << 5
    slli t2, t2, 4       # P3 << 4
    slli a2, a2, 3       # D1 << 3
    slli a3, a3, 2       # D2 << 2
    slli a4, a4, 1       # D3 << 1

    or a0, t0, t1        # Combine P1 and P2
    or a0, a0, t2        # Combine with P3
    or a0, a0, a2        # Add D1
    or a0, a0, a3        # Add D2
    or a0, a0, a4        # Add D3
    or a0, a0, a5        # Add D4

    # Store encoded value in memory or register for further use
    # (encoded value is now in a0)

    # Exit program (for simulation purposes)
    li a7, 10            # Syscall for exit
    ecall
