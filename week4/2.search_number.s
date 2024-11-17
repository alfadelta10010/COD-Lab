#search a given number
.data
array:  .word 10, 20, 30, 40, 50  # Array of numbers
size:   .word 5                   # Size of the array
target: .word 30                  # Number to search for
.text
_start:
    # Load the address of the array and the target value
    la   x10, array        # Load address of the array into x10
    la   x11, target       # Load address of the target number into x11
    lw   x12, 0(x11)       # Load the target number into x12 (target = 30)

    # Load size of the array
    la   x13, size         # Load address of the size variable into x13
    lw   x14, 0(x13)       # Load the size of the array into x14 (size = 5)

    # Initialize index (i = 0)
    li   x15, 0            # Set index i to 0 (x15 = 0)

search_loop:
    # Check if index i is less than the size of the array
    bge  x15, x14, not_found  # If i >= size, go to not_found

    # Load the current array element into x16
    lw   x16, 0(x10)       # Load array[i] into x16

    # Compare the current array element with the target
    beq  x16, x12, found   # If array[i] == target, go to found

    # Move to the next element in the array
    addi x10, x10, 4       # Increment the array pointer to the next element
    addi x15, x15, 1       # Increment the index i (i = i + 1)
    j    search_loop       # Repeat the loop

found:
    # If found, store the index in x17 (just for demonstration)
    mv   x17, x15          # Copy the found index into x17
    # Optionally, you can store the result to memory or display it here

    # End the program
    nop                    # No operation 

not_found:
    # If not found, store -1 (index = -1)
    li   x17, -1           # Store -1 in x17 to indicate "not found"
    # End the program
    nop                    # No operation 