.data
a: .word 0x12345678  # Define a word in memory with the value 0x12345678

.text
la x10, a # Load the address of 'a' into register x10
lw x11, 0(x10)  # Load the word at address x10 (which points to 'a') into x11
addi x12, x0, 3 # Load the value 3 into register x12

back:
    andi x13, x11, 0xFF  # Extract the least significant byte of x11 and store in x13(0xFF for masking)
    add x14, x14, x13    # Add the value in x13 to x14
    slli x14, x14, 8     # Shift the value in x14 left by 8 bits (multiply by 256)
    srli x11, x11, 8     # Shift the value in x11 right by 8 bits (discard least significant byte)
    addi x12, x12, -1    # Decrement x12 by 1
     # chumma
     
bnez x12, back  # If x12 is not zero, jump back to label 'back'
andi x15, x11, 0xFF  # Extract the least significant byte of x11 and store in x15
add x15, x14, x15 # Add the value in x15 to x14, store result in x15