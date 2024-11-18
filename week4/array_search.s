.data
array: .word 5, 12, 8, 19, 3, 7  # The array to search
size: .word 6                    # Number of elements in the array
target: .word 19                 # The number to search for
result: .word -1                 # Result: index of the target or -1 if not found

.text
    # Load array address, size, and target
    la x10, array        # x10 = address of the array
    lw x11, size         # x11 = size of the array
    lw x12, target       # x12 = target number to search for

    # Initialize loop variables
    li x13, 0            # x13 = index (start at 0)
    li x14, -1           # x14 = default result (not found)

search_loop:
    beq x13, x11, end_search  # If index == size, exit loop

    lw x15, 0(x10)       # Load current element of the array into x15
    beq x15, x12, found  # If current element == target, go to found

    addi x10, x10, 4     # Move to the next element in the array
    addi x13, x13, 1     # Increment index
    j search_loop        # Repeat loop

found:
    mv x14, x13          # Store the found index in x14

end_search:
    # Store the result in memory
    la x16, result       # x16 = address of the result
    sw x14, 0(x16)       # Store x14 (index or -1) in result

   
