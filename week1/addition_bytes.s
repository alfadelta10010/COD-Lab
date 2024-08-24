.data
byte1:  .byte 0x10       # First byte
byte2:  .byte 0x20       # Second byte
result: .byte 0x00       # Result

.text
.globl _start
_start:
    lb   t0, byte1        # Load first byte into t0
    lb   t1, byte2        # Load second byte into t1
    add  t2, t0, t1       # Add t0 and t1, store result in t2
    sb   t2, result       # Store result in memory

    # Exit program
    li   a7, 10           # Exit system call
    ecall