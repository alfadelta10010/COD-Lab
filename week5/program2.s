#Program2

.data
a: .half 0x1234, 0x5678
b: .half 0x1234, 0x5678
c: .half 0x1234, 0x5678

.text

main:
    la x10, a              # Load base address of array a into x10
    la x11, b              # Load base address of array b into x11
    la x12, c              # Load base address of array c into x12

    addi x13, x0, 10       # Load loop count (10 iterations) into x13
    addi x14, x0, 1        # Set loop counter to 1 (i = 1)

loop:
    bge x14, x13, exit     
    lh x15, 0(x10)         # Load elements a[i]
    lh x16, 0(x11)         # Load elements b[i]
    mul x17, x15, x16      # x17 = a[i] * b[i]
    lh x18, -2(x12)        # Load c[i-1]
    add x19, x17, x18      # x19 = x17 + x18
    sh x19, 0(x12)        
    addi x10, x10, 2       # Move to next element in array a
    addi x11, x11, 2       # Move to next element in array b
    addi x12, x12, 2       # Move to next element in array c
    addi x14, x14, 1       
    j loop               

exit:
    addi x30,x0,0
