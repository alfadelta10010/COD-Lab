# Program 1: 
### Statement: <Write an Assembly Program for addition of 2 words>
### Name of file:<lab1_1.s>

### Observation -< Single Cycle>
<Load Address: loads address into register x10.>

<Load Bytes and Add: loads the byte values from the memory addresses 0x1000 (address in x10) and 0x1001 (address in x10 + 1) into registers x12 and x13, respectively. >
<adds these two byte values and stores the result in register x14.>

<Store Result: stores the result of the addition (which is 0x6C) into a new memory location at address 0x1002 (which is x10 + 2),  writing the value 0x6C into the memory> <immediately following the initial data.>
 
### Register Mapping
<x10 = 0x1000   ; Address of 'a'>
<x12 = 0x02     ; Value at address 0x1000>
<x13 = 0x6A     ; Value at address 0x1001>
<x14 = 0x6C     ; Result of addition is stored at address 0x1002>

### Data Mapping
<0x1000  | 0x02   ; unchanged>
<0x1001  | 0x6A   ; unchanged>
<0x1002  | 0x6C   ; new value stored here>

<||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||>

# Program 2: 
### Statement:< Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types>

### Name of file:<lab1_2.s>

### Observation - <Single Cycle>
<32-bit Word Operations: Load, add, and store 32-bit words from and to memory.>
<16-bit Halfword Operations: Load, add, and store 16-bit halfwords from and to memory.>
<8-bit Byte Operations: Load, add, and store signed and unsigned 8-bit bytes from and to memory.>

### Register Mapping
 <a:>
 <x5 - base address.>
 <x6 and x7 - load words.>
 <x8 - store the result.>
<Stored result in address offset 8(x5).>

 <b:>
 <x9 - base address.>
 <x10 and x11 to load halfwords.>
 <x12 to store the result.>
<Stored result in address offset 4(x9).>

 <c:>
 <x13 for the base address.>
 <x14 and x15 to load bytes.>
 <x16 to store the result.>
<Stored result in address offset 2(x13).>

<Unsigned b:>
 <x17 for the base address.>
 <x18 and x19 to load unsigned halfwords.>
 <x20 to store the result.>
<Stored result in address offset 4(x17).>
 
<Unsigned  c:>
 <x21 for the base address.>
 <x22 and x23 to load unsigned bytes.>
 <x24 to store the result.>
<Stored result in address offset 2(x21).>

### Data mapping
<a:>

<Initially: [0x80000112, 0x9123456C]>
<After manipulation: [0x80000112, 0x9123456C, 0xA123456E]>
<b:>

<Initially: [0x8002, 0x456A]>
<After manipulation (both signed and unsigned operations): [0x8002, 0x456A, 0xC6D4]>
<c:>

<Initially: [0x82, 0x6A]>
<After manipulation (both signed and unsigned operations): [0x82, 0x6A, 0xEC]>

||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

# Program 3:<Write an Assembly Program for addition of 2 half words>
### Name of file:<lab1_3.s>
### Observation -< Single Cycle>
<Load Address: loads address into register x10.>
<Adds 2 half words and stores result in 3rd register>
<loads the result into memory location x10>

### Register Mapping
<x10: Holds the base address of a.>
<x12: Holds the halfword value 0x0002.>
<x13: Holds the halfword value 0x456A.>
<x14: Contains the result of the addition, 0x456C.>


### Data mapping
Address      | Value
-------------|------
0x1000       | 0x456C
0x1002       | 0x456A
0x456C, is then stored back at address 0x1000, replacing the original value 0x0002
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

 # Program 4 :<Write an Assembly Program for addition of 2 words>
### Name of file:<lab1_4.s>
### Observation -< Single Cycle>
<Load Address: loads address into register x10.>
<Adds 2 words and stores result in 3rd register>
<Stores back the value to x10 in memory at an offset of 8>
 
###Register mapping
x10: 0x1000 (address of a)
x12: 0x80000002 (value loaded from 0x1000)
x13: 0x9123456A (value loaded from 0x1004)
x14: 0x9123456C (result of the addition operation)
### Data mapping
INITIAL
Address      | Value
-------------|------
0x1000       | 0x80000002
0x1004       | 0x9123456A
FINAL
Address      | Value
-------------|------
0x1000       | 0x80000002
0x1004       | 0x9123456A
0x1008       | 0x9123456C

<||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||>
