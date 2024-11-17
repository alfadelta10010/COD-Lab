    .data
words:      .word 5, 10, 15, 20, 25    # Array of 5 words (32-bit)
halfwords:  .half 100, 200, 300, 400, 500  # Array of 5 half-words (16-bit)
bytes:      .byte 1, 2, 3, 4, 5       # Array of 5 bytes (8-bit)

n:          .word 5                   # Number of elements (N)
    .data
result_word:  .word 0               # To store the result of word addition
result_halfword: .half 0            # To store the result of half-word addition
result_byte: .byte 0                # To store the result of byte addition

    .text
    li x5, 0                    # Initialize sum to 0 (for words, half-words, and bytes)
    la x6, n                    # Load address of N
    lw x7, 0(x6)                # Load the value of N into x7 (N = 5)
    
    # Addition of N Words (32-bit)
    la x8, words                # Load address of words array into x8
    li x9, 0                    # Initialize sum of words (32-bit) to 0

word_addition_loop:
    lw x10, 0(x8)               # Load word from address x8
    add x9, x9, x10             # Add the word to the sum
    addi x8, x8, 4              # Move to the next word (4 bytes)
    addi x7, x7, -1             # Decrement N
    bnez x7, word_addition_loop # Repeat until N = 0
    
    # Store the result of word addition
    la x6, result_word          # Store the result in result_word
    sw x9, 0(x6)

    # Reset N and x7
    la x6, n                    # Load address of N
    lw x7, 0(x6)                # Reload N

    # Addition of N Half-Words (16-bit)
    la x8, halfwords            # Load address of half-words array into x8
    li x9, 0                    # Initialize sum of half-words (16-bit) to 0

halfword_addition_loop:
    lh x10, 0(x8)               # Load half-word from address x8
    add x9, x9, x10             # Add the half-word to the sum
    addi x8, x8, 2              # Move to the next half-word (2 bytes)
    addi x7, x7, -1             # Decrement N
    bnez x7, halfword_addition_loop # Repeat until N = 0
    
    # Store the result of half-word addition
    la x6, result_halfword      # Store the result in result_halfword
    sh x9, 0(x6)

    # Reset N and x7
    la x6, n                    # Load address of N
    lw x7, 0(x6)                # Reload N

    # Addition of N Bytes (8-bit)
    la x8, bytes                # Load address of bytes array into x8
    li x9, 0                    # Initialize sum of bytes (8-bit) to 0

byte_addition_loop:
    lb x10, 0(x8)               # Load byte from address x8
    add x9, x9, x10             # Add the byte to the sum
    addi x8, x8, 1              # Move to the next byte (1 byte)
    addi x7, x7, -1             # Decrement N
    bnez x7, byte_addition_loop # Repeat until N = 0
    
    # Store the result of byte addition
    la x6, result_byte          # Store the result in result_byte
    sb x9, 0(x6)

    # End of program, infinite loop
exit:
    nop

