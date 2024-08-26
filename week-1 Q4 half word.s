.data
a: .half 0x8fff, 0x0001
.text
la x10,a ## to load the address
lh x11,0(x10) ## half word form memory to register(2 bytes form 0 to 1)
lh x12,2(x10) ## half word form memory to register(2 bytes form 2 to 3)
add x13,x11,x12 ## to add the two half word and store it in x13 register(2 byte at 2 and 3)
sw x11,4(x10) ## half word from register to memory (2 bytes from 4 and 5)
