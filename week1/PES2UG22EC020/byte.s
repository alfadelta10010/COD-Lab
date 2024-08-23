.data
b: .byte 0x45,0x11             # Define two bytes

.text
la x9, b                       # Load address of 'b' into x9
lbu x11, 0(x9)                 # Load 1st byte into x11 (unsigned)
lbu x12, 1(x9)                 # Load 2nd byte into x12 (unsigned)
add x13, x12, x11              # Add x12 and x11, result in x13
sb x13, 2(x9)                  # Store x13 at b + 2
