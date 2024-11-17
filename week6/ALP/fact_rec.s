.data
    num:    .word 5               # Number for which factorial is to be calculated
    result: .word 1               # Result initialized to 1

.text
main:
    la x2, num                    # Load address of 'num' into x2
    lw x3, 0(x2)                  # Load num into x3
    la x4, result                 # Load address of 'result' into x4

    # Call recursive function
    jal factorial                 # Jump and link to factorial function

    sw x5, 0(x4)                  # Store the result back to 'result'
    j done                         # Infinite loop to halt the program

factorial:
    addi sp, sp, -8               # Make space on the stack for ra and num
    sw ra, 4(sp)                  # Save return address
    sw x3, 0(sp)                  # Save 'num' to the stack

    # Base case: if num == 0 or num == 1, return 1
    beqz x3, base_case            # If num == 0, jump to base_case
    addi x6, x3, -1               # x6 = num - 1
    beq x6, x0, base_case         # If num == 1, jump to base_case

    # Recursive case: factorial(num) = num * factorial(num - 1)
    addi x3, x3, -1               # num = num - 1
    jal factorial                  # Recursive call

    # Multiply the result with the saved num (from stack)
    lw x6, 0(sp)                  # Load 'num' from the stack
    mul x5, x5, x6                # result = result * num

base_case:
    lw ra, 4(sp)                  # Restore return address
    addi sp, sp, 8                # Restore the stack (pop ra and num)
    jr ra                         # Return to the caller

done:
    j done                         # Infinite loop to halt the program 