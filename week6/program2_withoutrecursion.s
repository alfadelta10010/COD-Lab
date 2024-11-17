.data
num:    .word 5          # Input number (e.g., 5 for 5!)
result: .word 1          # To store the factorial result

.text

    la x10, num          # Load the address of the number into x10
    lw x11, 0(x10)       # Load the number into x11
    la x12, result       # Load the address of the result
    addi x13, x0, 1      # Set x13 = 1 (factorial result initialization)

    beq x11, x0, save_result  # If the number is 0, factorial is 1

factorial_loop_start:
    mul x13, x13, x11    # Multiply current result (x13) by x11
    addi x11, x11, -1    # Decrement x11 (current number)
    bnez x11, factorial_loop_start  # Continue loop while x11 != 0

save_result:
    sw x13, 0(x12)       # Store the factorial result in memory
