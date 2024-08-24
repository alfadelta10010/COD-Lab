.data 
a: .half 0xffff,0xeeee  #a is the reference for the base address, 16 bit number
.text                                              
la x10,a                       #load adrdress to base address of variable a into x10
lhu x11,0(x10)                  #load  halfword ,x11 is the destination with offset 0
lhu x12,2(x10)                  #lload halfword ,x12 is the destnination with offset 2
add x13,x11,x12                #adding halfword in x11 and x12 and storingit in x13
sh x13,4(x10)                  #storing halfword in x13