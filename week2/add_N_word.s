.data
c: .word 0x00000045, 0x00000021   # Two 32-bit word values stored in 'c'

.text
la x10, c           # Load address of 'c' into x10
lw x11, 0(x10)      # Load the first 32-bit word (0x00000045) into x11
lw x12, 4(x10)      # Load the second 32-bit word (0x00000021) into x12
add x13, x11, x12   # Add the two 32-bit words, store result in x13
sw x13, 8(x10)      # Store the result at the address c+8 (3rd word location)
