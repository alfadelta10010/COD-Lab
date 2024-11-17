.data
array:      .word 5, 10, 15, 20, 25, 30       # Array containing integers
size:       .word 6                           # Total number of elements in the array
target:     .word 15                          # Value to search for in the array

.text
.globl main

main:
    # Load the starting address of the array and related data
    la t0, array            # Address of the first element of the array
    lw t1, size             # Total number of elements in the array loaded into t1
    lw t2, target           # Target value to find in the array loaded into t2
    li t3, 0                # Initialize the index (t3) to zero

search_loop:
    beq t3, t1, not_found    # If index (t3) equals the size of the array, jump to not_found
    lw t4, 0(t0)            # Load the current element of the array into t4
    beq t4, t2, found       # If the current element matches the target, jump to found
    addi t3, t3, 1          # Increment the index to move to the next element
    addi t0, t0, 4          # Move to the address of the next element in the array
    j search_loop           # Jump back to the beginning of the loop

found:
    li t5, -1                # Set t5 to -1, indicating the target was found
    j exit                   # Exit the program

not_found:
    li t5, 0                 # Set t5 to 0, indicating the target was not found

exit:
    li a7, 10                # Load the system call number for program termination
    ecall                    # Perform the system call to terminate the program
