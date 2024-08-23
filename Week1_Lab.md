# Program 1: 
### Statement: 
Write an Assembly Program for addition of 2 words

### Name of file:
week1.s

### Observation - Single Cycle
- The code defines an array a in memory with two 32-bit integers: 0x12345648 and 0x18112222.
It loads the address of this array into register x10 and then retrieves the two integers from the array into registers x11 and x12.
It adds these two integers and stores the result at the memory address a+8.
 
### Register Mapping
- **<Register Number Used>:** 
x10:0x10000000
x11:0x12345648
x12:0x18112222
x13:0x2a45786a

### Data Mapping
- **<Memory Address>:** 
0x10000008:0x2a45786a
0x10000004:0x18112222
0x10000000:0x12345648




# Program 2: 
### Statement: 
Write an Assembly Program for addition of 2 half words

### Name of file:
week1.s

### Observation - Single Cycle
- The code defines a data section with an array a containing two 16-bit values, 0x1234 and 0x1811.
It then loads the address of this array into register x10, and retrieves the two halfword values from the array into registers x11 and x12.
The code adds the values in x11 and x12, stores the result in x13, and then saves this result as a halfword at the memory address a+4.
 
### Register Mapping
- **<Register Number Used>:** 
x10:0x10000000
x11:0x00001234
x12:0x00001811
x13:0x00002a45

### Data Mapping
- **<Memory Address>:** 
0x10000004:0x00002a45
0x10000000:0x18111234



# Program 3: 
### Statement: 
Write an Assembly Program for addition of 2 bytes

### Name of file: 
week1.s

### Observation - Single Cycle
- Memory Setup: The .data section defines an array a with two bytes, 0x34 and 0x00.

Load Values: The .text section loads the address of the array a into register x10, then loads the first byte (0x34) into register x11 and attempts to load a byte from a+2 into register x12. However, since the array only has two bytes, a+2 is out of bounds, which could cause unintended behavior.

Perform and Store Operation: The code adds the values in x11 and x12, stores the result in x13, and then writes the result to memory at a+4.
 
### Register Mapping
- **<Register Number Used>:** 
x10:0x10000000
x11:0x00000034
x12:0x00000000
x13:0x00000034

### Data Mapping
- **<Memory Address>:** 
0x10000004:0x00000034
0x10000000:0x00000034



# Program 4: 
### Statement: 
Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
week1.s

### Observation - Single Cycle
The code defines three arrays in memory: a (8-bit values), b (16-bit values), and c (32-bit values) and then manipulates them by loading and storing specific elements using RISC-V assembly instructions.
It loads the first 32-bit word from array c into a register and copies it to overwrite the second word, effectively duplicating the first word across both positions in c.
It modifies array b by copying the first 16-bit halfword to the second position, and modifies the second byte of the first word in array c by copying the least significant byte of that word.
 
### Register Mapping
- **<Register Number Used>:**
x1:0x12345648
x2:0x00000048
x3:0x00000048
x12:0x10000009
x13:0x10000003
x14:0x10000009

### Data Mapping
- **<Memory Address>:** 
0x10000020:0x00000000
0x10000010:0x00000012
0x1000000c:0x34564812
0x10000008:0x10000008
0x10000004:0x00123412
0x10000000:0x34001113
