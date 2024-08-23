.data
a: .word 0x80000002, 0x9123456A # Define two words

.text
la x10, a                       # Load address of 'a' into x10
lw x11, 0(x10)                  # Load 1st word into x11
lw x12, 4(x10)                  # Load 2nd word into x12
add x13, x11, x12               # Add x11 and x12, result in x13
sw x13, 8(x10)                  # Store x13 at a + 8
