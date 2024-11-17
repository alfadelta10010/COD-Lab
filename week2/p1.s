.data
num1_word:      .word 0x00000005        
num2_word:      .word 0x00000003    

num1_half:      .half 0x0100              
num2_half:      .half 0x0150           

num1_byte:      .byte 0x10           
num2_byte:      .byte 0x20               

.text

    la x5, num1_word            # Load address of num1_word into x5
    lw x6, 0(x5)                # Load the first word into x6
    la x7, num2_word            # Load address of num2_word into x7
    lw x8, 0(x7)                # Load the second word into x8
    add x9, x6, x8              # Add the two words (x6 + x8)

    la x5, num1_half            # Load address of num1_half into x5
    lh x6, 0(x5)                # Load the first half-word (signed) into x6
    la x7, num2_half            # Load address of num2_half into x7
    lh x8, 0(x7)                # Load the second half-word (signed) into x8
    add x10, x6, x8              # Add the two half-words (x6 + x8)

    la x5, num1_byte            # Load address of num1_byte into x5
    lb x6, 0(x5)                # Load the first byte (signed) into x6
    la x7, num2_byte            # Load address of num2_byte into x7
    lb x8, 0(x7)                # Load the second byte (signed) into x8
    add x11, x6, x8              # Add the two bytes (x6 + x8)
nop
