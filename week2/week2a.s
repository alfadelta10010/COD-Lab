.data
a:  .half 0x1234        # a[0]
    .half 0x5678        # a[1]
    .half 0x0000        # a[2]
    .half 0x0000        # a[3]
    .half 0x0000        # a[4]
    .half 0x0000        # a[5]
    .half 0x0000        # a[6]
    .half 0x0000        # a[7]
    .half 0x0000        # a[8]
    .half 0x0000        # a[9]
    .half 0x0000        # a[10] - this is where we'll store the sum

    .text
    la x10,a
    # Initialize h = 0
    li t0, 0           # t0 will store h (sum)
    
    # Unrolling the loop: Manually add each a[i] to h (t0)
    lh t1, 0(x10)        # Load a[0] into t1
    add t0, t0, t1     # h = h + a[0]
    
    lh t1, 2(x10)        # Load a[1] into t1
    add t0, t0, t1     # h = h + a[1]
    
    lh t1, 4(x10)        # Load a[2] into t1
    add t0, t0, t1     # h = h + a[2]
lh t1, 6(x10)        # Load a[3] into t1
    add t0, t0, t1     # h = h + a[3]
    
    lh t1, 8(x10)        # Load a[4] into t1
    add t0, t0, t1     # h = h + a[4]
    
    lh t1, 10(x10)       # Load a[5] into t1
    add t0, t0, t1     # h = h + a[5]
    
    lh t1, 12(x10)       # Load a[6] into t1
    add t0, t0, t1     # h = h + a[6]
    
    lh t1, 14(x10)       # Load a[7] into t1
    add t0, t0, t1     # h = h + a[7]
    
    lh t1, 16(x10)       # Load a[8] into t1
    add t0, t0, t1     # h = h + a[8]
    
    lh t1, 18(x10)       # Load a[9] into t1
    add t0, t0, t1     # h = h + a[9]
    
    # Store h (t0) in a[10]
    sh t0, 20(x10)       # Store h in a[10]