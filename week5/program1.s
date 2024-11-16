.data
    array: .word 18, 27, 35, 45, 90    # Array of numbers
    size: .word 5                       # Size of array
    key: .word 45                       # Number to find and check
    result: .word 0                     # Result (1 if found and divisible, 0 if not)

.text
.globl _start
_start:
    la x5, array          # Load base address of array
    lw x6, size          # Load size of array
    lw x7, key           # Load the number to find
    li x8, 9             # Load divisor (9)
    li x9, 0             # Initialize result

search_loop:
    beqz x6, exit        # If size becomes 0, exit
    lw x10, 0(x5)        # Load current number from array
    
    # Check if this is our number
    bne x10, x7, continue   # If not our number, continue searching
    
    # Found our number, check divisibility by 9
    rem x11, x10, x8        # Get remainder
    bnez x11, not_divisible # If remainder != 0, not divisible

    # Number is divisible by 9
    li x9, 1               # Set result to 1
    j store_result

not_divisible:
    li x9, 0               # Set result to 0
    j store_result

continue:
    addi x5, x5, 4         # Move to next number
    addi x6, x6, -1        # Decrement size
    j search_loop          # Continue searching

store_result:
    la x12, result         # Load address of result
    sw x9, 0(x12)          # Store the result

exit:
    li a7, 10              # System call for exit
    ecall                  # Make the system call
