# Program 1: 
### Statement: Little Endian to Big Endian

### Name of file: week3_2.s
 week3_2.s

### Observation - Single Cycle
- > First Mask off the LSB 2 hexa values
- > Next get into branch eqn and shift the masked value by 8 bits to right,
-   then shift the original value to right by 8 bits again then mask it
- > add that masked value to the previous masked value
- > Decrement the value of i and then check the count and repeat
- > At the end,x12 will contain the Little Endian value of the original number 
 
### Register Mapping
- **x10:** 0x10000000
  **x11:** 0x12345678
  **x12:** 0x00000078
  **x15:** 0x00000003 
### Data Mapping
- **0x10000000:** 0x12345678
...
