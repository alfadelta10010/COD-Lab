.data
a: .word 0x80000002,0x9123456A
.text
la x10,a
lw x12,0(x10)
lw x13,4(x10)
add x14,x13,x12
sw x14,8(x10)
}
