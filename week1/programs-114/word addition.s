.data
a: .word 0x84f6,0x0f61,0

.text
la x10,a
lw x7, 0x00(x10) 
lw x8, 0x02(x10)
add x9,x7,x8
sw x9,0x08(x10)