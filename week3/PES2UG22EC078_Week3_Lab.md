# Program 1: 
### Statement: Write an assembly program to check if a number is a 2 out of 5 number

### Name of file:
week3_1.s

### Observation - Explanation
->This RISC-V assembly program checks if the lower 5 bits of a number stored in memory are a 2-out-of-5 code by ensuring exactly two bits are set to 1.
-> It first validates that the most significant 3 bits of the number are 0 (ensuring a valid 5-bit number), then iteratively counts the 1s in the lower 5 bits using a loop that shifts the number right and checks the least significant bit (LSB). 
->The count of 1s is stored in memory, which can then be checked externally to determine if it equals 2.

### Observation - Single Cycle
- **Cycles:** 37
- **Frequency:** 10.53 Hz 
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 50 
- **Frequency:** 10.53 Hz 
- **CPI:** 1.35
- **IPC:** 0.74

### Memory Mapping
0x10000000: 0x00021311

### Register Mapping
x5: 0x10000000
x6: 0x10000002
x7: 0x000000e0
x20: 0x00000001
x21: 0x00000002
x23: 0x00000000
x28: 0x00000011
x29: 0x00000000
x30: 0x00000000

### Snapshot
(program3_1.png)

# Program 2: 
### Statement: Write an assembly program to encode a number using Hamming code.

### Name of file:
week3_2.s

### Observation - Explanation
->This RISC-V assembly program encodes a number using Hamming code by calculating parity bits (c0,c1,c2,c3c0​,c1​,c2​,c3​) based on XOR operations over the relevant data bits (d0d0​ to d7d7​). 
->Each parity bit is computed by combining specific subsets of data bits according to the Hamming code rules, ensuring error detection and correction capabilities.
->The program isolates individual bits of the input number using right shifts and masks, computes the required parities, and prepares the encoded number for transmission or storage.

### Observation - 5 Stage
- **Cycles:** 35
- **Frequency:** 10.20 Hz
- **CPI:** 1.17
- **IPC:** 0.857

### Observation - Single cycle
- **Cycles:** 30
- **Frequency:** 9.71 Hz
- **CPI:** 1
- **IPC:** 1

### Memory Mapping
0x10000000: 0x00000055

### Register Mapping
x9: 0x10000000
x10: 0x00000055
x11: 0x00000065
x12: 0x0000002a
x13: 0x00000015
x14: 0x0000000a
x15: 0x00000005
x16: 0x00000002
x17: 0x00000001
x20: 0x00000001
x21: 0x00000055
x22: 0x00000049
x23: 0x00000001
x25: 0x00000035
x26: 0x00000001
x27: 0x00000006

### Snapshot
(program3_2.png)


