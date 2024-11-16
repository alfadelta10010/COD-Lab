.data
a: .dword 0xffffffffffffffff, 0xffffffffffffffff  # Two 64-bit numbers (128-bit total)
b: .dword 0x0, 0x0                               # Placeholder for 128-bit result

.text
    la x10, a           # Load address of the first 128-bit number
    la x11, b           # Load address of the resultr
    lw x12, 0(x10)      # Low 32 bits of the first 64-bit number
    lw x13, 4(x10)      # High 32 bits of the first 64-bit number
    lw x14, 8(x10)      # Low 32 bits of the second 64-bit number
    lw x15, 12(x10)     # High 32 bits of the second 64-bit number
    add x16, x12, x14   # Add low words of both 64-bit numbers
    sw x16, 0(x11)      # Store result lower word
    sltu x17, x16, x12  # Check for carry from the low-word addition
    add x18, x13, x15   # Add high words of both 64-bit numbers
    add x18, x18, x17   # Add carry from the low-word addition
    sw x18, 4(x11)      # Store result higher word
