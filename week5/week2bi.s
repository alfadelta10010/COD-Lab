.data
array: .half 5, 10, 15, 20, 25  # Array of N half-words

.text

main:
    la x1, array        # Load the base address of the array into a0

    # Load half-words into registers
    lh x11, 0(x1)        # Load array[0] (half-word) into a1
    lh x12, 2(x1)        # Load array[1] (half-word) into a2
    lh x13, 4(x1)        # Load array[2] (half-word) into a3
    lh x14, 6(x1)        # Load array[3] (half-word) into a4
    lh x15, 8(x1)        # Load array[4] (half-word) into a5

    # Perform the additions using only registers
    add x11, x11, x12      # a1 = array[0] + array[1]
    add x16, x11, x13      # a1 = a1 + array[2]
    add x17, x16, x14      # a1 = a1 + array[3]
    add x18, x17, x15      # a1 = a1 + array[4]

    