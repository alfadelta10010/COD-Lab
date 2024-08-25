.data
n:.byte 0x34,0x45
.text
la x1,n
lb x11,0(x1)
lb x12,1(x1)


add x13,x11,x12
sltu x16,x13,x11

sb x13,3(x1)
sb x16,4(x1)