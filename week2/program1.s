.data
N:          .word 5                   # Number of elements

# Array of words (32-bit values)
array_words: .word 10, 20, 30, 40, 50

# Array of half-words (16-bit values)
array_half:  .half 1, 2, 3, 4, 5

# Array of bytes (8-bit values)
array_bytes: .byte 1, 2, 3, 4, 5

# Result variables to store sums
sum_words:   .word 0
sum_half:    .word 0
sum_bytes:   .word 0

.text
.globl main
main:
    # Load N (number of elements)
    la t0, N
    lw t1, 0(t0)                   # t1 = N

    # --------------------
    # Add N Words
    # --------------------
    la t0, array_words             # Base address of array_words
    li t2, 0                       # t2 = sum_words
    li t3, 0                       # t3 = loop index

add_words_loop:
    bge t3, t1, finish_words       # If index >= N, exit loop
    lw t4, 0(t0)                   # Load word from array
    add t2, t2, t4                 # sum_words += word
    addi t3, t3, 1                 # Increment loop index
    addi t0, t0, 4                 # Move to the next word (4 bytes)
    j add_words_loop

finish_words:
    la t0, sum_words               # Store sum of words
    sw t2, 0(t0)

    # --------------------
    # Add N Half-Words
    # --------------------
    la t0, array_half              # Base address of array_half
    li t2, 0                       # t2 = sum_half
    li t3, 0                       # t3 = loop index

add_half_loop:
    bge t3, t1, finish_half        # If index >= N, exit loop
    lh t4, 0(t0)                   # Load half-word from array
    add t2, t2, t4                 # sum_half += half-word
    addi t3, t3, 1                 # Increment loop index
    addi t0, t0, 2                 # Move to the next half-word (2 bytes)
    j add_half_loop

finish_half:
    la t0, sum_half                # Store sum of half-words
    sw t2, 0(t0)

    # --------------------
    # Add N Bytes
    # --------------------
    la t0, array_bytes             # Base address of array_bytes
    li t2, 0                       # t2 = sum_bytes
    li t3, 0                       # t3 = loop index

add_bytes_loop:
    bge t3, t1, finish_bytes       # If index >= N, exit loop
    lb t4, 0(t0)                   # Load byte from array
    add t2, t2, t4                 # sum_bytes += byte
    addi t3, t3, 1                 # Increment loop index
    addi t0, t0, 1                 # Move to the next byte (1 byte)
    j add_bytes_loop

finish_bytes:
    la t0, sum_bytes               # Store sum of bytes
    sw t2, 0(t0)

    # Exit program
    li a7, 10                      # Exit syscall code
    ecall
