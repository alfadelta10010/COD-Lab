.data
array:  .word 3, 15, 7, 25, 42, 9    # Example array
target: .word 25                     # The number to search for in the array

.text
    la x5, array          
    lw x6, target          
    li x7, 0              
    li x8, 6               # Array size (6 elements)

search_loop:
    # Step 2: Load current array element into x9
    lw x9, 0(x5)           # Load element at array[index] into x9

    # Step 3: Compare current element with target number
    beq x9, x6, found_number # If x9 (array element) equals x6 (target), jump to found_number

    # Step 4: Move to the next element in the array
    addi x7, x7, 1         # Increment the index (x7 = x7 + 1)
    addi x5, x5, 4         # Move to the next element (4 bytes per word)
    blt x7, x8, search_loop # If index is less than array size, repeat the loop

notfound_number:
    # Step 5: If number is not found, set x10 to 0 (indicating not found)
    li x10, 0              # Set x10 to 0 (number not found)
    j exit        # Jump to exit program

found_number:
    # Step 6: If number is found, set x10 to 1 (indicating found)
    li x10, 1              # Set x10 to 1 (number found)
    j exit        # Jump to exit program

exit : nop
    
