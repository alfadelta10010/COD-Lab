.data
num1: .word 0xAABBCCDD, 0x11223344O
num2: .word 0x55667788, 0x99AABBCC
sum: .word 0, 0

.text
la x5, num1
la x6, num2
la x7, sum
lw x8, 0(x5)
lw x9, 0(x6)
add x10, x8, x9
sw x10, 0(x7)
lw x8, 4(x5)
lw x9, 4(x6)
sltu x11, x10, x9
add x10, x8, x9
add x10, x10, x11
sw x10, 4(x7)
li x12, 0
li x13, 89
