# Program 1 
add N words:

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

# Program 2 
add N halfwords

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

    
  #program 3 
  add N bytes : 

.data
N: .word 5               # Number of bytes
bytes: .byte 1, 2, 3, 4, 5 # Array of bytes to add

.text
la x5, N             # Load address of N
lw x6, 0(x5)         # Load value of N into x6
la x7, bytes         # Load address of the bytes array
li x8, 0             # Initialize sum to 0
li x9, 0             # Loop counter

add_loop_bytes:
    beq x9, x6, end_add_bytes # If counter == N, exit loop
    lb x10, 0(x7)         # Load byte from the array
    add x8, x8, x10       # Add byte to the sum
    addi x7, x7, 1        # Move to next byte (1 byte)
    addi x9, x9, 1        # Increment counter
    j add_loop_bytes

end_add_bytes:
    # x8 contains the sum of the bytes
    nop                   # Placeholder for ending execution

#program 4 
2nd q 
x = (y + m) - (L - D) + (Z + C) - D

.data
y:  .word 10       # Value of y
m:  .word 20       # Value of m
L:  .word 50       # Value of L
D:  .word 35      # Value of D
Z:  .word 30       # Value of Z
C:  .word 15      # Value of C
x:  .word 0        # Result (x), initialized to 0

.text
    # Load variables from memory into registers
    la x5, y         # Load address of y
    lw x6, 0(x5)     # Load value of y into x6

    la x5, m         # Load address of m
    lw x7, 0(x5)     # Load value of m into x7

    la x5, L         # Load address of L
    lw x8, 0(x5)     # Load value of L into x8

    la x5, D         # Load address of D
    lw x9, 0(x5)     # Load value of D into x9

    la x5, Z         # Load address of Z
    lw x10, 0(x5)    # Load value of Z into x10

    la x5, C         # Load address of C
    lw x11, 0(x5)    # Load value of C into x11

    # Calculate (y + m)
    add x12, x6, x7  # x12 = y + m

    # Calculate (L - D)
    sub x13, x8, x9  # x13 = L - D

    # Calculate (y + m) - (L - D)
    sub x14, x12, x13 # x14 = (y + m) - (L - D)

    # Calculate (Z + C)
    add x15, x10, x11 # x15 = Z + C

    # Add (Z + C) to the previous result
    add x16, x14, x15 # x16 = (y + m) - (L - D) + (Z + C)

    # Subtract D
    sub x17, x16, x9  # x17 = (y + m) - (L - D) + (Z + C) - D

    # Store the result (x)
    la x5, x          # Load address of x
    sw x17, 0(x5)     # Store the result in memory


  
