#write a program using rv32i single cycle riscv processor to perform addition of 2 64 bit numbers
#and store result in memory
.data
n1:.dword 0xFFFFFFFEFFFFFFFF
n2:.dword 0x00000001FFFFFFFF,0x00
.text
la x1,n1
la x2,n2
lw x4,0x00(x1)
lw x3,0x04(x1)
lw x6,0x00(x2)
lw x5,0x04(x2)
add x8,x3,x5
sltu x9,x8,x3  #x9 is carry
add x10,x4,x6
sltu x12,x10,x4
add x10,x10,x9
sltu x11,x10,x4 #x11 is carry
or x13,x11,x12 #final Carry at 13
sw x8,0x08(x2)
sw x10,0x0c(x2)
sw x13,0x10(x2)