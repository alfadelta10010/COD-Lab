.data
a: .byte 0x02,0x26
.text
la x10,a # load address
lb x11,0(x10) 
lb x12,1(x10)
add x13,x11,x12 #addition
sb x13,2(x10) #storing byte
