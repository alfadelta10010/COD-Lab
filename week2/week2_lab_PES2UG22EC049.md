# Program 2: 
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I >

### Name of file:
<lab2_2.s>

### Observation - Single Cycle
 -->adds 2 64bit numbers on 32 bit processor
 -->The sltu (set less than unsigned) instruction is used to compare values without considering sign bits, affecting how results are stored.
-->Results of computations and comparisons are stored into the result section of memory, showing how results can be saved and later retrieved or used in further processing

### Register Mapping
Instruction: la x10, n

Action: Load the address of n into x10.
Value in x10: 0x1000
Instruction: lw x11, 0(x10)

Action: Load the 32-bit word from address 0x1000 into x11.
Value at 0x1000: 0x98765432
Value in x11: 0x98765432
Instruction: lw x12, 4(x10)

Action: Load the 32-bit word from address 0x1004 into x12.
Value at 0x1004: 0x87654321
Value in x12: 0x87654321
Instruction: lw x13, 8(x10)

Action: Load the 32-bit word from address 0x1008 into x13.
Value at 0x1008: 0x12345678
Value in x13: 0x12345678
Instruction: lw x14, 12(x10)

Action: Load the 32-bit word from address 0x100C into x14.
Value at 0x100C: 0x7654321 (0x07654321 in decimal)
Value in x14: 0x07654321
Instruction: add x15, x11, x13

Action: Add x11 and x13, store result in x15.
Calculation: 0x98765432 + 0x12345678 = 0xA9ABCABC
Value in x15: 0xA9ABCABC
Instruction: sltu x16, x15, x11

Action: Set x16 to 1 if x15 < x11 (unsigned comparison), else 0.
Comparison: 0xA9ABCABC vs 0x98765432
Since 0xA9ABCABC is greater than 0x98765432, x16 is set to 0.
Value in x16: 0
Instruction: add x17, x12, x14

Action: Add x12 and x14, store result in x17.
Calculation: 0x87654321 + 0x07654321 = 0x8F987432
Value in x17: 0x8F987432
Instruction: sltu x18, x17, x12

Action: Set x18 to 1 if x17 < x12 (unsigned comparison), else 0.
Comparison: 0x8F987432 vs 0x87654321
Since 0x8F987432 is greater than 0x87654321, x18 is set to 0.
Value in x18: 0
Instruction: add x17, x17, x16

Action: Add x17 and x16, store result in x17.
Calculation: 0x8F987432 + 0 = 0x8F987432
Value in x17: 0x8F987432
Instruction: la x20, result

Action: Load the address of result into x20.
Value in x20: 0x1010
Instruction: sw x15, 0(x20)

Action: Store the word from x15 into address 0x1010.
Value to store: 0xA9ABCABC
Memory at 0x1010: 0xA9ABCABC
Instruction: sw x17, 4(x20)

Action: Store the word from x17 into address 0x1014.
Value to store: 0x8F987432
Memory at 0x1014: 0x8F987432
Instruction: sw x18, 8(x20)

Action: Store the word from x18 into address 0x1018.
Value to store: 0
Memory at 0x1018: 0
Final Register Values
x10: 0x1000 (address of n)
x11: 0x98765432 (high 32 bits of the first 64-bit number)
x12: 0x87654321 (low 32 bits of the first 64-bit number)
x13: 0x12345678 (high 32 bits of the second 64-bit number)
x14: 0x07654321 (low 32 bits of the second 64-bit number)
x15: 0xA9ABCABC (result of adding x11 and x13)
x16: 0 (result of unsigned comparison x15 < x11)
x17: 0x8F987432 (result of adding x12 and x14, adjusted by x16)
x18: 0 (result of unsigned comparison x17 < x12)
x20: 0x1010 (address of result)
### Data Mapping
Address      | Value
-------------|-------------------------
0x1000       | 0x98765432 (high 32 bits of 0x9876543287654321)
0x1004       | 0x87654321 (low 32 bits of 0x9876543287654321)
0x1008       | 0x12345678 (high 32 bits of 0x123456787654321)
0x100C       | 0x7654321 (low 32 bits of 0x123456787654321)
0x1010       | 0 (initial value of result[0])
0x1014       | 0 (initial value of result[1])
0x1018       | 0 (initial value of result[2])
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
