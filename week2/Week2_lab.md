### Program 2: 

#### Statement: 
Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

#### Name of file:
Week2_prog2.s

#### Observation - Single Cycle
- The program loads four 32-bit values from memory into registers x6, x7, x8, and x9.
- It computes the sum of the values in registers x6 and x8, and stores the result in the memory address.
- It compares the computed sum with the value in x6 and stores the result of the comparison along with the sum of x7 and x9 in the memory address.

#### Register Mapping
- *x5:* Address of the start of array a.
- *x6:* Value loaded from memory address a (0x00000001).
- *x7:* Value loaded from memory address a+4 (0x00000002).
- *x8:* Value loaded from memory address a + 8 (0x00000003).
- *x9:* Value loaded from memory address a + 12 (0x00000004).
- *x10:* Sum of x6 and x8 (0x00000004).
- *x11:* Result of comparison x10 < x6 (0).
- *x12:* Sum of x7 and x9 (0x00000006).
- *x13:* Sum of x12 and x11 (0x00000006).

#### Data Mapping
x5 - 0x10000000
x6 - 0x00000001
x7 - 0x00000002
x8 - 0x00000003
x9 - 0x00000004
x10 - 0x00000004
x11 - 0x00000000
x12 - 0x00000006
x13 - 0x00000006
---

### Program 1:

#### Statement:
Write an Assembly Program for the C code

#### Name of file:
Week2_prog1.s
#### Observation - Single Cycle
- The program loads the address of array a into register x5.
- It initializes registers x6 and x7 to zero.
- It then performs operations to access the 16-bit elements from array a, summing these elements into register x6 while iterating through the array.

#### Register Mapping
- *x5:* Address of the start of array a.
- *x6:* Accumulated sum of 16-bit values .
- *x7:* Index for accessing elements (incremented in each iteration).
- *x8:* Address of the current element being accessed.
- *x9:* Value of the current 16-bit element loaded from memory.

#### Data Mapping
x5 - 0x10000000
x6 - 0x00001234
x7 - 0x00000001
x8 - 0x10000002
x9 - 0x00001234

---
