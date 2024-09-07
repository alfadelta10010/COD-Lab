#assembly program for addition of 2 bytes

.data 
a: .byte 0x01,0x0F,0

.text
la x10,a
lb x11,0(x10)
lb x12,1(x10)
add x13,x12,x11
sb x13,2(x10)
