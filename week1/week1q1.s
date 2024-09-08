.data
a: .word 0x80000002, 0x9123456A
.text
la x10, a #loading base address
lw x11, 0(x10) #loading values in register
lw x12, 4(x10) #loading values in register
add x13, x11, x12 #sum of the values into x13
sw x13, 8(x10) #storing in memory
