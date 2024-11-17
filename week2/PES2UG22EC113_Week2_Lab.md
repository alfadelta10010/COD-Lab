# Program 1: 
### Statement: Write an Assembly Program for:
###			a.addition of N words
###			b.addition of N half words
###			c.addition of N bytes

### Name of file:
Program1.s

### Observation - Single Cycle
-Load the base address into register x18.
-Load two word/half word/byte(32/16/8 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 4 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 8,4,2 from the base address.



### Observation - Single Cycle
### a.
- **Cycles:** 6
- **Frequency:** 3.65Hz
- **CPI:** 1
- **IPC:** 1

### b.
- **Cycles:** 6
- **Frequency:** 5.88Hz
- **CPI:** 1
- **IPC:** 1

### c.
- **Cycles:** 6
- **Frequency:** 1.82Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
### a.
- **Cycles:** 11
- **Frequency:** 2.96Hz
- **CPI:** 1.83
- **IPC:** 0.545

### b.
- **Cycles:** 11
- **Frequency:** 2.79Hz
- **CPI:** 1.83
- **IPC:** 0.545

### c.
- **Cycles:** 11
- **Frequency:** 4.81Hz
- **CPI:** 1.83
- **IPC:** 0.545


 
### Register Mapping
### a.
- **x19:** 0x12345678
- **x20:** 0x00001111
- **x21:** 0x12346789

### b.
- **x19:** 0x00001234
- **x20:** 0x00001111
- **x21:** 0x00002345

### c.
- **x18:** 0x00000012
- **x19:** 0x00000001
- **x20:** 0x00000013


### Memory Mapping
### a.
- **0x10000008:** 0x12346789
- **0x10000004:** 0x00001111
- **0x10000000:** 0x12345678

### b.
- **0x10000004:** 0x00002345
- **0x10000000:** 0x11111234 

### c.
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00130112 


### Snapshot
![Screenshot of RIPES window](<program1a.png>)
![Screenshot of RIPES window](<program1b.png>)
![Screenshot of RIPES window](<program1c.png>)



# Program 2: 
### Statement: Write an Assembly program for calculating  `x = (y + m) - (L - D) + (Z + C) - D`, where `x`, `y`, `m`, `L`, `D`, `Z`, `C` are elements of 32-bits wide


### Name of file:
Program2.s

### Observation - Explanation
- Using addi, the values are provided to the registers(y=x11;m=x12;L=x13;D=x14;Z=x15;C=x16)\
- Then the individual results of y+m, L-D Z+C is computed 
- The individual results are used to compute final result

### Observation - Single Cycle
- **Cycles:** 14 
- **Frequency:** 2.09Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 18
- **Frequency:** 2.65Hz
- **CPI:** 1.29
- **IPC:** 0.778

### Memory Mapping
- **0x10000000:** 0x10000000

### Register Mapping
- **x4:** 0x0000001e
- **x5:** 0x00000014
- **x6:** 0x00000000
- **x7:** 0x0000001e
- **x11:** 0x0000001e
- **x12:** 0x00000014
- **x13:** 0x0000001e
- **x14:** 0x0000000a
- **x15:** 0x00000005
- **x16:** 0x00000005


### Snapshot
![Screenshot of RIPES window](<program2.png>)

