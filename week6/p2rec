.data
n: .word 5   # Number for which we calculate the factorial 

.text
    la x5, n          
    lw x6, 0(x5)       

    # Call factorial function
    jal x1, factorial  # Jump to factorial function

  # Recursive factorial function
factorial:
    # Base case: if n <= 1, return 1
    li x7, 1            # Load 1 into x7 (comparison value)
    bge x6, x7, not_base_case  # If n >= 1, go to recursive case
    li x1, 1            # If n == 0 or n == 1, return 1
    jr x0               # Return to the caller

not_base_case:
    # Recursive case: n * factorial(n-1)
    addi x6, x6, -1     # Decrement n (n - 1)
    jal x1, factorial   # Recursive call

    # After returning from the recursion
    mul x1, x1, x6      # Multiply the result by n (n * factorial(n-1))
    jr x0               # Return to the caller

      # Store result (in x1) into memory
    sw x1, 0(x5)       # Store the result at the address in x5

   exit : nop
