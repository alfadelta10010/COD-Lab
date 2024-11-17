# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
Program1.s

### Observation - Explanation
- The program loads the 32-bit value 0x12345678 from memory into register x11, and initializes a loop counter (x3) to 3.
- In each loop iteration, a byte from x11 is extracted, added to x14, and x14 is shifted left to make space for the next byte. The next byte is prepared by shifting x11 right. This repeats 3 times.
- After the loop, the last byte is processed and added to x14, and the final result is written back into memory at an address 8 bytes after a.
 
### Observation - Single Cycle
- **Cycles:** 16
- **Frequency:** 1.58Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 33
- **Frequency:** 4.37Hz
- **CPI:** 1.32
- **IPC:** 0.758

### Memory Mapping
- **0x10000000:** 0x12345678
- **0x10000008:** 0x78563412

### Register Mapping
- **x11:** 0x00000012
- **x12:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Snapshot
![Screenshot of RIPES window](<program1.png>)


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
Program2.s

### Observation - Explanation
- The program loads two 64-bit numbers (n1 and n2) from memory, each divided into lower and upper 32-bit parts, and prepares a memory location (result) to store the output.
- Add the lower 32 bits of the numbers, store the result and check for any carry out from the addition using sltu and store that value in another register.
- Add the upper 32 bits of the numbers along with the carry out value and store the final result.
 

### Observation - Single Cycle
- **Cycles:** 18
- **Frequency:** 5.15Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 24
- **Frequency:** 1.18Hz
- **CPI:** 1.33
- **IPC:** 0.75

### Memory Mapping
- **0x10000000:** 0x12345678
- **0x10000004:** 0x9abcdef0
- **0x10000008:** 0x11111111
- **0x1000000c:** 0x22222222
- **0x10000010:** 0x23456789
- **0x10000014:** 0xbcdf0112

### Register Mapping
- **x11:** 0x0000005d
- **x12:** 0x10000010
- **x18:** 0x9abcdef0
- **x19:** 0x22222222
- **x20:** 0xbcdf0112

### Snapshot
![Screenshot of RIPES window](<program2.png>)



