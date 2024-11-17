.data
    number: .word 5           # Number to calculate factorial for
    result_iter: .word 0      # Store result of iterative method
    result_rec: .word 0       # Store result of recursive method

.text
.globl _start
_start:
    # First do iterative calculation
    lw x5, number            # Load input number
    jal x1, factorial_iter   # Call iterative factorial
    
    # Store iterative result
    la x6, result_iter
    sw x10, 0(x6)
    
    # Then do recursive calculation
    lw x5, number            # Load input number again
    jal x1, factorial_rec    # Call recursive factorial
    
    # Store recursive result
    la x6, result_rec
    sw x10, 0(x6)
    
    # Exit program
    j exit

# Iterative Factorial Implementation
factorial_iter:
    li x10, 1               # Initialize result to 1
    mv x11, x5              # Copy n to counter
    
iter_loop:
    beqz x11, iter_done     # If counter = 0, done
    mul x10, x10, x11       # result = result * counter
    addi x11, x11, -1       # Decrement counter
    j iter_loop             # Continue loop
    
iter_done:
    ret                     # Return to caller

# Recursive Factorial Implementation
factorial_rec:
    # Save return address and n on stack
    addi sp, sp, -8         # Allocate stack space
    sw x1, 4(sp)            # Save return address
    sw x5, 0(sp)            # Save n
    
    # Base case: if n <= 1, return 1
    li x10, 1               # Default return value = 1
    li x6, 1                # Constant 1 for comparison
    ble x5, x6, rec_done    # If n <= 1, return 1
    
    # Recursive case: return n * factorial(n-1)
    addi x5, x5, -1         # n = n - 1
    jal x1, factorial_rec   # Calculate factorial(n-1)
    
    # Multiply result by n
    lw x5, 0(sp)            # Restore original n
    mul x10, x10, x5        # result = n * factorial(n-1)
    
rec_done:
    # Restore stack and return
    lw x1, 4(sp)            # Restore return address
    addi sp, sp, 8          # Deallocate stack space
    ret                     # Return to caller

exit:
    li a7, 10               # System call for exit
    ecall
