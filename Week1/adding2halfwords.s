.data
a: .half 0x0001, 0x1234

# creating 2 halfwords with base address as a and offest of them are 0 and 2 respectively

.text
la x5,a    # loading the adddress of a in x5 register
lh x6,0(x5)    # loading the first halfword into first 2 bytes of x6 register
lh x7,2(x5)    # loading the second halfword into first 2 bytes of x7 register
add x8,x6,x7    # adding the two halfwords in x6,x7 and storing it in x8
sh x8,4(x5)    # now storing back the value in x8 to the next successive location in data memory with offset 4.

