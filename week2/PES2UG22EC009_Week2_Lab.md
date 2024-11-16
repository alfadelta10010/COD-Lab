# Program 1: 
### Statement: Write an Assembly Program for:
addition of N words
addition of N half words
addition of N bytes

### Name of file:
program1.s

### Observation - Explanation
- This program performs-
addition of N words
addition of N half words
addition of N bytes
- Words (4 bytes), half-words (2 bytes), and bytes (1 byte) are accessed using lw, lh, and lb instructions, respectively.
- the resuts are stored in register x14,x15,x16 respectively.

### Observation - Single Cycle
- **Cycles:** 24
- **Frequency:** 5.68 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 31
- **Frequency:**548.25mHz
- **CPI:** 1.29
- **IPC:** 0.771

### Memory Mapping
- 0x10000028:0x00000000
- 0x10000020:0x00000000
- 0x10000010:0x00000000
- 0x1000000c:0x00000203
- 0x10000008:0x00020003
- 0x10000004:0x12345678
- 0x10000000:0x12345679

### Register Mapping
- x14:0x12345679
- x15:OX00000003
- x16:0x00000003


### Snapshot
![Screenshot of RIPES window](<C:\Users\avant\OneDrive\Pictures\Screenshots\week2\program1.png>)



# Program 2: 
### Statement: Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D,
 where x, y, m, L, D, Z, C are elements of 32-bits wide

### Name of file:
program2.s

### Observation - Explanation
- This program computes x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide.
- Defines memory locations for the variables y, m, L, D, Z, C, and x.
Initializes values for y, m, L, D, Z, and C. 
- Result is stored in x7 register.

### Observation - Single Cycle
- **Cycles:** 27 
- **Frequency:**5.24 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 31 
- **Frequency:** 1.46 Hz
- **CPI:** 1.15
- **IPC:**0.871

### Memory Mapping
- 0x10000030:0x00000000
- 0x10000028:0x00000000
- 0x10000020:0x00000000
- 0x10000018:0x0000003c
- 0x10000014:0x00000023
- 0x10000010:0x00000019
- 0x1000000c:0x0000000f
- 0x10000008:0x0000001e
- 0x10000004:0x00000014
- 0x10000000:0x0000000a

### Register Mapping
- x1:0x0000001e
- x2:0x00000014
- x3:0x0000000f
- x4:0x0000000f
- x5:0x0000003c
- x6:0x00000023
- x7:0x0000003c
### Snapshot
![Screenshot of RIPES window](<C:\Users\avant\OneDrive\Pictures\Screenshots\week2\program2.png>)
