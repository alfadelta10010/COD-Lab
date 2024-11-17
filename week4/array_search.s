.data
array:      .word 10, 20, 30, 40, 50   # Example array of numbers
length:     .word 5                    # Length of the array
search_num: .word 30                   # Number to search for

.text
main:
    la t0, array                 # Load address of the array into t0
    la t1, search_num            # Load address of search_num into t1
    lw t2, 0(t1)                 # Load search number into t2
    la t1, length                # Load address of length into t1
    lw t3, 0(t1)                 # Load length of array into t3
    
    addi t4, zero, 0             # Initialize index to 0 in t4

search_loop:
    bge t4, t3, not_found_label   # Check if we've reached end of array
    
    lw t5, 0(t0)                  # Load current element from array into t5
    
    beq t5, t2, found_label       # Compare current element with search number
    
    addi t0, t0, 4                # Move to next element (4 bytes per word)
    addi t4, t4, 1                # Increment index
    
    j search_loop                 # Repeat search loop

not_found_label:
    addi t6, zero, -1             # Set flag for "not found" using subtraction
    j end                         # Jump to end

found_label:
    addi t6, t4, 0                # Store index in t6 (index where number was found)

end:
    # You can process t6 here if you want to use the result further.
    # The program will end here as the last instruction.
    j end                         # Infinite loop to terminate program

