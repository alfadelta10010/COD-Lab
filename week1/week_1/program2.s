.data                                     
a: .half 0xffff, 0xffff               #a is the reference for the base address , 16-bit number
.text                                    
la x10,a                              #load address to base address of variable a into x10
lhu x5,0(x10)                          #load halfword,x5 is the destination with offset 0
lhu x6,2(x10)                          #load halfword,x6 is the destination with offset 2
add x7,x5,x6                          #adding halfword in x5 and x6 and storing in reg x7
sh x7,4(x10)