.data
a: .word 0x80001234, 0x90000123, 0
.text
la x10,a
lw x11,0(x10)
lw x12, 4(x10)
add x13,x11,x12
sltu x14,x13,x12 #different register to compare two unsigned results
sw x13,8(x10)
sw x14,12(x10) #stores carry