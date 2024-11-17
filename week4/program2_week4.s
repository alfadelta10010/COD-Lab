    .text
    .globl _start
_start:
    # Initialize the array and the target number
    la t0, array            # Load base address of the array
    li t1, 5                # Set array size (5 elements in this case)
    li t2, 3                # Target number to search for
    li t3, 0                # Index variable, start at 0

search_loop:
    beq t1, zero, not_found   # If the array is exhausted, jump to not_found
    lw t4, 0(t0)             # Load current array element
    beq t4, t2, found        # If the element matches the target, jump to found
    addi t0, t0, 4           # Move to the next element (4 bytes per element)
    addi t3, t3, 1           # Increment the index
    addi t1, t1, -1          # Decrement the array size
    j search_loop            # Continue searching

found:
    # The target was found, t3 contains the index
    li a0, 1                 # Return value 1 to indicate found
    j end_search

not_found:
    # The target was not found, return -1
    li a0, -1                # Return value -1 to indicate not found

end_search:
    # Exit the program
    nop
    li a7, 10                # Exit syscall
    ecall

# Array and number to search for
    .data
array:  .word 1, 2, 3, 4, 5   # Array of numbers
