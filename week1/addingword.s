.data
a: .word 0x00013412, 0x00030124            # giving two numbers to be added

.text

la x9,a                     # loading the base address of a to register
lw x10,0(x9)                # loading a word into register with offset 0   (offset=index*size of datatype in bytes)
lw x11,4(x9)                # loading another word into register with offset 4 since it is word 
add x12,x11,x10             # add operation adds two word with destination register followed by the registers whose values are to be added
sw x12,8(x9)                # now we store the added value in the data memory with source reg and the location with offset

 