# Program 1: 
### Statement: Write an assembly language for addition of 2 words

### Name of file:
<COD-Lab/Week1/add_word.s>

### Observation - Single Cycle
- This program loads 2 32bit words from a, a+4 into registers x11 and x12.
- It then performs the add operation and stores the result in register x13 with an offset of 8bits
- And we can see the result x11+x12 (0x12345678+0x00000001=0x12345679) stored in x13 register.
 
### Register Mapping
- x11 - 0x55555555
- x12 - 0x11111111
- x13 - 0x66666666

### Data Mapping
- 0x10000008 - 0x66666666
- 0x10000004 - 0x11111111
- 0x10000000 - 0x55555555

# Program 2: 
### Statement: Write an assembly program for addition of 2 half words.

### Name of file:
<COD-Lab/Week1/add_half.s>

### Observation - Single Cycle
- This program loads 2, 16bit half words from memory locations a and a+2 and stores them in registers x11 and x12
- It adds the 2 values togather and storers them  at memory locations a+4 in register x13
- And we can see the result of the addition x11, x12 (0x1234+0x0001=0x1235) stored in x13
 
### Register Mapping
- x11 - 0x5555
- x12 - 0x1111
- x13 - 0x6666

### Data Mapping
- 0x10000008 - 0x00006666
- 0x10000004 - 0x00001111
- 0x10000000 - 0x00005555

# Program 3: 
### Statement: Write an assembly program for addition of 2 bytes.

### Name of file:
<COD-Lab/Week1/add_bytes.s>

### Observation - Single Cycle
- .data section: stores 2, 8bit byte values in memory 0x01 and 0x12
- .text part loads the byte at register x11 and since we use lb 0x01 is stored with sign extension same way 0x12 is also stored in register x12
- Add operation is performed between x11 and x12 (0x01+0x12=0x13) and the sb instruction stores the bit into register x13.
 
### Register Mapping
- x11 - 0x55
- x12 - 0x11
- x13 - 0x66

### Data Mapping
- 0x10000004 - 0x00000011
- 0x10000000 - 0x00000055

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
<COD-Lab/Week1/Program4.s>

### Observation - Single Cycle
- The program loads signed halfwords and bytes from memory, performs arithmetic operations on them, and stores the results in registers.
- It loads unsigned halfwords and bytes separately and performs similar arithmetic operations.
- Finally, the program stores the results back into memory.
### Register Mapping
- x11 = 0x1001
- x12 = 0x1003
- x14 = 0x1e (byte, unsigned or signed)
- x15 = 0x123f (half-word, unsigned or signed)
- x16 = 0xe345f567 (word, unsigned or signed)

### Data Mapping
- 0x1000 = 0x1e
- 0x1001 = 0x1e 
- 0x1003 = 0x123f 
- 0x1007 = 0xe345f567
