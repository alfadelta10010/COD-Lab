.data
n:      .word 0x93793166, 0x88748371, 0x86602820, 0x00000002  # Split original 64-bit values
result: .word 0, 0, 0                # Define space for 3 results (32-bit each)

.text
la x4, n           # Load the address of 'n' into x4
lw x10, 0(x4)      # Load first 32-bit word into x10 (lower part of first number)
lw x11, 4(x4)      # Load second 32-bit word into x11 (higher part of first number)
lw x12, 8(x4)      # Load third 32-bit word into x12 (lower part of second number)
lw x13, 12(x4)     # Load fourth 32-bit word into x13 (higher part of second number)

# 32-bit addition
add x14, x10, x12  # Add lower parts
sltu x15, x14, x10 # Check for carry (unsigned comparison)
add x16, x11, x13  # Add higher parts
add x16, x16, x15  # Add carry to higher parts

# Store results
la x21, result     # Load address of 'result'
sw x14, 0(x21)     # Store lower part of the result
sw x16, 4(x21)     # Store higher part of the result
