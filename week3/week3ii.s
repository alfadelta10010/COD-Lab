.data
    data_word: .word 0xA      # Example 4-bit data: 0xA = 1010 in binary

.text
.globl _start
_start:
    # Load the 4-bit data word (e.g., 1010) from the data_word label
    la   x10, data_word         # Load the address of data_word
    lw   x11, 0(x10)            # Load the 4-bit data into x11 (x11 = 0xA = 1010)
    
    # Initialize the parity bits (p1, p2, p4) to zero
    li   x12, 0                 # p1 = 0
    li   x13, 0                 # p2 = 0
    li   x14, 0                 # p4 = 0

    # Extract the individual data bits (d3, d2, d1, d0)
    andi x15, x11, 0x8         # x15 = d3 (extract most significant bit)
    srli x15, x15, 3            # Shift d3 to the least significant bit

    andi x16, x11, 0x4         # x16 = d2
    srli x16, x16, 2            # Shift d2 to the least significant bit

    andi x17, x11, 0x2         # x17 = d1
    srli x17, x17, 1            # Shift d1 to the least significant bit

    andi x18, x11, 0x1         # x18 = d0

    # Calculate parity bit p1 (parity for positions 1, 3, 5, 7)
    xor  x12, x12, x15          # p1 = p1 ^ d3
    xor  x12, x12, x17          # p1 = p1 ^ d1
    xor  x12, x12, x18          # p1 = p1 ^ d0

    # Calculate parity bit p2 (parity for positions 2, 3, 6, 7)
    xor  x13, x13, x16          # p2 = p2 ^ d2
    xor  x13, x13, x17          # p2 = p2 ^ d1
    xor  x13, x13, x18          # p2 = p2 ^ d0

    # Calculate parity bit p4 (parity for positions 4, 5, 6, 7)
    xor  x14, x14, x15          # p4 = p4 ^ d3
    xor  x14, x14, x16          # p4 = p4 ^ d2
    xor  x14, x14, x18          # p4 = p4 ^ d0

    # Assemble the final Hamming code (p1 p2 d3 p4 d2 d1 d0)
    # Shift p1, p2, p4 into the appropriate positions
    li   x19, 0                 # Clear x19 (holds the final 7-bit code)
    or   x19, x19, x12          # Set p1
    slli x19, x19, 1            # Shift left to make room for p2
    or   x19, x19, x13          # Set p2
    slli x19, x19, 1            # Shift left to make room for d3
    or   x19, x19, x15          # Set d3
    slli x19, x19, 1            # Shift left to make room for p4
    or   x19, x19, x14          # Set p4
    slli x19, x19, 1            # Shift left to make room for d2
    or   x19, x19, x16          # Set d2
    slli x19, x19, 1            # Shift left to make room for d1
    or   x19, x19, x17          # Set d1
    slli x19, x19, 1            # Shift left to make room for d0
    or   x19, x19, x18          # Set d0

    # The final Hamming code is now in x19 (7-bit value)
    # For example, if input was 1010, final value should be 1001010 (0x4A)
    
    # Exit the program (exit system call)
    li   x10, 10                # Load exit syscall number (10)
    ecall                       # Make the syscall to exit
