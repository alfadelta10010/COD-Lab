.data
n: .word 5
result: .word 1
.text
main:
la x10, n
lw x11, 0(x10)
la x12, result
addi x13, x0, 1
loop:
mul x13, x13, x11
addi x11, x11, -1
bgt x11, x0, loop
sw x13, 0(x12)
halt:
 