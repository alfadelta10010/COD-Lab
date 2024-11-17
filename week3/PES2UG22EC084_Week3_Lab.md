# Program 1: 
### Statement: Write an assembly program to check if a number is a 2 out of 5 number

### Name of file:
2_out_of_5.s

### Observation - Explanation
- After storing the address of the number, we are masking the number to get the first 3 msb bits and checking if the bits are zero.

- Masking is done to get the lsb bit and then compared with 0.If not zero then x14 is incremented every time.

- If zero, shift the 8 bit number left by 1bit. This process is repeated until the counter reaches 0.

### Observation - Single Cycle
- **Cycles:** 36
- **Frequency:** 3.13 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 54
- **Frequency:** 10.53 Hz
- **CPI:** 1.5
- **IPC:** 0.667

### Memory Mapping
- **0x10000000:** 0x00000018

### Register Mapping
- **x10:** 0x10000000
- **x12:** 0x00000001
- **x14:** 0x00000002
- **x30:** 0x00000002
### Snapshot
![Screenshot of RIPES window](week31.png)

# Program 2: 
### Statement: Write an assembly program to encode a number using Hamming code.

### Name of file:
hamming.s

### Observation - Explanation
- The program implements the encoding of a single byte into a Hamming code by computing parity bits (c0, c1, c2, and c3) based on specific combinations of data bits (d0 to d7) extracted from the input byte. 
- Using logical shift (srli) isolate individual bits and use operations to calculate the parities according to the Hamming code rules.
- The program ultimately computes the parity values that will be added to the data bits to form the encoded Hamming codeword.

### Observation - Single Cycle
- **Cycles:** 30
- **Frequency:** 823.05 mHz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 54
- **Frequency:** 10.53 Hz
- **CPI:** 1.5
- **IPC:** 0.667

### Memory Mapping
- **0x10000000:** 0x00000055

### Register Mapping
- **x10:** 0x00000055
- **x11:** 0x00000065
- **x12:** 0x0000002a
- **x13:** 0x00000015
- **x14:** 0x0000000a
- **x15:** 0x00000005
- **x16:** 0x00000002
- **x27:** 0x00000006
### Snapshot
![Screenshot of RIPES window](week32.png)
