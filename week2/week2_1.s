.data
a: .half 0x1234,0x5678,0x9ABC,0xDEF1,0x0111,0x2131,0x4151,0x6171,0x8191,0xA1B1,0xC1D1 #array of 11 elements

.text
la x10,a
addi x11,x0,0 # x11 mapped to h
add x12,x0,x0 # i
addi x14,x0,11 #give the maximum count value
again:
lhu x13,0(x10) #load the first element into x13
add x11,x11,x13 #add the first index value with h
addi x12,x12,1 #increment the i
addi x10,x10,2 #increment the base address by 2 because its a half word (half=16bits, and caz of byte addressable, each location is 8 bits and needs 2 locations to store 1 half word)
bne x12,x14,again
sh x11,0(x10)
