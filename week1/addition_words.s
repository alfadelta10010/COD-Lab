.data
word1:  .word 0x00000010  # First word
word2:  .word 0x00000020  # Second word
result: .word 0x00000000  # Result

.text
.globl _start
_start:
    lw   t0, word1        # Load first word into t0
    lw   t1, word2        # Load second word into t1
    add  t2, t0, t1       # Add t0 and t1, store result in t2
    sw   t2, result       # Store result in memory

    # Exit program
    li   a7, 10           # Exit system call
    ecall
