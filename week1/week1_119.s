#1. An Assembly Program for addition of 2 words
.data 
a: .word 0xABCD1234, 0x5678EF90, 0       # defining an array 'a' with three half words

.text
la x5,a                #loading the address of 'a' in x5
lw x6,0(x5)            #loading the first word from a[0] into x6
lw x7,4(x5)            #loading the second word from a[1] into x7
add x8,x7,x6           #adding the values of x6 and x7 and storing it in x8
sw x8, 8(x5)           #storing the result from x8 into a[2]



#2. An Assembly Program for addition of 2 half words
.data 
a: .half 0x1234, 0x5678, 0           # defining an array 'a' with three 16-bit half-words

.text
la x9, a                        # load the base address of 'a' into register x9
lh x10, 0(x9)                   # load the first half-word from 'a[0]' into x10
lh x11, 2(x9)                   # load the second half-word from 'a[1]' into x11
add x12, x10, x11               # add the values in x10 and x11, store the result in x12
sh x12, 4(x9)                   # store the result from x12 into 'a[2]'


#3. An Assembly Program for addition of 2 bytes
.data 
a: .byte 0x12, 0x34, 0           # define an array 'a' with three 8-bit bytes

.text
la x14, a                       # load the base address of 'a' into register x14
lb x15, 0(x14)                  # load the first byte from 'a[0]' into x15
lb x16, 1(x14)                  # load the second byte from 'a[1]' into x16
add x17, x15, x16               # add the values in x15 and x16, store the result in x17
sb x17, 2(x14)                  # store the result from x17 into 'a[2]'



#4. An Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
.data 
a:  .word 0x12345678          # New 32-bit word value
b:  .half 0x9ABC              # New 16-bit half-word value
c:  .byte 0x3F                # New 8-bit byte value

# Variables to store results
stored_word:   .word 0
stored_half:   .half 0
stored_byte:   .byte 0

.text
lw x15, a                     # load 32-bit word from 'a' into x15
la x16, b                     # load the address of 'b' into x16
lh x17, 0(x16)                # load signed half-word from 'b' into x17
lhu x18, 0(x16)               # load unsigned half-word from 'b' into x18
la x19, c                     # load the address of 'c' into x19
lb x20, 0(x19)                # load signed byte from 'c' into x20
lbu x21, 0(x19)               # load unsigned byte from 'c' into x21

# Store the loaded values into new memory locations
la x22, stored_word           # load the address of 'stored_word' into x22
sw x15, 0(x22)                # store the 32-bit word in x15 to 'stored_word'

la x23, stored_half           # load the address of 'stored_half' into x23
sh x17, 0(x23)                # store the signed half-word in x17 to 'stored_half'

la x24, stored_half           # load the address of 'stored_half' into x24
sh x18, 2(x24)                # store the unsigned half-word in x18 to 'stored_half' at offset

la x25, stored_byte           # load the address of 'stored_byte' into x25
sb x20, 0(x25)                # store the signed byte in x20 to 'stored_byte'

la x26, stored_byte           # load the address of 'stored_byte' into x26
sb x21, 1(x26)                # store the unsigned byte in x21 to 'stored_byte' at offset
