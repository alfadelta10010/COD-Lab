.data
a:  .half 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888, 0x9999  # Array a
b:  .half 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888, 0x9999  # Array b
c:  .half 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888, 0x9999  # Array c

.text
main:
    la x10, a                # Load base address of array a into x10
    la x11, b                # Load base address of array b into x11
    la x12, c                # Load base address of array c into x12
    li x14, 10               # Loop counter (i = 0 to 9)
    li x13, 0                # i = 0, loop index
loop:
    beq x13, x14, exit       # If i == 10, exit the loop
    lh x15, 0(x10)           # Load a[i] into x15
    lh x16, 0(x11)           # Load b[i] into x16
    mul x17, x15, x16        # Multiply a[i] and b[i], result in x17
    beq x13, x0, first_iter  # If i == 0, skip adding c[i-1]
    lh x18, -2(x12)          # Load c[i-1] into x18
    add x17, x17, x18        # Add c[i-1] to the result
first_iter:
    sh x17, 0(x12)           # Store result into c[i]
    addi x10, x10, 2         # Move to a[i+1]
    addi x11, x11, 2         # Move to b[i+1]
    addi x12, x12, 2         # Move to c[i+1]
    addi x13, x13, 1         # Increment loop index
    j loop                   # Jump back to loop

exit:
    nop 