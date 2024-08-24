.data
n1: .byte 0x01,0x04

.text
la x10,n1
lb x11,0(x10)
lb x12,1(x10)
add x13,x12,x11
sb x13,2(x10)
