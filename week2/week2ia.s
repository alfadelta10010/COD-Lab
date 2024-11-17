.data
n:.word 0x24,0x78
.text
la x10,n
lb x11,0(x10)
lb x12,1(x10)


add x13,x11,x12
sltu x16,x13,x11

sb x13,3(x10)
sb x16,4(x10)