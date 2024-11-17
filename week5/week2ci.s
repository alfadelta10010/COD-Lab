.data
array_bytes: .byte 1, 2, 3, 4, 5  # Array of N bytes

.text

main:
    la x10, array_bytes  # Load the base address of the array into a0

    # Load bytes into registers and sum them
    lb x1, 0(x10)        # Load array[0] into a1
    lb x2, 1(x10)        # Load array[1] into a2
    lb x3, 2(x10)        # Load array[2] into a3
    lb x4, 3(x10)        # Load array[3] into a4
    lb x5, 4(x10)        # Load array[4] into a5

    # Perform the additions using only registers
    add x6, x1, x2     # a1 = array[0] + array[1]
    add x7, x6, x3      # a1 = a1 + array[2]
    add x8, x7, x4      # a1 = a1 + array[3]
    add x9, x8, x5      # a1 = a1 + array[4]



   