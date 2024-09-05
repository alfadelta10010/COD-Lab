.data
    a: .byte 0x23, 0xff  # Two bytes

.text 
    la x10, a        # Loading the address of a into register x10
    lb x11, 0(x10)    # Loading the word into register x11
    lb x12, 1(x10)    # Loading the word into register x12
    add x13, x11, x12  # Adding the two words in x11 and x12 and then storing the result in x13
    sb x13, 2(x10)   # Storing the result