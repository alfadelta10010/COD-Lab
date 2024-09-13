#write a program to add two 32 bit number unsigned 0x80000002, 0x9123456A

.data
a: .word 0x80000002,0x9123456A
.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
add x13,x11,x12
sltu x14,x13,x12   #sltu set less than unsigned --it will compare x13 and x12 if (x13<12) then x14 =01 otherwise 0
sw x13,8(x10)       #sltu is an R type instruction because all the operands ARE REGISTERS

