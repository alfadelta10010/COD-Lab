 Program 1: 
### Statement:Write an assembly program to check if a number is a 2 out of 5 number

### Name of file:
program1.s

### Observation - Explanation
- This program checks if a number is a 2 out of 5 number.
- Register x20 gets updated with value 1 if the number is 2 out of 5 else it is updated with 2.
- Conditions for a number to be 2 out of 5- MSB 3 bits are zero and number if ones inthe LSB is 2 out of 5.
### Observation - Single Cycle
- **Cycles:** 38
- **Frequency:** 5.81 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 59
- **Frequency:** 6.29 Hz
- **CPI:** 1.55
- **IPC:** 0.644

### Memory Mapping
- 0x10000000:0x00000012

### Register Mapping
- x6:0x00000001
- x20:0x00000001
- x25:0x00000002
- x26:0x00000002



# Program 2: 
### Statement:Write an assembly program to encode a number using Hamming code.

### Name of file:
program2.s

### Observation - Explanation
- Data Loading: The 4-bit data is loaded into a register and each bit is extracted using bitwise AND and shift operations.
- Parity Bit Calculation: Parity bits are computed using XOR operations.
- Encoding: Parity and data bits are combined to form the 7-bit encoded word.
- Result Storage: The encoded word is stored in a register (a0).

### Observation - Single Cycle
- **Cycles:** 30
- **Frequency:** 5.25 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 37 
- **Frequency:** 5.75Hz
- **CPI:** 1.23
- **IPC:** 0.811

### Memory Mapping
- 0x10000000:0x00000006

### Register Mapping
- x5:0x00000040
- x6:0x00000020
- x7:0x00000000
- x10:0x00000066
- x11:0x00000006
- x13:0x00000004
- x14:0x00000002
- x17:0x0000000a
