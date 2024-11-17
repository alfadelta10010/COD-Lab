array_search:
.data
data_array: .word 5, 12, 8, 19, 3, 7  # Array containing elements
array_size: .word 6                   # Number of elements in the array
search_target: .word 19               # The value to search for
output_result: .word -1               # Index of the target or -1 if not found

.text
    la x10, data_array     # x10 points to the start of the array
    lw x11, array_size     # x11 holds the total number of elements
    lw x12, search_target  # x12 contains the value to locate
    li x13, 0              # x13 is the current index (starts at 0)
    li x14, -1             # x14 holds the default result (-1, not found)

search_loop:
    beq x13, x11, end_search  # If index equals size, exit the loop

    lw x15, 0(x10)        # Load the current array element into x15
    beq x15, x12, found   # If the element matches the target, jump to "found"

    addi x10, x10, 4      # Move to the next element (word size is 4 bytes)
    addi x13, x13, 1      # Increment the index
    j search_loop         # Continue the search loop

found:
    mv x14, x13           # Save the found index in x14

end_search:                
#store the searched result 
    la x16, output_result  # x16 points to the memory location for the result
    sw x14, 0(x16)         # Store x14 (index or -1) in the output result