.data
a: .word 0xFFFFFFFF 0xFFFFFFFF
b: .word 0xFFFFFFFF 0xFFFFFFFF
.text
la x10,a
la x11,b
lw x2,0(x10)
lw x3,4(x10)
lw x4,0(x11)
lw x5,4(x11)
add x2,x2,x3
sltu x6,x2,x3
add x4,x4,x5
sltu x7,x4,x5
add x8,x4,x6
