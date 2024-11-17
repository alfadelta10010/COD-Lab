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
