 Program 1: 
### Statement: Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
add64bit.s

### Observation - Single Cycle
- Basically 
~The code first gets the two element's first 16 LSB bits into registers
~ Next addition of those two and generating the carry, with that addition of the two
element's next 16 MSB bits, with first adding MSB of one element and carry from prev,
then adding that to the other element's MSB


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