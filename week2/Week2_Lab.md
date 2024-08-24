#Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
Week2_Lab.s

### Observation - Single Cycle
-he code handles 64-bit addition on a 32-bit architecture by separately adding the lower and upper 32-bit parts of the 64-bit numbers. It also manages the carry from the lower 32-bit addition using the sltu instruction.

-he code uses registers (x10, x11, x12) to manage memory addresses for loading the operands and storing the result. This ensures that each part of the 64-bit numbers is accessed and stored correctly.

-The carry from the lower 32-bit addition is efficiently added to the upper 32-bit result using the add instruction, ensuring that the full 64-bit addition is accurate.
 
### Register Mapping
- **x2:** 0x7ffffff0
- **x3:** 0x10000000
- **x10:** 0x10000000
- **x11:** 0x10000008
- **x12:** 0x10000010
- **x13:** 0x89abcdef
- **x14:** 0xfedcba98
- **x15:** 0x01234567
- **x16:** 0x76543210
- **x17:** 0x88888887
- **x18:** 0x00000001
- **x19:** 0x77777778

### Data Mapping
- **0x00000000:** 10000517
- **0x00000004:** 00050513
- **0x00000008:** 10000597
