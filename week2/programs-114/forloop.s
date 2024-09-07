.data
a: .half 0x1234,0x5678,0x9ABC,0xDEF1,0x0111,0x2131,0x4151,0x6171,0x8191,0xA1B1,0xC1D1 

.text
la x5,a
addi x6,x0,0 
add x7,x0,x0 
addi x8,x0,11 
again:
lhu x13,0(x5) 
add x6,x6,x13 
addi x7,x7,1
addi x5,x5,2 
bne x7,x8,again
sh x6,0(x5)