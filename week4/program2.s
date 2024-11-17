.data
array:      .word 5, 10, 15, 20, 25, 30       # Array of integers
size:       .word 6                           # Size of the array
target:     .word 15                          # Number to search for

.text
.globl main

main:
    # Step 1: Load array information
    la t0, array            # Load the address of the array into t0
    lw t1, size             # Load the size of the array into t1
    lw t2, target           # Load the target value into t2
    li t3, 0                # Initialize index (t3 = 0)

search_loop:
    beq t3, t1, not_found    # If index == size, jump to not_found
    lw t4, 0(t0)            # Load the current array element into t4
    beq t4, t2, found       # If array element == target, jump to found
    addi t3, t3, 1          # Increment index
    addi t0, t0, 4          # Move to the next array element
    j search_loop           # Repeat the loop

found:
    li t5, -1                # Set register t5 to all ones (found)
    j exit                   # Jump to exit

not_found:
    li t5, 0                 # Set register t5 to all zeros (not found)

exit:
    li a7, 10                # Load exit syscall number (10)
    ecall                    # Make syscall to exit program (if supported)
