.data
signed_word:  .word -123456  # Signed word
unsigned_word: .word 123456  # Unsigned word
signed_half:  .half -12345   # Signed half word
unsigned_half: .half 12345   # Unsigned half word
signed_byte:  .byte -120     # Signed byte
unsigned_byte: .byte 120     # Unsigned byte

.text
.globl _start
_start:
    lw   t0, signed_word   # Load signed word
    lw   t1, unsigned_word # Load unsigned word
    lh   t2, signed_half   # Load signed half word
    lh   t3, unsigned_half # Load unsigned half word
    lb   t4, signed_byte   # Load signed byte
    lb   t5, unsigned_byte # Load unsigned byte

    # Store data back for observation (Example)
    sw   t0, signed_word   # Store signed word
    sw   t1, unsigned_word # Store unsigned word
    sh   t2, signed_half   # Store signed half word
    sh   t3, unsigned_half # Store unsigned half word
    sb   t4, signed_byte   # Store signed byte
    sb   t5, unsigned_byte # Store unsigned byte

    # Exit program
    li   a7, 10           # Exit system call
    ecall