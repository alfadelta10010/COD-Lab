# Program 1: 
### Statement: Write an Assembly Program for:addition of N words,addition of N half words,addition of N bytes

### Name of file:
week2_1.s

### Observation - Explanation
->This assembly code performs the addition of a series of words, half-words, and bytes from memory locations n1, n2, and n3 respectively, each sum being stored in separate result locations (result_words, result_halfwords, and result_bytes). 
->It initializes a counter for each data type, then uses loops to load each element, add it to an accumulator, and move to the next element in the sequence, decrementing the counter until all elements are processed. 
->After each loop completes, the accumulated sum for that data type is stored in the corresponding result location.

### Observation - Single Cycle
- **Cycles:** 96
- **Frequency:** 10.31 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 142 
- **Frequency:** 10.64 Hz
- **CPI:** 1.48
- **IPC:** 0.676

### Memory Mapping
0x10000000: 0x00325462
0x10000004: 0x12345678
0x10000008: 0x00000004
0x1000000c: 0x10000000
0x10000010: 0x55551234
0x10000014: 0x07890003
0x10000018: 0x77457812
0x1000001c: 0x2266aae2
0x10000020: 0x00006f15
0x10000024: 0x00000146


### Register Mapping
x5: 0x1000001c
x6: 0x10000020
x7: 0x10000024
x10: 0x00000146
x18: 0x10000000
x19: 0x00000789
x20: 0x00000077
x28: 0x00000000
x29: 0x00000000
x30: 0x00000000

### Snapshot
(program2_1.png)


# Program 2: 
### Statement: Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide

### Name of file:
week2_2.s

### Observation - Explanation
->This RISC-V assembly code calculates the value of x=(y+m)−(L−D)+(Z+C)−D using 32-bit variables stored in memory. 
->It loads the values of y, m, L, D, Z, and C from memory into registers, performs arithmetic operations step by step, and stores the final result in x. 
->The operations are arranged in a sequence that respects the order of operations and dependencies in the calculation.

### Observation - Single Cycle
- **Cycles:** 27
- **Frequency:** 10.31 Hz 
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:**  31
- **Frequency:** 10.99 Hz
- **CPI:** 1.15
- **IPC:** 0.871

### Memory Mapping
0x10000000: 0x12345678
0x10000004: 0x11111111
0x10000008: 0x23563952
0x1000000c: 0x08562314
0x10000010: 0x56132453
0x10000014: 0x00000001
0x10000018: 0x5602528b

### Register Mapping
x5: 0x10000000
x6: 0x10000004
x7: 0x10000008
x18: 0x5602528b
x19: 0x11111111
x20: 0x1b00163e
x21: 0x08562314
x22: 0x56132454
x23: 0x00000001
x28: 0x1000000c
x29: 0x10000010
x30: 0x10000014
x31: 0x10000018

### Snapshot
(program2_2.png)

