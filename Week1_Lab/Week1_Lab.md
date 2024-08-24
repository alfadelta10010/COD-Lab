# Program 1: 
### Statement: An Assembly Program for the addition of 2 words.

### Name of file:
Program1

### Observation - Single Cycle
- The assembly code first assigns “n1” in the word directive which is 32-bit long.
- The assembly then loads the variable “n1” in the register. 
- The assembly code adds the two numbers and stores the result in the register “x13”.
 
### Register Mapping:
- x10: 0x10000000
-x11: 0x00001234
-x12: 0x00004321
-x13: 0x00005555

### Data Mapping
- 0x10000008: 0x00005555
- 0x10000004: 0x00004321
- 0x10000000: 0x00001234



# Program 2: 
### Statement: An Assembly Program for the addition of 2 half words.

### Name of file:
Program2

### Observation - Single Cycle
- The assembly code first assigns “n1” in the half directive which is 16-bit long.
- The assembly then loads the variable “n1” in the register. 
- The assembly code adds the two numbers from the register and stores the result in the register “x13”.
 
### Register Mapping:
- x10: 0x10000000
- x11: 0x00001234
- x12: 0x00004321
- x13: 0x00005555

### Data Mapping
- 0x10000004: 0x00005555
- 0x10000000: 0x43211234



# Program 3: 
### Statement: An Assembly Program for the addition of 2 bytes.

### Name of file:
Program3

### Observation - Single Cycle
- The assembly code first assigns “n1” in the byte directive which is 8-bit long.
- The assembly then loads the variable “n1” in the register. 
- The assembly code adds the two numbers from the register and stores the result in the register “x13”.
 
### Register Mapping:
- x10: 0x10000000
- x11: 0x00000001
- x12: 0x00000004
- x13: 0x00000005

### Data Mapping
- 0x10000004: 0x00000000
- 0x10000000: 0x00050401



# Program 4: 
### Statement: An Assembly Program and analysis of the format of storing signed and unsigned words, half words, and byte data types.

### Name of file:
Program4

### Observation - Single Cycle
- The “.data” directive defined the signed and unsigned word, half-word and byte.
- The “la” was used to load the address of the variable defined above into a register.
- The “lw, lhu, lh, lbu, lb” was used to load the actual variable into a register.
- The “sw, sb, sh” was used to store the data in a register into a memory location. 
- The assembly code helps understand how signed and unsigned data types are stored and loaded differently in RISC-V architecture. 

### Register Mapping:
- x16: 0xffdc24cd
- x17: 0x0023db33
- x18: 0xfffffb2e
- x19: 0x000004d2
- x20:0xfffffff4
- x21:0x0000000c

### Data Mapping
- 0x10000028: 0x00000000
- 0x10000020: 0x00000000
- 0x10000018: 0x00000000
- 0x10000010: 0x00000000
- 0x1000000c: 0x00000cf4
- 0x10000008: 0x04d2fb2e
- 0x10000004: 0x0023db33
- 0x10000000: 0xffdc24cd


