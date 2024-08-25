
.data
# 32-bit unsigned and signed words
unsigned_word: .word 0x0000cadd  # Unsigned 32-bit word (43981 in decimal)
signed_word:   .word 0x80003421  # Signed 32-bit word (-2147483644 in decimal)

# 16-bit unsigned and signed half-words
unsigned_halfword: .half 0xcadd  # Unsigned 16-bit half-word (43981 in decimal)
signed_halfword:   .half 0x1008  # Signed 16-bit half-word (-32767 in decimal)

# 8-bit unsigned and signed bytes
unsigned_byte: .byte 0xba  # Unsigned 8-bit byte (171 in decimal)
signed_byte:   .byte 0x60  # Signed 8-bit byte (-128 in decimal)

.text
    # Load unsigned 32-bit word
    la x10, unsigned_word   # Load address of 'unsigned_word' into x10
    lw x11, 0(x10)          # Load 32-bit unsigned word from address in x10 into x11

    # Load signed 32-bit word
    la x12, signed_word     # Load address of 'signed_word' into x12
    lw x13, 0(x12)          # Load 32-bit signed word from address in x12 into x13

    # Load unsigned 16-bit half-word
    la x14, unsigned_halfword  # Load address of 'unsigned_halfword' into x14
    lhu x15, 0(x14)           # Load 16-bit unsigned half-word from address in x14 into x15

    # Load signed 16-bit half-word
    la x16, signed_halfword    # Load address of 'signed_halfword' into x16
    lh x17, 0(x16)            # Load 16-bit signed half-word from address in x16 into x17

    # Load unsigned 8-bit byte
    la x18, unsigned_byte     # Load address of 'unsigned_byte' into x18
    lbu x19, 0(x18)          # Load 8-bit unsigned byte from address in x18 into x19

    # Load signed 8-bit byte
    la x20, signed_byte       # Load address of 'signed_byte' into x20
    lb x21, 0(x20)            # Load 8-bit signed byte from address in x20 into x21