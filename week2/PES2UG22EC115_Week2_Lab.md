# Program 1a: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
PES2UG22EC115_Week2_Lab.s

### Observation - Explanation
- Two word-sized values are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using load word (lw), added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store word (sw) instruction.

### Observation - Single Cycle
- **Cycles:** 6
- **Frequency:** 6.45 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 11
- **Frequency:** 6.67 Hz
- **CPI:** 1.83
- **IPC:** 0.545

### Register Mapping
- **x18:** 0x80001234
- **x19:** 0x90000123
- **x20:** 0x10001357

### Data Mapping
- **0x10000008:** 0x10001357
- **0x10000004:** 0x90000123
- **0x10000000:** 0x80001234

### Snapshot
![word_addi](https://github.com/user-attachments/assets/757aab2f-d554-4949-9b1a-d517bc421745)

# Program 1b: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
PES2UG22EC115_Week2_Lab.s

### Observation - Explanation
- Two 16-bit values are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using load halfword (lh), added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store half-word (sh) instruction.

### Observation - Single Cycle
- **Cycles:** 6
- **Frequency:** 6.33 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 11
- **Frequency:** 6.49 Hz
- **CPI:** 1.83
- **IPC:** 0.545

### Register Mapping
- **x18:** 0x000061a8
- **x19:** 0x00000350
- **x20:** 0x000064f8

### Data Mapping
- **0x10000004:** 0x000064f8
- **0x10000000:** 0x035061a8

### Snapshot
![half_addi](https://github.com/user-attachments/assets/74abd484-3d3b-4eb3-a821-642cca698b6c)


# Program 1c: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
PES2UG22EC115_Week2_Lab.s

### Observation - Explanation
- Two byte (8-bit) values are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using load halfword (lb), added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store half-word (sb) instruction.

### Observation - Single Cycle
- **Cycles:** 6
- **Frequency:** 6.02 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 11
- **Frequency:** 6.58 Hz
- **CPI:** 1.83
- **IPC:** 0.545

### Register Mapping
- **x18:** 0x00000006
- **x19:** 0x00000002
- **x20:** 0x00000008

### Data Mapping
- **0x10000000:** 0x00080206

### Snapshot
![byte_addi](https://github.com/user-attachments/assets/acb0c159-0a62-4e66-a67a-55e2ded76fc9)

# Program 2: 
### Statement: Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide

### Name of file:
PES2UG22EC115_Week2_Lab.s

### Observation - Explanation
-

### Observation - Single Cycle
- **Cycles:** 12
- **Frequency:** 6.06 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 16
- **Frequency:** 5.56 Hz
- **CPI:** 1.33
- **IPC:** 0.75

### Register Mapping
- **x6:** `0x0000000a`
- **x7:** `0x00000005`
- **x8:** `0x00000014`
- **x9:** `0x00000003`
- **x10:** `0x0000000f`
- **x11:** `0x00000008`
- **x12:** `0x0000000f`
- **x13:** `0x00000011`
- **x14:** `0xfffffffe`
- **x15:** `0x00000017`
- **x16:** `0x00000015`
- **x17:** `0x00000012`


### Snapshot
![eqnprob](https://github.com/user-attachments/assets/ac9e0fea-574d-444a-b8ad-29e72a1de6a4)
