    .data
array:      .word 3, 7, 9, 15, 23, 42  # Array to search
array_len:  .word 6                   # Length of the array
key:        .word 15                  # Number to search
result:     .word -1                  # Result (-1 if not found, index if found)

    .text
    .globl _start

_start:
    # Load base address of array into t0
    la t0, array

    # Load the length of the array into t1
    lw t1, array_len

    # Load the search key into t2
    lw t2, key

    # Initialize index (i) to 0
    li t3, 0

search_loop:
    # Check if we've reached the end of the array
    beq t3, t1, not_found

    # Load current array element into t4
    lw t4, 0(t0)

    # Compare current element with the search key
    beq t4, t2, found

    # Increment the pointer to the next array element
    addi t0, t0, 4

    # Increment index (i)
    addi t3, t3, 1

    # Repeat the loop
    j search_loop

found:
    # Store the index in the result
    la t5, result
    sw t3, 0(t5)

    # Exit the program
    j exit

not_found:
    # Store -1 in the result
    li t6, -1
    la t5, result
    sw t6, 0(t5)

exit:
    # Exit system call
    li a7, 93          # ecall for exit
    li a0, 0           # Exit status 0
    ecall
