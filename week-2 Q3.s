.data
a: .dword 0x8000123400001234, 0x9000012300001235  # Two 64-bit numbers

.text
la x1, a   # Load the address of 'a' into x1
lw x9, 0(x1)   # Load lower 32 bits of the first 64-bit number into x9
lw x18, 8(x1)  # Load lower 32 bits of the second 64-bit number into x18
add x19, x9, x18   # Add lower 32 bits (x9 + x18), result in x19
sltu x20, x19, x18        
sw x20, 16(x1)  # Store the carry at a memory
lw x9, 4(x1)   # Load upper 32 bits of the first 64-bit number into x9
lw x18, 12(x1) # Load upper 32 bits of the second 64-bit number into x18
add x21, x18, x20  # Add carry (x20) to the upper 32 bits of the second number
add x22, x9, x21   # Add upper 32 bits of both numbers (with carry), result in x22
sltu x24, x22, x21   # Set x24 to 1 if carry occurred from upper 32-bit addition
sw x24,12(x8)
  