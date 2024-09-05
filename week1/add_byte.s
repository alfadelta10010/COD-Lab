#assembly program to add two bytes
.data 
a: .byte 0x02,0x0D,0

.text
la x10,a
lb x11,0(x10)
lb x12,1(x10)
add x13,x12,x11
sb x13,2(x10)