.data
a:.word 0x11111111,0x22222222,0x33333333,0x44444444
b:.word 0x55555555,0x66666666,0x77777777,0x88888888
c:.word 0x00000000,0x00000000,0x00000000,0x00000000
.text
#loading the addres
la x5,a
la x6,b
la x7,c

#adding 0th elements
lw x10,0(x5)
lw x11,0(x6)
add x20,x10,x11
sw x20,0(x7)

#adding 0th elements
lw x12,4(x5)
lw x13,4(x6)
add x21,x12,x13
sw x21,4(x7)

#adding 0th elements
lw x14,8(x5)
lw x15,8(x6)
add x22,x14,x15
sw x22,8(x7)

#adding 0th elements
lw x16,12(x5)
lw x17,12(x6)
add x23,x16,x17
sw x23,12(x7)
