#Program 1:Write an Assembly Program for the following C code:
.data
a: .half 0x0000,0x1000,0x0200,0x0030,0x0001,0x0101,0x2010,0x0010,0x1023,0x2011,0x0001
.text
la x1,a
lh x2,0(x1)
lh x3,2(x1)
add x4,x2,x3
sh x4,20(x1)

lh x5,4(x1)
add x6,x4,x5
sh x6,20(x1)

lh x7,6(x1)
add x8,x7,x6
sh x8,20(x1)

lh x9,8(x1)
add x10,x8,x9
sh x10,20(x1)

lh x11,10(x1)
add x12,x11,x10
sh x12,20(x1)

lh x13,12(x1)
add x14,x12,x13
sh x14,20(x1)

lh x15,14(x1)
add x16,x14,x15
sh x16,20(x1)

lh x17,16(x1)
add x18,x17,x16
sh x18,20(x1)

lh x19,18(x1)
add x20,x19,x18
sh x20,20(x1)

lh x21,22(x1)
add x22,x21,x20
sh x22,18(x1)



#added sum is stored in register x20
#-----------------------------------------------------------------------------

#PROGRAM 2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
.data
b: .word 0xFEABCFDE,0xFFEEACDB,0xEEEEAAAA,0xBBBBCCCC,0
.text
la x10,b
lw x11,0(x10)
lw x12,8(x10)
add x13,x11,x12
sltu x18,x13,x11 #to check for carry
lw x14,4(x10)
lw x15,12(x10)
add x16,x15,x14
add x17,x16,x18
sltu x19,x17,x16 #to check for carry

