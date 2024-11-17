.data
b: .byte 0x45,0x11               # two byte values

.text
la x9,b              #laoding the base address of variable b into a reg
lbu x11,0(x9)        #loading one byte value into one of the reg with offset being 0
lbu x12,1(x9)        #loading second byte value into other reg with offset 1 as it is a byte datatype
add x13,x12,x11      #add operation on two byte number and the value is stored in reg x13 
sb x13,2(x9)         #now we store the added value present in x13 into datamemory with offset 2 