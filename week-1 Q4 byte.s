.data
a: .byte 0xfe,0x01
.text
la x10,a ## to load the address
lb x11,0(x10) ## byte form memory to register(1 byte at 0)
lb x12,1(x10) ## byte form memory to register(1 byte at 1)
add x13,x11,x12 ## to add the two byte and store it in x13 register(1 byte at 2)
sb x13,2(x10) ## byte from register to memory (1 byte at 2)
