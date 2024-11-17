.data
array:   .word 7, 2, 9, 4, 1  # Array to sort
n:       .word 5              # Number of elements in the array

.text
    la x10, array             # x10 = Address of array
    lw x11, n                 # x11 = Number of elements (N)
    li x12, 0                 # x12 = i (outer loop counter)
outer_loop:
    sub x13, x11, x12         # x13 = N - i
    addi x13, x13, -1         # x13 = N - i - 1
    blez x13, exit            # If N - i - 1 <= 0, exit outer loop
    li x14, 0                 # x14 = j (inner loop counter)
inner_loop:
    beq x14, x13, outer_increment # If j == N - i - 1, exit inner loop
    slli x15, x14, 2          # x15 = j * 4 (offset in bytes)
    add x16, x10, x15         # x16 = Address of array[j]
    lw x17, 0(x16)            # x17 = array[j]
    lw x18, 4(x16)            # x18 = array[j+1]
    blt x17, x18, skip_swap   # If array[j] < array[j+1], skip
    sw x18, 0(x16)            # array[j] = array[j+1]
    sw x17, 4(x16)            # array[j+1] = array[j]
skip_swap:
    addi x14, x14, 1          
    j inner_loop          
outer_increment:
    addi x12, x12, 1          # i++
    j outer_loop              # Repeat outer loop
exit:
    nop