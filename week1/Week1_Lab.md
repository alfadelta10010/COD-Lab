# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
- Two word-sized values are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using load word (lw), added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store word (sw) instruction.

### Register Mapping
- **x18:** 0x80001234
- **x19:** 0x90000123
- **x20:** 0x10001357

### Data Mapping
- **0x10000008:** 0x10001357
- **0x10000004:** 0x90000123
- **0x10000000:** 0x80001234


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
- Two 16-bit values are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using load halfword (lh), added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store half-word (sh) instruction.

### Register Mapping
- **x18:** 0x000061a8
- **x19:** 0x00000350
- **x20:** 0x000064f8

### Data Mapping
- **0x10000004:** 0x000064f8
- **0x10000000:** 0x035061a8


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
- Two byte (8-bit) values are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using load halfword (lb), added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store half-word (sb) instruction.

### Register Mapping
- **x18:** 0x00000006
- **x19:** 0x00000002
- **x20:** 0x00000008

### Data Mapping
- **0x10000000:** 0x00080206


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
- Two values of bit and word size each are defined and stored in memory. We access data memory locations using physical address (Base Address + Immediate Offset)
- Values are loaded into saved registers using respective load instructions in terms of signed and unsigned, added together, and the result is stored back in destination register.
- Result stored in destination register is stored into data memory using store instruction. We can compare and see the difference between signed and unsigned addition clearly.
- No signed and unsigned addition in word data types for rv32i because all 32 bits are occupied in registers (no scope for sign extension).

### Register Mapping
- **x18:** 0xffff8000
- **x19:** 0xffff9000
- **x20:** 0xffff1000
- **x21:** 0x00008000
- **x22:** 0x00009000
- **x23:** 0x00011000

// For byte addition
- **x24:** 0xffffff87
- **x25:** 0x0000003f
- **x26:** 0xffffffc6
- **x27:** 0x00000087
- **x28:** 0x0000003f
- **x29:** 0x000000c6

### Data Mapping
- **0x10000004:** 0x10001000
- **0x10000000:** 0x90008000

// For byte addition
- **0x10000000:** 0xc6c63f87