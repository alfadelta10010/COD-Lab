# Program 1: 
### Statement: Write an assembly language for addition of 2 words

### Name of file:
<COD-Lab/Week1/Q1.ASS1.S>

### Observation - Single Cycle
- This program loads 2 32bit words from a, a+4 into registers x11 and x12.
- It then performs the add operation and stores the result in register x13 with an offset of 8bits
- And we can see the result x11+x12 stored in x13 register.
 
### Register Mapping
- x11 - 0x12340102
- x12 - 0x98765433
- x13 - 0xaaaa5535
		
### Data Mapping
- 0x10000008 - 0xaaaa5535
- 0x10000004 - 0x98765433
- 0x10000000 - 0x12340102

# Program 1: 
### Statement: Write an assembly language for addition of 2 words

### Name of file:
<COD-Lab/Week1/Q2.ASS1.S>

### Observation - Single Cycle
- This program loads 2 16bit words from a, a+2 into registers x11 and x12.
- It then performs the add operation and stores the result in register x13 with an offset of 4bits
- And we can see the result x11+x12 stored in x13 register.
 
### Register Mapping
- x11 - 0x6641
- x12 - 0x0008
- x13 - 0x00006649	
		
### Data Mapping
- 0x10000004 - 0x6641
- 0x10000002 - 0x0008
- 0x10000000 - 0x00006649

# Program 3: 
### Statement: Write an assembly program for addition of 2 bytes.

### Name of file:
<COD-Lab/Week1/Q3.ASS1.S>

### Observation - Single Cycle
- .data section: stores 2, 8bit byte values in memory 0x01 and 0x12
- .text part loads the byte at register x11 and since we use lb 0x01 is stored with sign extension same way 0x12 is also stored in register x12
- Add operation is performed between x11 and x12 (0x01+0x12=0x13) and the sb instruction stores the bit into register x13.
 
### Register Mapping
- x11 - 0x52
- x12 - 0x33
- x13 - 0x85

### Data Mapping
- 0x10000004 - 0x00000000
- 0x10000000 - 0x00853352
 

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
<COD-Lab/Week1/Q4.ASS1.s>

### Observation - Single Cycle
-We should use lhu and lbu for unsigned half word and unsigned byte type instructions.
- As observed we it is executed as unsigned the MSB is appended as '1' while for same input values the MSB appended as 'f' for signed execution for both half word and byte type.
- If the MSB is '0' then it is considered as positive number and if the MSB is '1' then it is negative number

### Register Mapping
- x11 - 0x00000003
- x12 - 0xfffffffe
- x13 - 0xfffffffc

### Data Mapping
- 0x10000004 - 0x00000000
- 0x10000000 - 0x0003fffb
