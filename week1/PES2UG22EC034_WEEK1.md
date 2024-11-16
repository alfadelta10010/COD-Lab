# Program 1: 
### Statement: i)Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
littleendiantobigindian.s

### Observation - Explanation
->This RISC-V assembly code converts a 32-bit value stored in little-endian format at memory location a to big-endian format and stores the result at memory location b. 
->It loads the 32-bit little-endian value from a into register x7 and then extracts each byte, starting with the least significant byte, using bitwise AND operations and shifts. ->Finally, it stores each byte in reverse order (from least to most significant) at b to create the big-endian representation.

### Observation - Single Cycle
- **Cycles:** 17
- **Frequency:** 0 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 21 
- **Frequency:** 0 Hz
- **CPI:** 1.24
- **IPC:** 0.81

### Memory Mapping
0x10000000: 0x12345678
0x10000004: 0x78563412

### Register Mapping
x10: 0x10000000


x12: 0x12345678
x13: 0x00000078
x16: 0x00000056
x17: 0x00000034
x12: 0x00000012

x13: 0x000000ff
x20: 0x00123456
x21: 0x00001234
x22: 0x00000012

### Snapshot
(week1_1.png)




# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
adding_doubleword.s

### Observation - Explanation: 
->This code performs the addition of two 64-bit numbers on an RV32I processor by handling each 32-bit half separately. 
->It first loads the lower and upper 32 bits of each number, adds the lower bits, stores the result, and then checks for a carry using sltu. 
->Finally, it adds the upper 32 bits along with any carry from the lower addition and stores the result as the upper 32 bits in n3.

### Observation - Single Cycle
- **Cycles:** 16
- **Frequency:** 10.31 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 20
- **Frequency:** 10.64 Hz
- **CPI:** 1.25
- **IPC:** 0.8




### Snapshot
(week1_2.png)
