.data
a:.dword 0xffffffffffffffff,0xffffffffffffffff 
b:.dword 0x0000000000000000
.text
# loading the address into registers
la x10,a
la x20,b
#loading only lsb of 2 doublewords into registers
lw x12,0(x10)
lw x14,8(x10)
#loading only msb of 2 double into registers.
lw x13,4(x10)
lw x15,12(x10)
#adding only lsb 
add x16,x12,x14
#checking is there any overflow while adding lsb.
sltu x18,x16,x14
#adding only msb
add x17,x13,x15
#adding overflow into overflow
add x19,x17,x18
#storing the 64 or 65 bit new result in memory.
sw x16,0(x20)
sw x19,4(x20)
sw x17,8(x20)
