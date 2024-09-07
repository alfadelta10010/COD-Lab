1.Write an Assembly Program for addition of 2 words

.data
a: .word 0x12345678,0x11112222,0
.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
add x13,x11,x12
sw x13, 8(x10)

2.Write an Assembly Program for addition of 2 half words

.data
a: .half 0X1122,0X1111,0
.text
la x10,a
lh x11,0(x10)
lh x12,2(x10)
add x13,x11,x12
sh x13,4(x10)

3.Write an Assembly Program for addition of 2 bytes

.data
a: .byte 0x77, 0x00
.text
la x10, a
lb x11, 0(x10)
lb x12, 2(x10)
add x13, x11, x12
sb x13, 4(x10)

4.Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

.data
# 32-bit unsigned and signed words
unsigned_word: .word 0x0000abcd
signed_word:   .word 0x80001234

# 16-bit unsigned and signed half-words
unsigned_halfword: .half 0xabcd  
signed_halfword:   .half 0x8001  

# 8-bit unsigned and signed bytes
unsigned_byte: .byte 0xab 
signed_byte:   .byte 0x80  

.text
    # Load unsigned 32-bit word
    la x10, unsigned_word
    lw x11, 0(x10)

    # Load signed 32-bit word
    la x12, signed_word
    lw x13, 0(x12)          

    # Load unsigned 16-bit half-word
    la x14, unsigned_halfword
    lhu x15, 0(x14)

    # Load signed 16-bit half-word
    la x16, signed_halfword
    lh x17, 0(x16)

    # Load unsigned 8-bit byte
    la x18, unsigned_byte
    lbu x19, 0(x18)

    # Load signed 8-bit byte
    la x20, signed_byte
    lb x21, 0(x20)

