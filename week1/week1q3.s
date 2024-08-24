.data
a: .byte 0x12, 0x32
.text
la x10, a #loading base address
lb x11, 0(x10) #loading value into register
lb x12, 1(x10) #loading value into register
add x13, x11, x12 #sum of values to be stored in x13
sb x13, 2(x10) #storing in memory
