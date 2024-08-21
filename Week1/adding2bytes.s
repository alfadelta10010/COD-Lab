.data
a: .byte 0x01, 0x12

# creating 2 words with base address as a and offest of them are 0 and 4 respectively

.text
la x5,a    # loading the adddress of a in x5 register
lw x6,0(x5)    # loading the first byte into 1 byte of x6 register
lw x7,1(x5)    # loading the second byte into 1 byte ofx7 register
add x8,x6,x7    # adding the two bytes in x6,x7 and storing it in x8
sw x8,2(x5)    # now storing back the value in x8 to the next successive location in data memory with offset 2.
