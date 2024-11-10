#1st
#Write an Assembly Program for addition of 2 words

.data
a: .word 0x12345678,0x11112222,0
.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
add x13,x11,x12
sw x13, 8(x10)

Observation - single cycle:

storing the base address of the word data in register then storing the data in registers 
with help of base address and offset value the addition of the two register is performed 
Register mapping:
x10 0x10000000
x11 0x12345678
x12 0x11112222
x13 0x2345789a

Data mapping:
0x10000008 0x2345789a
0x10000004 0x11112222
0x10000000 0x12345678

#2nd
#Write an Assembly Program for addition of 2 half words

.data                                                  
a: .half 0X1122,0X1111,0
.text
la x10,a 
lh x11,0(x10)
lh x12,2(x10)
add x13,x11,x12 
sh x13,4(x10)

Observation - single cycle:
The code defines a data section with an array a containing two 16-bit values, 0x1122 and 0x1111 , then loads the address of this array into register x10, and retrieves the two halfword values from the array into registers x11 and x12.
The code adds the values in x11 and x12, stores the result in x13, and then saves this result as a halfword at the memory address a+4. 

Register mapping:
x10 0x10000000
x11 0x00001122
x12 0x00001111
x13 0x00002233

Data mapping:
0x10000004 0x00002233
0x10000000 0x11111122

#3rd
#Write an Assembly Program for addition of 2 bytes

.data 
a: .byte 0x77, 0x00      
.text
la x10, a            
lb x11, 0(x10)      
lb x12, 2(x10)      
add x13, x11, x12    
sb x13, 4(x10)

Observation -single cycle:
This assembly code adds two bytes from memory and stores the result. The first byte, '0x77', is loaded into 'x11', but the second load 'lb x12, 2(x10)' attempts to access a byte beyond the initialized data, likely loading 0x00 (since it's out of bounds). The sum '0x77' is stored at an address offset by 4 bytes from 'a'.

Register mapping:
x10 0x10000000
x11 0x00000077
x12 0x00000000
x13 0x00000077

Data mapping:
0x10000004 0x00000077
0x10000000 0x00000077

#4th
#Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

.data
# 32-bit unsigned and signed words
unsigned_word: .word 0x0000abcd  # Unsigned 32-bit word (43981 in decimal)
signed_word:   .word 0x80001234  # Signed 32-bit word (-2147483644 in decimal)

# 16-bit unsigned and signed half-words
unsigned_halfword: .half 0xabcd  # Unsigned 16-bit half-word (43981 in decimal)
signed_halfword:   .half 0x8001  # Signed 16-bit half-word (-32767 in decimal)

# 8-bit unsigned and signed bytes
unsigned_byte: .byte 0xab  # Unsigned 8-bit byte (171 in decimal)
signed_byte:   .byte 0x80  # Signed 8-bit byte (-128 in decimal)

.text
    # Load unsigned 32-bit word
    la x10, unsigned_word   # Load address of 'unsigned_word' into x10
    lw x11, 0(x10)          # Load 32-bit unsigned word from address in x10 into x11

    # Load signed 32-bit word
    la x12, signed_word     # Load address of 'signed_word' into x12
    lw x13, 0(x12)          # Load 32-bit signed word from address in x12 into x13

    # Load unsigned 16-bit half-word
    la x14, unsigned_halfword  # Load address of 'unsigned_halfword' into x14
    lhu x15, 0(x14)           # Load 16-bit unsigned half-word from address in x14 into x15

    # Load signed 16-bit half-word
    la x16, signed_halfword    # Load address of 'signed_halfword' into x16
    lh x17, 0(x16)            # Load 16-bit signed half-word from address in x16 into x17

    # Load unsigned 8-bit byte
    la x18, unsigned_byte     # Load address of 'unsigned_byte' into x18
    lbu x19, 0(x18)          # Load 8-bit unsigned byte from address in x18 into x19

    # Load signed 8-bit byte
    la x20, signed_byte       # Load address of 'signed_byte' into x20
    lb x21, 0(x20)            # Load 8-bit signed byte from address in x20 into x21

Observation:
The assembly code demonstrates storing and loading various data types. It shows how a 32-bit unsigned word (0x0000ABCD, 43981) is loaded into x11, and a 32-bit signed word (0x80001234, -2147483644) into x13. It also handles 16-bit data, with an unsigned half-word (0xABCD, 43981) loaded into x15 and a signed half-word (0x8001, -32767) into x17. Finally, for 8-bit data, it loads an unsigned byte (0xAB, 171) into x19 and a signed byte (0x80, -128) into x21.

Register mapping :
x10 0x10000000
x11 0x0000abcd
x12 0x10000004
x13 0x80001234
x14 0x10000008
x15 0x0000abcd
x16 0x1000000a
x17 0xffff8001
x18 0x1000000c
x19 0x000000ab
x20 0x1000000d
x21 0xffffff80

Data mapping:
0x1000003c 0x00000000
0x10000030 0x00000000
0x10000024 0x00000000
0x10000018 0x00000000
0x10000010 0x00000000
0x1000000c 0x000080ab
0x10000008 0x8001abcd
0x10000004 0x80001234
0x10000000 0x0000abcd