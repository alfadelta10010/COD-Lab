.data
a: .word 0x22311234

.text
la x10, a
lw x11, 3(x10)
add x12, x11, x12
add x14, x14, x12
sw x12, 12(x10)

lw x11, 2(x10)
slli x12, x12, 8
sub x13, x11, x12
slli x13, x13, 8
add x15, x11, x15
add x14, x14, x13
  
sw x14, 12(x10)
  
addi x12, x0, 0
addi x13, x0, 0
  
lw x11, 1(x10)
slli x12, x15, 8
sub x13, x11, x12
slli x13, x13, 16
addi x15, x0, 0
add x15, x11, x15
add x14, x14, x13
sw x14, 12(x10)

addi x12, x0, 0
addi x13, x0, 0

lw x11, 0(x10)
add x12, x12, x15
slli x12, x12, 8
sub x13, x11, x12
slli x13, x13, 24
add x14, x14, x13