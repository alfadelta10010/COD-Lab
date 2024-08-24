.data
half1:  .half 0x0010     # First half word
half2:  .half 0x0020     # Second half word
result: .half 0x0000     # Result

.text
.globl _start
_start:
    lh   t0, half1        # Load first half word into t0
    lh   t1, half2        # Load second half word into t1
    add  t2, t0, t1       # Add t0 and t1, store result in t2
    sh   t2, result       # Store result in memory

    # Exit program
    li   a7, 10           # Exit system call
    ecall