.data
a:.dword 0xFFFFFFFCFFFFFBBF
b:.dword 0x00000001ffffffef,0x00


.text
la x1,a
la x2,b
lw x3,0x0(x1)
lw x4,0x4(x1)
lw x5,0x0(x2)
lw x6,0x4(x2)
add x7,x3,x5
sltu x8,x7,x3  #x8 carry=1
add x10,x4,x6
sltu x11,x10,x4 #x11 carry=0
add x10,x10,x8  #carry added to x10
sltu x12,x10,x4
sw x7,0x8(x2)
sw x10,0x12(x2)
sw x12,0x16(x2)