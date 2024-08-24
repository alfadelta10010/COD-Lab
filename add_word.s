#assembly code for addition of 2 words

.data
a: .word 0x0001100 ,0x0001000,0

.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
add x13,x12,x11
sw x13,8(x10)
