# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words
.data
a: .word 0x80000002, 0x9123456A
.text
la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
add x13, x11, x12
sw x13, 8(x10)


# Program 2: 
### Statement:Write an Assembly Program for addition of 2 half words
.data
a: .half 0x8002, 0x9432
.text
la x10, a
lh x11, 0(x10)
lh x12, 2(x10)
add x13, x11, x12
sh x13, 4(x10)


# Program 3: 
### Statement:Write an Assembly Program for addition of 2 bytes
.data
a: .byte 0x82, 0x32
.text
la x10, a
lb x11, 0(x10)
lb x12, 1(x10)
add x13, x11, x12
sb x13, 2(x10)


# Program 4: 
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
#signed byte
.data
a: .byte 0xFF
.text
la x10, a
lb x11, 0(x10)
sb x11, 1(x10)

#unsigned byte
#.data
#a: .byte 0xFF
#.text
#la x10, a
#lbu x11, 0(x10)
#sb x11, 1(x10)

#signed half word
#.data
#a: .byte 0xFFFF
#.text
#la x10, a
#lh x11, 0(x10)
#sh x11, 1(x10)

#unsigned half word
#.data
#a: .byte 0xFFFF
#.text
#la x10, a
#lhu x11, 0(x10)
#sh x11, 1(x10)

#signed word
#.data
#a: .word 0xFFFFFFFF
#.text
#la x10, a
#lw x11, 0(x10)
#sw x11, 1(x10)

#unsigned word
#.data
#a: .word 0xFFFFFFFF
#.text
#la x10, a
#lwu x11, 0(x10)
#sw x11, 1(x10)














