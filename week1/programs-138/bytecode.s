.data 
a: .byte 0x5,0x8,0

.text
la x10,a
lb x7,0(x10)
lb x8,1(x10)
add x11,x7,x8
sb x11,2(x10)
