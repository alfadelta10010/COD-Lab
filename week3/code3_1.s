#Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
.data
a: .word 0x12345678
b: .word 0x0
.text
la x5,a
la x28,b

addi x6,x0,0x0ff
lw x7,0(x5)
and x18,x7,x6

srai x29,x7,8 # this value should be in bits
and x19,x29,x6

srai x30,x29,8
and x20,x30,x6

srai x31,x30,8
and x21,x31,x6

sb x21,0(x28)
sb x20,1(x28)
sb x19,2(x28)
sb x18,3(x28)
