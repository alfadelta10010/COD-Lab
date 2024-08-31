# Program 1: 
### Statement: Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
add64bit.s

### Observation - Single Cycle
- Basically 
~The code first gets the two element's first 16 LSB bits into registers
~ Next addition of those two and generating the carry, with that addition of the two
element's next 16 MSB bits, with first adding MSB of one element and carry from prev,
then adding that to the other element's MSB
~ Generated carry is then analysed for overflow and other stuff
 
### Register Mapping
- **x1:**10000000 
 **s1:**00001234
 **s2:**00001234
 **s3:**00002468
 **s4:**00000000
 **s1:**80001234
 **s2:**90000123
 **s10:**00000000
 **s5:**90000123
 **s6:**10001357
 **s8:**00000001

### Data Mapping
- **10000000:** 0x00001234
- **10000004:** 0x80001234 
- **10000008:** 0x00001234 
- **1000000c:** 0x90000123 
- **10000014:** 0x00000000 
...

# Program 2: 
### Statement: Write an Assembly Program for the given C code:

### Name of file:
week2_1.s

### Observation - Single Cycle
~ Basically 
  1. load the address of the first element into the x10 register
  2. x11 mapped to h, declare i and maximum value to be incremented
  3. enter into 'branch when not equals' statement
  4. get the first element into x13, add that x13 with h (register x11)
  5. increment the i,increment the base address by 2 (because its a half word, half=16bits, and caz of byte             addressable, each location is 8 bits and needs 2 locations to store 1 half word)
  6. if x12 not equal to x14 (i != 11 ), back into the loop
  7. store the final value of h into data memory
  
### Register Mapping
- **x1:**10000000 
 **s1:**00001234
 **s2:**00001234
 **s3:**00002468
 **s4:**00000000
 **s1:**80001234
 **s2:**90000123
 **s10:**00000000
 **s5:**90000123
 **s6:**10001357
 **s8:**00000001

### Data Mapping
- **10000000:** 0x00001234
- **10000004:** 0x80001234 
- **10000008:** 0x00001234 
- **1000000c:** 0x90000123 
- **10000014:** 0x00000000 
...
