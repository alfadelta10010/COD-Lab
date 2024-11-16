# Write an assembly program to calculate the factorial of a number with & without recursion

.data
num: .word 5                    # Input number for which factorial is to be calculated
result_iter: .word 0            # Result of iterative factorial
result_recur: .word 0           # Result of recursive factorial

.text
.globl main

main:
    # Iterative Factorial Calculation
    lw t0, num                   # Load the number into t0
    li t1, 1                      # Initialize result to 1 (t1 = 1)
    li t2, 1                      # Initialize counter (i = 1)

iterative_loop:
    bgt t2, t0, store_iter       # If i > num, exit loop
    mul t1, t1, t2               # result *= i
    addi t2, t2, 1               # Increment i
    j iterative_loop              # Repeat the loop

store_iter:
    sw t1, result_iter           # Store the result of iterative factorial

    # Recursive Factorial Calculation
    lw t0, num                   # Load the number into t0 again for recursion
    jal ra, factorial             # Call factorial function

    sw a0, result_recur          # Store the result of recursive factorial

    # Exit Program
    li a7, 10                    # Load exit syscall number
    ecall                        # Make syscall to exit program

# Recursive Factorial Function
factorial:
    addi sp, sp, -16             # Create stack frame
    sw ra, 12(sp)                # Save return address
    sw a0, 8(sp)                 # Save input number (n)

    li t1, 1                      # Base case: if n == 1 or n == 0
    beq a0, t1, base_case        # Check if n == 1
    beqz a0, base_case           # Check if n == 0

    addi a0, a0, -1              # n = n - 1 for recursion
    jal ra, factorial             # Recursive call to factorial(n-1)

    lw t2, 8(sp)                 # Load original n from stack
    mul a0, a0, t2               # result = n * factorial(n-1)

base_case:
    lw ra, 12(sp)                # Restore return address
    addi sp, sp, 16              # Destroy stack frame
    jr ra                        # Return from function