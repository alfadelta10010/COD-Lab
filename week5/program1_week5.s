    .data
array:  .word 0x1234, 0x5678, 0x9ABC, 0x4321, 0x8765, 0x1234, 0x2345, 0x6789, 0x9876, 0xABCD, 0x1111
len:    .word 11            # Array length

    .text
    .globl _start
_start:
    la t0, array          # Load base address of the array into t0
    lw t1, len            # Load the length of the array into t1
    li t2, 0              # Index counter, initialize to 0

check_divisible_by_9:
    beq t2, t1, end_program    # If index == length, exit the program
    lw t3, 0(t0)              # Load current element from array into t3
    
    # Load 9 into register t4
    li t4, 9                  # Load immediate value 9 into t4
    
    rem t5, t3, t4            # t5 = t3 % 9 (remainder of division by 9)
    beq t5, zero, divisible   # If remainder is 0, divisible by 9

    j next_element           # Jump to next element

divisible:
    # Print or set a flag for divisible (For now, just exit or set a flag)
    li a0, 1                # Let's set a flag or output the result
    # For now, just exit (You can add printing logic based on simulator support)
    j next_element

next_element:
    addi t0, t0, 4          # Move to the next element (array elements are 4 bytes each)
    addi t2, t2, 1          # Increment the index
    j check_divisible_by_9   # Continue checking next elements

end_program:
    li a7, 10               # Exit syscall
    ecall
