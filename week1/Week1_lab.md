# Program 1: 
### Statement: Write an assembly language for addition of 2 words

### Name of file:
<COD-Lab/Week1/Program1.s>

### Observation - Single Cycle
- This program loads 2 32bit words from a, a+4 into registers x11 and x12.
- It then performs the add operation and stores the result in register x13 with an offset of 8bits
- And we can see the result x11+x12 (0x12345678+0x00000001=0x12345679) stored in x13 register.
 
### Register Mapping
- x11 - 0x00000001
- x12 - 0x12345678
- x13 - 0x12345679

### Data Mapping
- 0x10000008 - 0x12345679
- 0x10000004 - 0x12345678
- 0x10000000 - 0x00000001

# Program 2: 
### Statement: Write an assembly program for addition of 2 half words.

### Name of file:
<COD-Lab/Week1/Program2.s>

### Observation - Single Cycle
- This program loads 2, 16bit half words from memory locations a and a+2 and stores them in registers x11 and x12
- It adds the 2 values togather and storers them  at memory locations a+4 in register x13
- And we can see the result of the addition x11, x12 (0x1234+0x0001=0x1235) stored in x13
 
### Register Mapping
- x11 - 0x0001
- x12 - 0x1234
- x13 - 0x1235

### Data Mapping
- 0x10000004 - 0x00001235
- 0x10000000 - 0x12340001

# Program 3: 
### Statement: Write an assembly program for addition of 2 bytes.

### Name of file:
<COD-Lab/Week1/Program3.s>

### Observation - Single Cycle
- .data section: stores 2, 8bit byte values in memory 0x01 and 0x12
- .text part loads the byte at register x11 and since we use lb 0x01 is stored with sign extension same way 0x12 is also stored in register x12
- Add operation is performed between x11 and x12 (0x01+0x12=0x13) and the sb instruction stores the bit into register x13.
 
### Register Mapping
- x11 - 0x01
- x12 - 0x12
- x13 - 0x13

### Data Mapping
- 0x10000004 - 0x00000000
- 0x10000000 - 0x00131201

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
<COD-Lab/Week1/Program4.s>

### Observation - Single Cycle
- .data section: stores 2, 8bit byte values in memory 0x01 and 0x12
- lbu x11, 0(x10) stores the byte at memory address 0(x10) into x11, since lbu is used 0x01 is loaded into x11 with zero extended making it 0x00000001 and similarly x12 is stored as zero extended 0x00000012
- and then addition is performed on x11 and x12 which results in 0x13 and is stored in register x13
- the store byte(sb) operation then stores the 8bit result from x13 into memory at adress 2(x10)
- similarly we can see it stored for unsigned half words too.
### Register Mapping
- x11 - 0x01
- x12 - 0x12
- x13 - 0x13

### Data Mapping
- 0x10000004 - 0x00000000
- 0x10000000 - 0x00131201






