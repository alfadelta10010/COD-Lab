.data
array: .word 5, 10, 15, 20, 25  # Array of N words

.text


    la x1, array        # Load the address of the array into a0
    lw x2, 0(a0)        # Load array[0] into a1
    lw x3, 4(a0)        # Load array[1] into a2
    lw x4, 8(a0)        # Load array[2] into a3
    lw x5, 12(a0)       # Load array[3] into a4
    lw x6, 16(a0)       # Load array[4] into a5

    # Perform the additions using only registers
    add x7, x2, x3     # a1 = array[0] + array[1]
    add x8, x7, x4      # a1 = a1 + array[2]
    add x9, x8, x5     # a1 = a1 + array[3]
    add x10, x9, x6      # a1 = a1 + array[4]

    
