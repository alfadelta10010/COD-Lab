# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
program1.s

### Observation - Explanation
- This program converts 32-bit value from Little Endian to Big Endian format.
- Register x15 holds the value in little endian.Register x26 holds the value in big endian format.
- The program extracts each byte of the 32-bit value by applying bitwise operations (andi and shifts) and repositions them into their new order using slli (shift left logical) and srli (shift right logical).
### Observation - Single Cycle
- **Cycles:** 26
- **Frequency:** 161.84mHz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 30 
- **Frequency:**1.32 Hz
- **CPI:** 1.15
- **IPC:** 0.867

### Memory Mapping
- 0x10000020:0x00000000
- 0x10000018:0x00000000
- 0x10000010:0xff000000
- 0x1000000c:0x00ff0000
- 0x10000008:0x0000ff00
- 0x10000004:0x000000ff 
- 0x10000000:0x12345678

### Register Mapping
- x15:0x12345678
- x16:0x000000ff
- x17:0x0000ff00
- x18:0x00ff0000
- x19:0xff000000
- x20:0x78000000
- x21:0x00560000
- x22:0x00003400
- x23:0x00000012
- x24:0x78560000
- x25:0x00003412
- x26:0x78563412

### Snapshot
![Screenshot of RIPES window](<C:\Users\avant\OneDrive\Pictures\Screenshots\program1.png>)



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
program2.s

### Observation - Explanation
- This Program performs addition of 2 64-bit numbers on RV32I.
- Since RV32I is a 32-bit architecture, 64-bit numbers are split into two 32-bit halves:lower (least significant 32 bits) and upper (most significant 32 bits)
- The program performs addition on these halves while managing any carry that might occur.
### Observation - Single Cycle
- **Cycles:** 13
- **Frequency:** 4.14 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 17 
- **Frequency:** 1.09 Hz
- **CPI:** 1.31
- **IPC:** 0.765

### Memory Mapping
- 0x1000000c:0xffffffff
- 0x10000008:0xffffffff
- 0x10000004:0xffffffff
- 0x10000000:0xffffffff

### Register Mapping
- x10:0xffffffff
- x11:0xffffffff
- x12:0xffffffff
- x13:0xffffffff
- x14:0xfffffffe
- x15:0x00000001
- x16:0xfffffffe
- x18:0xffffffff

### Snapshot
![Screenshot of RIPES window](<C:\Users\avant\OneDrive\Pictures\Screenshots\program2.png>)
