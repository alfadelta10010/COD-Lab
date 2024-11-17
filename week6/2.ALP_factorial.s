#factorial with recursion
.data
    num: .word 5      # Input number for factorial (5! = 120)
    result: .word 0   # To store the result of the factorial

.text
_start:
    # Load the number (n) into x10
    la   x10, num     # Load address of num
    lw   x10, 0(x10)  # Load the value of num into x10

    # Call the recursive factorial function
    jal  x1, factorial

    # Store the result in memory
    la   x13, result  # Load address of result
    sw   x10, 0(x13)  # Store the result (x10) into memory

    # End the program (replace ecall with nop for non-system call exit)
    nop                # No operation (end of program)

# Recursive factorial function: factorial(n)
factorial:
    # Base case: if n == 1, return 1
    li   x14, 1        # Load 1 into x14 (comparison value for base case)
    beq  x10, x14, base_case

    # Recursive case: factorial(n) = n * factorial(n - 1)
    addi x10, x10, -1  # Decrement n by 1
    jal  x1, factorial # Recursive call to factorial(n-1)
    mul  x10, x10, x14 # Multiply result of factorial(n-1) by n
    
base_case:
    # Base case: return 1 if n == 1
    li   x10, 1        # Return 1 for factorial(1)
    ret                 # Return from function


#factorial without recursion
.data
    num: .word 5      # Input number for factorial (5! = 120)
    result: .word 0   # To store the result of the factorial

.text
_start:
    # Load the number (n) into x10
    la   x10, num     # Load address of num
    lw   x10, 0(x10)  # Load the value of num into x10

    # Initialize the result to 1 (x11 = 1)
    li   x11, 1       # Initialize result (x11) to 1 (base case for multiplication)
    
    # Outer loop: multiply result by each number from n down to 1
    li   x12, 1       # Initialize counter x12 to 1 (starting value)
iter_loop:
    mul  x11, x11, x12 # Multiply result (x11) by x12
    addi x12, x12, 1    # Increment x12 (i++)
    bge  x12, x10, end_iter # If i >= n, exit the loop

    # Continue iterating
    j    iter_loop
    
end_iter:
    # Store the result in memory
    la   x13, result   # Load address of result
    sw   x11, 0(x13)   # Store the result (x11) into memory

    # End the program 
    nop                 # No operation (end of program)
