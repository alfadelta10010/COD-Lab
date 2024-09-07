#2.Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
.data
n: .word 0x00000001,0x00000000,0xffffffff,0x00000000

.text
la x9,n

lw x5,0(x9)
lw x6,0x04(x9)
lw x7,0x08(x9)
lw x28,0x0c(x9)
add x30,x5,x7
sltu x26,x30,x5

add x31,x6,x28
add x25,x31,x26

sltu x27,x31,x6