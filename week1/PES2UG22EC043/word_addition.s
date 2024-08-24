# write a program to add two 32 bit numbers, 0x80000002 and 0x9123456A

.data
a: .word 0x80000002, 0x9123456A
.text

la x10, a
lw x5, 0x00(x10)
lw x6, 0x04(x10)
add x7,x6,x5
sw x7, 0x08(x10)
