.data
a: .word 0x00000001, 0x123456AB

# creating 2 words with base address as a and offest of them are 0 and 4 respectively

.text
la x5,a    # loading the adddress of a in x5 register
lw x6,0(x5)    # loading the first word into x6 register
lw x7,4(x5)    # loading the second word into x7 register
add x8,x6,x7    # adding the two words in x6,x7 and storing it in x8
sw x8,8(x5)    # now storing back the value in x8 to the next successive location in data memory
