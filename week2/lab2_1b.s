.data
N: .word 5                     # Number of half-words
halfwords: .half 1, 2, 3, 4, 5 # Array of half-words to add

.text
la x5, N                   # Load address of N
lw x6, 0(x5)               # Load value of N into x6
la x7, halfwords           # Load address of the half-words array
li x8, 0                   # Initialize sum to 0
li x9, 0                   # Loop counter

add_loop_halfwords:
    beq x9, x6, end_add_halfwords # If counter == N, exit loop
    lh x10, 0(x7)              # Load half-word from the array
    add x8, x8, x10            # Add half-word to the sum
    addi x7, x7, 2             # Move to next half-word (2 bytes)
    addi x9, x9, 1             # Increment counter
    j add_loop_halfwords

end_add_halfwords:
    # x8 contains the sum of the half-words
    nop
