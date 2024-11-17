.data
array:     .word 27, 14, 18, 22, 36, 10  # Input array of integers
size:      .word 6                       # Size of the array
results:   .word 0, 0, 0, 0, 0, 0        # Array to store divisibility results
positions: .word -1, -1, -1, -1, -1, -1  # Array to store positions of divisible numbers
div_count: .word 0                       # Total count of divisible numbers

.text
    # Load array address and size
    la x10, array          # x10 = address of the array
    lw x11, size           # x11 = size of the array
    la x12, results        # x12 = address of the results array
    la x13, positions      # x13 = address of the positions array
    li x14, 9              # x14 = divisor (9)
    li x15, 0              # x15 = total count of divisible numbers
    li x16, 0              # x16 = loop index (0-based)

check_loop:
    beq x16, x11, end_loop  # If index == size, exit loop

    lw x17, 0(x10)          # Load current element of the array into x17
    rem x18, x17, x14       # Calculate remainder: x18 = x17 % x14
    beq x18, x0, divisible  # If remainder == 0, it's divisible

not_divisible:
    sw x0, 0(x12)           # Store 0 in results array for not divisible
    j next_iteration

divisible:
    li x19, 1               # Load 1 (true) into x19
    sw x19, 0(x12)          # Store 1 in results array for divisible
    sw x16, 0(x13)          # Store the index in the positions array
    addi x15, x15, 1        # Increment the count of divisible numbers
    addi x13, x13, 4        # Move to the next position in the positions array

next_iteration:
    addi x10, x10, 4        # Move to the next element in the array
    addi x12, x12, 4        # Move to the next position in the results array
    addi x16, x16, 1        # Increment loop index
    j check_loop            # Repeat loop

end_loop:
    # Store the total count in memory
    la x20, div_count       # x20 = address of div_count
    sw x15, 0(x20)          # Store x15 (total count) in div_count

