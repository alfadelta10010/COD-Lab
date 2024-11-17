    .data
n:      .word 5               # The number to calculate factorial for
fact:   .word 1               # Variable to store the iterative factorial result
fact_recursive: .word 1      # Variable to store the recursive factorial result

    .text
    .globl _start

_start:
    # --- Iterative Factorial ---
    li t0, 1                   # t0 = 1 (factorial result for iterative method)
    lw t1, n                   # Load n into t1
    li t2, 1                   # Counter i = 1

iterative_factorial_loop:
    bge t2, t1, end_iterative_factorial  # If i >= n, exit the loop
    mul t0, t0, t2             # t0 = t0 * i (multiply the result with i)
    addi t2, t2, 1             # Increment i
    j iterative_factorial_loop

end_iterative_factorial:
    la t3, fact                # Load the address of fact into t3
    sw t0, 0(t3)               # Store the iterative factorial result in 'fact'

    # --- Recursive Factorial ---
    lw t0, n                   # Load n into t0 for recursive factorial
    jal ra, factorial_recursive  # Call the recursive factorial function

    la t3, fact_recursive      # Load the address of fact_recursive into t3
    sw t0, 0(t3)               # Store the recursive factorial result in 'fact_recursive'

    # Exit the program
    li a7, 10                  # Exit syscall
    ecall

# Recursive factorial function
factorial_recursive:
    # Base case: if n == 1, return 1
    beq t0, zero, return_one   # If n == 0, return 1 (base case)
    addi t0, t0, -1            # Decrement n by 1
    jal ra, factorial_recursive  # Recursive call

return_one:
    li t0, 1                   # Return 1 when n == 0
    ret
