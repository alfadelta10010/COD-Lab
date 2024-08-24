.data
n:.byte 0x12,0x34
.text
la x8,n
lb x9,0(x8)
lb x10,1(x8)


add x11,x9,x10
sltu x12,x11,x9

sb x11,3(x8)
sb x12,4(x8)