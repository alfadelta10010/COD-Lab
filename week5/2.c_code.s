#c_code
.data
a:  .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777  # Array a[11]
b:  .half 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888  # Array b[11]
c:  .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777  # Array c[11]
i:  .word 0  # Index variable

.text

_start:
    # Initialize base addresses of arrays a, b, c
    la   x10, a       # Load address of array a into x10
    la   x11, b       # Load address of array b into x11
    la   x12, c       # Load address of array c into x12

    # Initialize i = 0
    li   x13, 0       # Set register x13 (i) to 0

    # Load 10 into x14 to use as a loop condition
    li   x14, 10      # Load the constant 10 into x14

loop:
    # Check if i < 10
    bge  x13, x14, end_loop  # If i >= 10, exit the loop

    # Load a[i] into x14 and b[i] into x15
    lh   x14, 0(x10)  # Load a[i] into x14
    lh   x15, 0(x11)  # Load b[i] into x15

    # Multiply a[i] and b[i]
    mul  x16, x14, x15  # x16 = a[i] * b[i]

    # For the first iteration, load c[0] from memory, otherwise load c[i-1]
    beq  x13, x0, first_iteration  # If i == 0, go to first_iteration

    # For i >= 1, load c[i-1]
    lh   x17, -2(x12)  # Load c[i-1] (previous element) into x17
    add  x16, x16, x17  # x16 = x16 + c[i-1]

    j    store_result   # Jump to store the result

first_iteration:
    # For i = 0, just use the result of a[i] * b[i]
    li   x17, 0         # Set x17 to 0 (no previous c[i-1] for i=0)
    add  x16, x16, x17  # x16 = x16 + 0 (no previous c[i-1])

store_result:
    # Store the result of c[i] in memory
    sh   x16, 0(x12)    # Store the result in c[i]

    # Increment i
    addi x13, x13, 1    # i = i + 1

    # Move to the next element in the arrays
    addi x10, x10, 2    # Move to the next element of a (2 bytes per element)
    addi x11, x11, 2    # Move to the next element of b (2 bytes per element)
    addi x12, x12, 2    # Move to the next element of c (2 bytes per element)

    j    loop            # Repeat the loop

end_loop:
    # Program ends here
    nop

