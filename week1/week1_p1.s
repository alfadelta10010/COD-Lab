
.data
    a: .word 0xffff1234, 0x00000123  # Two 32-bit words

.text 
    la x10, a        # Loading the address of a into register x10
    lw x11, 0(x10)    # Loading the word (0x80001234) into register x11
    lw x12, 4(x10)    # Loading the word (0x90000123) into register x12
    add x13, x11, x12  # Adding the two words in x11 and x12 and then storing the result in x13
    sw x13, 8(x10)   # Storing the result
