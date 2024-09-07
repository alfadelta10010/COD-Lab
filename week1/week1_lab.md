# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
add_word.s

### Observation - Single Cycle
- In the .data segment we are defining an array 'a' with three 32 bit words
- In the .text segment we are first loading the address of 'a' into register x10 following which the 2 words to be added are loaded into the x11(a[0]) and x12(a[1]) registers using the 'lw' instruction.
- The 2 words are added and the result is stored in the x13 register.The value in x13 register is then stored in memory at the x10+8 position using the 'sw' instruction.

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x000000a2
- **x12:** 0x000f5622
- **x13:** 0x000f56c4

### Data Mapping
- **0x10000008:** 0x000f56c4
- **0x10000004:** 0x000f5622
- **0x10000000:** 0x000000a2

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
add_hword.s

### Observation - Single Cycle
- defining an array 'a' with three half words(16 bits)
- The address of 'a' is loaded into x10 using 'la' instruction and the 2 half words to be added are loaded in the x11 and x12 destination registers using the 'lh' instruction respectively(the remaining 4 bytes in the register will hold the sign of the half word.'f' if the msb is 1 else '0')
- The 2 half words are added and stored in x13 using the 'add' instruction after which the added result is stored in the memory using 'sh' instruction.(THe half words stored in memory follows the Little Endian format) 

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x000000f3
- **x12:** 0x00000000
- **x13:** 0x000000f3

### Data Mapping
- **0x10000008:** 0x00000000
- **0x10000004:** 0x000000f3
- **0x10000000:** 0x000000f3


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
add_byte.s

### Observation - Single Cycle
- Defining 2 bytes of size 8 bits each in the data segment
- The address of 'a' is loaded into a register using the 'la' instruction. Following which the the two bytes are loaded into two registers using the 'lb' instruction.(The msb of the byte decides the sign extension of the remaining bytes in the register)
- the two bytes are added and then stored in a register after which the added value is updated in the memory using the 'sb' instruction.(The data is stored in memory according to the Little Endian format)

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000001
- **x12:** 0x0000000f
- **x13:** 0x00000010


### Data Mapping
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00100f01


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
sign_un.s

### Observation - Single Cycle
- A word, half word and a byte is defined 
- The signed and unsigned half words are stored in different registers.
- The signed and unsigned bytes are loaded in different destination registers.(If the msb is 1, then the remaining bytes are filled with 'f' else '0' )

### Register Mapping
- **x8:** 0x10000006
- **x9:** 0x10000004
- **x10:** 0x10000000
- **x11:** 0x000000f3
- **x12:** 0x000000f3
- **x13:** 0xfffffff4
- **x14:** 0x000000f4
- **x15:** 0x0000ff23


### Data Mapping
- **0x10000000:** 0xfa1823b7
- **0x10000000:** 0x00f2c3b7