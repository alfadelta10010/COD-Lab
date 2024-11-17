#Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

.data
n1: .word 0x00000001,0x00000000
n2: .word 0xffffffff,0x00000000
n3: .word 0x00000000,0x00000000

.text
la x18,n1
la x19,n2
la x21,n3

lw x5,0(x18)
lw x6,0(x19)
lw x7,4(x18)
lw x8,4(x19)

add x20,x5,x6
sw x20,0(x21)
sltu x5,x20,x5

add x6,x7,x8
add x6,x6,x5
sw x6,4(x21)


