.data
a: .half 0x0210, 0x1101         # Define two halfwords

.text
la x10, a                       # Load address of 'a' into x10
lhu x11, 0(x10)                 # Load 1st halfword into x11 (unsigned)
lhu x12, 2(x10)                 # Load 2nd halfword into x12 (unsigned)
add x13, x12, x11               # Add x12 and x11, result in x13
sh x13, 4(x10)                  # Store x13 at a + 4
