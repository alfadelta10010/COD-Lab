#divisible by 9   
.data
array:  .word 10, 20, 30, 40, 50, 18, 81  # Array of numbers
size:   .word 7                          # Size of the array (7 elements)

    .text

_start:
    # Load address of the array and size of the array
    la   x10, array        # Load address of the array into x10
    la   x11, size         # Load address of the size variable into x11
    lw   x12, 0(x11)       # Load the size of the array into x12 (size = 7)

    # Initialize index (i = 0)
    li   x13, 0            # Set index i to 0 (x13 = 0)

check_loop:
    # Check if index i is less than the size of the array
    bge  x13, x12, end_program  # If i >= size, exit the loop

    # Load the current element from the array
    lw   x14, 0(x10)       # Load array[i] into x14

    # Check if current element is divisible by 9
    li   x15, 9            # Load 9 into x15
    rem  x16, x14, x15     # x16 = array[i] % 9

    # If remainder is zero, the number is divisible by 9
    beq  x16, x0, divisible_by_9

    # If not divisible by 9, go to the next element
    addi x10, x10, 4       # Move to the next element in the array
    addi x13, x13, 1       # Increment the index i (i = i + 1)
    j    check_loop        # Repeat the loop

divisible_by_9:
    # If current element is divisible by 9, store the result in x17
    mv   x17, x14          # Copy the number into x17 to indicate it is divisible by 9
    # You can store or print the result here if needed

    # Optionally, you can break here if you want to stop after finding one divisible number
    # j    end_program

    # Continue to next element in the array
    addi x10, x10, 4       # Move to the next element in the array
    addi x13, x13, 1       # Increment the index i (i = i + 1)
    j    check_loop        # Continue the loop

end_program:
    # End of program, program halts here
    nop                    # No operation 
