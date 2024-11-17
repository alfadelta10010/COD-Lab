# Program 1: Addition of N Words (32-bit numbers)
    .text
    .globl _start
_start:
    li t0, 0              # t0 = 0, accumulator for the sum
    li t1, 5              # t1 = N (number of words to add)

    # Load address of data (example values)
    la t2, data_words      # Load address of data (array of 32-bit numbers)

loop_words:
    beq t1, zero, end_loop_words  # If N is zero, end the loop
    lw t3, 0(t2)                # Load the next word from memory
    add t0, t0, t3             # Add it to the sum (t0)
    addi t2, t2, 4             # Move to the next word (4 bytes)
    addi t1, t1, -1            # Decrement N
    j loop_words               # Repeat the loop

end_loop_words:
    # Result is in t0 (sum of N words)
    # End of program

.data
data_words:
    .word 1, 2, 3, 4, 5       # Example data for 5 words

# Program 2: Addition of N Half Words (16-bit numbers)
    .text
    .globl _start
_start:
    li t0, 0               # t0 = 0, accumulator for the sum
    li t1, 5               # t1 = N (number of half-words to add)

    # Load address of data (example values)
    la t2, data_halfwords   # Load address of data (array of 16-bit numbers)

loop_halfwords:
    beq t1, zero, end_loop_halfwords  # If N is zero, end the loop
    lh t3, 0(t2)                 # Load the next half-word from memory
    add t0, t0, t3              # Add it to the sum (t0)
    addi t2, t2, 2              # Move to the next half-word (2 bytes)
    addi t1, t1, -1             # Decrement N
    j loop_halfwords            # Repeat the loop

end_loop_halfwords:
    # Result is in t0 (sum of N half-words)
    # End of program

.data
data_halfwords:
    .half 1, 2, 3, 4, 5        # Example data for 5 half-words

# Program 3: Addition of N Bytes (8-bit numbers)
    .text
    .globl _start
_start:
    li t0, 0              # t0 = 0, accumulator for the sum
    li t1, 5              # t1 = N (number of bytes to add)

    # Load address of data (example values)
    la t2, data_bytes      # Load address of data (array of 8-bit numbers)

loop_bytes:
    beq t1, zero, end_loop_bytes  # If N is zero, end the loop
    lb t3, 0(t2)                # Load the next byte from memory
    add t0, t0, t3             # Add it to the sum (t0)
    addi t2, t2, 1             # Move to the next byte (1 byte)
    addi t1, t1, -1            # Decrement N
    j loop_bytes               # Repeat the loop

end_loop_bytes:
    # Result is in t0 (sum of N bytes)
    # End of program

.data
data_bytes:
    .byte 1, 2, 3, 4, 5       # Example data for 5 bytes
