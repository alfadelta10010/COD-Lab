.data
b: .byte 0xA0        #Store a signed byte (-96 in decimal)
   .half 0xF000      #Store a signed half word (-4096 in decimal)
   .word 0xC0000000  #Store a signed word (-1073741824 in decimal)

.text

la x20,b             #Load the base address of b into x20

lb x21,0(x20)        #Load the signed byte into x21; result will be 0xFFFFFFA0 (sign extended to 32 bits)
lbu x22,0(x20)       #Load the unsigned byte into x22; result will be 0x000000A0 (zero extended)

lh x23,1(x20)        #Load the signed half word into x23; result will be 0xFFFFF000 (sign extended to 32 bits)
lhu x24,1(x20)       #Load the unsigned half word into x24; result will be 0x0000F000 (zero extended)

lw x25,3(x20)        #Load the signed word into x25; the value will be 0xC0000000 (already 32 bits)
