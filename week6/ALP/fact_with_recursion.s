.data
num:    .word 5          # Input number (e.g., 5 for 5!)
result: .word 0          # To store the factorial result

.text 
    la x10, num          # Load the address of the input number
    lw x11, 0(x10)       # Load the number into x11
    jal x1, factorial    # Call the factorial function
    la x12, result       # Load the address of the result
    sw x10, 0(x12)       # Store the final factorial result in memory

exit:
    li a0, 0             # Exit code
    li a7, 10            # Exit syscall
    ecall

# Recursive factorial function
# Input: x11 contains the number
# Output: x10 contains the factorial result
factorial:
    addi sp, sp, -8      # Allocate stack space
    sw ra, 0(sp)         # Save the return address
    sw x11, 4(sp)        # Save the input number (x11) on the stack

    # Base case: if x11 == 0, return 1
    beq x11, x0, base_case

    # Recursive case
    addi x11, x11, -1    # Decrement the number
    jal x1, factorial    # Recursive call

    # Restore the saved number from the stack
    lw x11, 4(sp)
    mul x10, x10, x11    # Multiply the returned result with the current number

    lw ra, 0(sp)         # Restore the return address
    addi sp, sp, 8       # Deallocate stack space
    ret                  # Return to the caller

base_case:
    li x10, 1            # Base case result (0! = 1)
    lw ra, 0(sp)         # Restore the return address
    addi sp, sp, 8       # Deallocate stack space
    ret                  # Return to the caller