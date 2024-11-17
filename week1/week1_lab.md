Week1


i)Write an Assembly Program for addition of 2 64-bit numbers on RV32I
a: .dword 0x8000123400001234, 0x9000012300001234
.text
la x1,a
lw s1,0(x1)
lw s2,8(x1)
add s3,s1,s2
sltu s4,s3,s2
sw s4,20(x1)
lw s1,4(x1)
lw s2,12(x1)
lw s10,20(x1)
add s5,s10,s2
add s6,s5,s1
sltu s8,s6,s5



ii)Convert a 32-bit value from Little Endian to Big Endian format using RISC-V
assembly
.data
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)
andi x12,x11,0xFF
addi x15,x0,3
hello:
 slli x12,x12,8
 srli x11,x11,8
 andi x13,x11,0xFF
 add x12,x12,x13
 addi x15,x15,-1
bne x15,x0,hello
