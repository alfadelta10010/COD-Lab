.data
array: .word 18, 27, 45, 10, 81  # Input array
index: .word 2                  # Index of the number to check (e.g., 45 at index 2)
divisor: .word 9                # Divisor (9)
result: .word 0               # Stores 1 if divisible, 0 otherwise

.text
main:
    la x10, array               # Load base address of the array
    la x11, index               # Load address of index
    lw x12, 0(x11)              # Load the index value into x12
    slli x12, x12, 2            # Multiply index by 4 (word size) to calculate offset
    add x10, x10, x12           # Add offset to base address of the array
    lw x13, 0(x10)              # Load the selected number into x13

    la x14, divisor             # Load address of divisor
    lw x15, 0(x14)              # Load the divisor (9) into x15

    rem x16, x13, x15           # Calculate remainder (x16 = x13 % x15)
    beq x16, x0, divisible      # If remainder == 0, number is divisible

not_divisible:
    la x17, result              # Load address of result
    sw x0, 0(x17)               # Store 0 (not divisible) in result
    j end                       # Exit program

divisible:
    la x17, result              # Load address of result
    addi x18, x0, 1             # Load 1 into x18
    sw x18, 0(x17)              # Store 1 (divisible) in result

end:
    nop                         # End of program