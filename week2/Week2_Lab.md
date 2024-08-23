    .data
a:  .half 0x1234, 0x5678, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000  # Array 'a' with 11 elements

    .text
    la x5, a            # Load base address of array 'a' into x5
    li x6, 0            # Initialize h to 0 (x6 = h)
    li x7, 0            # Initialize loop index i to 0 (x7 = i)

    slli x8, x7, 1      # x8 = i * 2 (offset for 16-bit elements)
    add x8, x5, x8      # x8 = address of a[i] (base address + offset)
    lh x9, 0(x8)        # Load a[i] into x9 (16-bit value)
    add x6, x6, x9      # h = h + a[i] (x6 = h + a[i])

    addi x7, x7, 1  
    slli x8, x7, 1      
    add x8, x5, x8      

