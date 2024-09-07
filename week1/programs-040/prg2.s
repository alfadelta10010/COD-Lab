#writr in data memory
.data
a: .half 0x1234,0x1235
.text
la x10,a   #loading base address
lh x9,0(x10) #load nums from data memory
lh x8,2(x10) 
#add
add x6,x9,x8 
#carry
sltu x7,x6,x8
#stores to data memory
sh x6,4(x10)
sh x7,6(x10)