# Program 1: 
### Statement:
1.Write an Assembly Program for addition of 2 words
### Name of file:
week1_lad.s
### Observation - Single Cycle
storing the base address of the word data in register then storing the data in registers 
with help of base address and offset value the addition of the two register is performed
### Register Mapping
x10 0x10000000
x11 0x12345678
x12 0x11112222
x13 0x2345789a
### Data Mapping
0x10000008 0x2345789a
0x10000004 0x11112222
0x10000000 0x12345678

# Program 2:
### Statement:
Write an Assembly Program for addition of 2 half words
### Name of file:
week1_lab.s
### Observation - Single Cycle
The code defines a data section with an array a containing two 16-bit values, 0x1122 and 0x1111 , then loads the address of this array into register x10, and retrieves the two halfword values from the array into registers x11 and x12.
The code adds the values in x11 and x12, stores the result in x13, and then saves this result as a halfword at the memory address a+4. 
### Register Mapping
x10 0x10000000
x11 0x00001122
x12 0x00001111
x13 0x00002233
### Data Mapping
0x10000004 0x00002233
0x10000000 0x11111122

# Program 3:
### Statement:
Write an Assembly Program for addition of 2 bytes
### Name of file:
week1_lab.s
### Observation - Single Cycle
This assembly code adds two bytes from memory and stores the result.
 The first byte, '0x77', is loaded into 'x11', but the second load 'lb x12, 2(x10)' attempts to access a byte beyond the initialized data,
 likely loading 0x00 (since it's out of bounds). The sum '0x77' is stored at an address offset by 4 bytes from 'a'.
### Register Mapping
x10 0x10000000
x11 0x00000077
x12 0x00000000
x13 0x00000077
### Data Mapping
0x10000004 0x00000077
0x10000000 0x00000077

# Program 4:
### Statement:
Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
### Name of file:
week1_lab.s
### Observation - Single Cycle
The assembly code demonstrates storing and loading various data types.
It shows how a 32-bit unsigned word (`0x0000ABCD`, 43981) is loaded into`x11`, and a 32-bit signed word(`0x80001234`, -2147483644) into `x13`
It also handles 16-bit data, with an unsigned half-word (`0xABCD`,43981) loaded into `x15` and a signed half-word (`0x8001`, -32767) into `x17`.
Finally, for 8-bit data, it loads an unsigned byte (`0xAB`, 171) into `x19` and a signed byte (`0x80`, -128) into `x21`.
### Register Mapping
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
### Data Mapping
0x1000003c 0x00000000
0x10000030 0x00000000
0x10000024 0x00000000
0x10000018 0x00000000
0x10000010 0x00000000
0x1000000c 0x000080ab
0x10000008 0x8001abcd
0x10000004 0x80001234
0x10000000 0x0000abcd

