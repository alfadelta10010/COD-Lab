.data
array: .word 18, 25, 45, 63, 81   # Array of integers
size:  .word 5                    # Size of the array
divisor: .word 9                  # Divisor (9)

.text
.globl main

main:
    # Step 1: Load the array address and size
    la t0, array        # Load the address of the array into t0
    lw t1, size         # Load the size of the array into t1
    lw t2, divisor      # Load the divisor (9) into t2

    # Initialize loop counter
    li t3, 0            # t3 = index (loop counter)

check_loop:
    beq t3, t1, exit    # If index == size, exit the loop
    lw t4, 0(t0)        # Load current array element into t4
    rem t5, t4, t2      # Calculate t5 = t4 % t2
    beqz t5, divisible  # If remainder == 0, it's divisible
    j not_divisible     # Otherwise, go to not_divisible

divisible:
    li a0, 1            # Set a0 = 1 to indicate divisible
    j next_element      # Move to next element

not_divisible:
    li a0, 0            # Set a0 = 0 to indicate not divisible

next_element:
    addi t0, t0, 4      # Move to the next element in the array
    addi t3, t3, 1      # Increment the index
    j check_loop        # Repeat the loop

exit:
    li a7, 10           # Syscall for program exit
    ecall
