# write a program to add -3 with +1
# assume they are 8 bit signed numbers

.data
a: .byte 0xFD, 0x01
.text

la x10, a
lb x5, 0x00(x10)
lb x6, 0x01(x10)
add x7,x6,x5
sw x7, 0x04(x10)