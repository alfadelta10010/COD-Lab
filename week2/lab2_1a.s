.data
N: .word 5                    # Number of words
words: .word 1, 2, 3, 4, 5    # Array of words to add

.text
la x5, N                  # Load address of N
lw x6, 0(x5)              # Load value of N into x6
la x7, words              # Load address of the words array
li x8, 0                  # Initialize sum to 0
li x9, 0                  # Loop counter

add_loop_words:
    beq x9, x6, end_add_words # If counter == N, exit loop
    lw x10, 0(x7)             # Load word from the array
    add x8, x8, x10           # Add word to the sum
    addi x7, x7, 4            # Move to next word (4 bytes)
    addi x9, x9, 1            # Increment counter
    j add_loop_words

end_add_words:
    # x8 contains the sum of the words
    nop
