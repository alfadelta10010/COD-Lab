# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
lab_1.s

### Observation - Single Cycle
- .data contains two words of 32bits each in hexadecimal format
It is then called to the register x10 with la (load address instruction)
Load values of the 2 words in 2 seperate registers using lw (load word) with an offset of 4.
perform add operation -> store the value back to x10. 
 
### Register Mapping
- x10: 0x10000000
-x11: 0x00001234
-x12: 0x00001234
-x13: 0x00002468

### Data Mapping
- 0x10000008: 0x00002468
- 0x10000004: 0x00001234
- 0x10000000: 0x00001234

# Program 2: 
### Statement: An Assembly Program for the addition of 2 half words.

### Name of file:
lab_1~2.s

### Observation - Single Cycle
- The assembly code first assigns “x10” in the half directive which is 16-bit long.
- loads lh x11,x12.
- adds the two numbers from the register and stores the result in the register “x10” (4th index position).

### Register Mapping:
- x10: 0x10000000
- x11: 0x00000155
- x12: 0x00006332
- x13: 0x00006487

### Data Mapping
- 0x10000004: 0x00006487
- 0x10000000: 0x63320155

# Program 3: 
### Statement: An Assembly Program for the addition of 2 bytes.

### Name of file:
lab_1~3.s

### Observation - Single Cycle
- The assembly code first assigns “x10” in the byte directive which is 8-bit long.
-  loads lb x11,x12 
-  adds the two numbers from the register and stores the result in the register “x13” (2nd index position).

### Register Mapping:
- x10: 0x10000000
- x11: 0x00000001
- x12: 0x00000063
- x13: 0x00000064

### Data Mapping
- 0x10000004: 0x00000000
- 0x10000000: 0x00646301

# Program 4: 
### Statement: An Assembly Program and analysis of the format of storing signed and unsigned words, half words, and byte data types.

### Name of file:
lab_1~4.s

### Observation - Single Cycle
- .data contains signed and unsigned word, half-word and byte.
- The “la” was used to load the address of the variable defined above into a register.
- The “lw, lhu, lh, lbu, lb” was used to load the actual variable into a register.
- The “sw, sb, sh” was used to store the data in a register into a memory location. 
-
### Register Mapping:
- x10: 0x10000000
- x11: 0xffff8055
- x12: 0x00008055
- x15: 0x10000004
- x16: 0xfffffea6
- x17: 0x112398ef
- x20: 0x1000000c
- x21: 0xffffffbf
- x22: 0x0000008a

### Data Mapping

- 0x1000000c: 0x00008abf
- 0x10000008: 0x112398ef
- 0x10000004: 0x112398ef
- 0x10000000: 0x80558055

