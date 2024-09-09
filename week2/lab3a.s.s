# write a prog using rv32 processor to add 2 64 bit unsigned numbes and store the result in memory
.data
a: .dword 0xffffffffffffffff,0xffffffffffffffff

.text
 
la x10,a
lw x11,0(x10)
lw x12,4(x10)
lw x13,8(x10)
lw x14,12(x10)

add x15,x11,x13

sltu x18,x15,x11
add x19,x14,x18

add x16, x12 ,x19
sltu x17,x16,x14

sw x16,16(x10)
sw x15,20(x10)

