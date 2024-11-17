.data
array: .word 5, 3, 8, 6, 2, 4
n: .word 6
.text
main:
la x10, array
lw x11, n
addi x12, x11, -1
addi x13, x0, 0
outer:
addi x12, x12, -1
addi x13, x0, 0
inner:
slli x14, x13, 2
add x15, x10, x14
lw x16, 0(x15)
lw x17, 4(x15)
blt x16, x17, noswap
sw x17, 0(x15)
sw x16, 4(x15)
noswap:
addi x13, x13, 1
blt x13, x12, inner
bge x12, x0, outer
halt:
 