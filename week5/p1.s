.data
array:  .word 3, 15, 7, 25, 42, 9    
target: .word 25                     # The number to check if divisible by 9

.text
    la x5, array           # Load base address of array into x5
    lw x6, target          # Load target number into x6
    li x7, 0               # Initialize index register x7 to 0 
    li x8, 6               # Array size (6 elements)
search_loop:
    # Step 2: Load current array element into x9
    lw x9, 0(x5)           # Load element at array[index] into x9
    
    # Step 3: Check if the current element is divisible by 9
    li x11, 9              # Load divisor (9) into x11
    div x12, x9, x11       # x12 = x9 / 9 (integer division)
    mul x12, x12, x11      # x12 = (x9 / 9) * 9
    sub x13, x9, x12       # x13 = x9 - ((x9 / 9) * 9), remainder calculation
    beq x13, x0, is_divisible # If remainder is 0, jump to is_divisible

    # Step 4: Move to the next element in the array
    addi x7, x7, 1         # Increment index (x7 = x7 + 1)
    addi x5, x5, 4         # Move to next element (4 bytes per word)
    blt x7, x8, search_loop # If index is less than array size, repeat loop
    
not_divisible:
    li x10, 0              # Set x10 to 0 (not divisible by 9)
    j exit        

is_divisible:
    li x10, 1              # Set x10 to 1 (divisible by 9)
    j exit
         
exit:
    # End of program (can add an ecall for termination if needed)
