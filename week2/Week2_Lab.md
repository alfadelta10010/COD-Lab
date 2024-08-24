# Program 1: 
### Statement: Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
add64bit.s

### Observation - Single Cycle
- -Copying address into a, getting the first 2 elements LSB bits (32 bits) into 
   registers and adding them, carry stored in another register to memory
  -Adding the carry with second elements 32 bit MSB then adding that with first 
   elements MSB
  -generated final carry is then again stored in the register
 
### Register Mapping
-**x1:** 0x10000000
 **s1:** 0x80001234 
 **s2:** 0x90000123
 **s3:** 0x00002468
 **s4:** 0x00000000
 **s5:** 0x90000123
 **s6:** 0x10001357
 **s8:** 0x00000001

### Data Mapping
 **0x10000000**0x00001234 
 **0x10000004**0x80001234
 **0x10000008**0x00001234
 **0x1000000c**0x90000123
 **0x10000014**0x00000000

...
