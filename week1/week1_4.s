.data
a: .byte 0x80
.half 0x8000
.word 0x80000000

.text

la x10,a
lb s0,0(x10) #first data stored as 0xffffff80 since msb = 1
lbu s1,0(x10) #since we are giving unsigned, there is padding of 1s in the MSB

lh s2,1(x10) #similarly for half word
lhu s3,1(x10)

lw s4,3(x10) #for word, since its a 32 bits and the register size is also 32 bits,
             # there is no lwu, thus the signed bit is the last MSB bit in the word