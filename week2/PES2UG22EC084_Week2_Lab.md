# Program 1: 
### Statement: Write an Assembly Program for:addition of N words,addition of N half words,addition of N bytes

### Name of file:
week21.s

### Observation - Explanation
- In the .data segment we are defining an array 'a' with three 32 bit words, three half words and 3 bytes and a value N
- In the .text segment we are first loading the address of 'a','h','b' and 'N' into different registers.
- A loop is run N times and during each iteration the registers holding the sum value of the words, half words and bytes are incremented. Finally the registers x28,x29,x30 hold the sum after addition.

### Observation - Single Cycle
- **Cycles:** 42
- **Frequency:** 5.75 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 59
- **Frequency:** 10.42 Hz
- **CPI:** 1.4
- **IPC:** 0.712

### Memory Mapping
- **0x10000000:** 0x00000003
- **0x10000004:** 0x90006748
- **0x10000008:** 0x00012ab6
- **0x1000000c:** 0x00000000
- **0x10000010:** 0x00019000
- **0x10000014:** 0xa1190000
- **0x10000018:** 0x00000023

### Register Mapping
- **x10:** 0x10000010
- **x12:** 0x10000016
- **x15:** 0x10000019
- **x16:** 0x00000023
- **x28:** 0x900191fe
- **x29:** 0xffff9001
- **x30:** 0xffffffdd

### Snapshot
![Screenshot of RIPES window](week21.png)

# Program 2: 
### Statement: Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide

### Name of file:
week22.s

### Observation - Explanation
- In the .data segment we are defining all the variables in the expression to be evaluated.
- In the .text segment we are loding the value each variable in a register and then performing addition or subtraction with respect to the expression.
- The final value is then stored into the memory

### Observation - Single Cycle
- **Cycles:** 27
- **Frequency:** 5.85 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 34
- **Frequency:** 9.52 Hz
- **CPI:** 1.26
- **IPC:** 0.794

### Memory Mapping
- **0x10000000:** 0x12003456
- **0x10000004:** 0x11111111
- **0x10000008:** 0x10054321
- **0x1000000c:** 0x10010011
- **0x10000010:** 0x11223344
- **0x10000014:** 0x66a52b33
- **0x10000018:** 0x8ad360bd

### Register Mapping
- **x5:** 0x10000010
- **x6:** 0x11223344
- **x7:** 0x1000000c
- **x8:** 0x10010011
- **x10:** 0x8ad360bd
- **x11:** 0x10000018
- **x12:** 0x00000014
- **x13:** 0x66a52b33
- **x14:** 0x77c75e77

### Snapshot
![Screenshot of RIPES window](week22.png)
