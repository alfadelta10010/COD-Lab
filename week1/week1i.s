
.data 
a: .word 0x00000000 0x22222222
.text
la x10,a
lw x2,0(x10)
lw x3,4(x10)
add x4,x2,x3
