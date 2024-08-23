.data 
a: .word 0x54e3,0x0104,0

.text
la x10,a
lw x7,0(x10)
lw x8,4(x10)
add x11,x7,x8
sw x11,8(x10)
