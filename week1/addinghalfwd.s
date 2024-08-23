.data
a: .half 0x0210, 0x1101              # two half words

.text
la x10,a           #loading of the base address to the register
lhu x11,0(x10)     #loading unsigned first halfword into reg x11 with offset 0
lhu x12,2(x10)     #loaing of second halfword into reg x12 with offset 2 
add x13,x12,x11    # adding operation on the two halfword and storing in register x13
sh x13,4(x10)      # now we store the added value present in reg x13 into data memory at with location specified 