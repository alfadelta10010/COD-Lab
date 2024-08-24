# :Program 1: 
### Statement: Assembly Program for addition of 2 words 

### Name of file:
week1_1

### Observation - Single Cycle
- storing the base address of the word data in register then storing the data in registers 
with help of base address and offset value, adding the value of the two registers 
 
### Register Mapping
- **x10:** base address
 **s0** data of index1 from the memory loaded
 **s1** data of index2 from the memory loaded
 **s3** added value of the two data stored in the two registers
### Data Mapping
- **0x10000000:** 0x80001111
 **0x10000004:** 0x10000000


# :Program 2: 
### Statement: Assembly Program for addition of 2 half words 

### Name of file:
week1_2

### Observation - Single Cycle
- storing the base address of the halfword data in register then storing the data in registers
with help of base address and offset value, adding the value of the two registers

### Register Mapping
- **x10:** base address
 **s0** data of index1 from the memory loaded
 **s1** data of index2 from the memory loaded
 **s2** added value of the two data stored in the two registers
### Data Mapping
- **0x10000000:** 0x10008000


# :Program 3: 
### Statement: Assembly Program for addition of two byte numbers  

### Name of file:
week1_3

### Observation - Single Cycle
- storing the base address of the byte data in register then storing the data in registers
with help of base address and offset value, adding the value of the two registers

### Register Mapping
- **x10:** base address
 **s0** data of index1 from the memory loaded
 **s1** data of index2 from the memory loaded
 **s3** added value of the two data stored in the two registers
### Data Mapping
- **0x10000000:** 0x00001080


# :Program 4: 
### Statement: analyse the format of storing signed and unsigned words, half words and byte data types 

### Name of file:
week1_4

### Observation - Single Cycle
- Storing Signed and Unsigned byte: 0x10 will be appended six 0s to the MSB of the 32 bit 
register and if it is signed, the 1s will be appened i.e 0xFFFFFF80
similarly for Signed and Unsigned half word: four 0s will be appened for unsigned and 
4 1s for unsigned i.e copying the MSB bit
And for the word datatype: There is nothing called as lwu for RV32 since all the 
magnitude bits are occupying 32 bits and thus is signed by default and it is dependent 
on the MSB value. 

### Register Mapping
- **x10:** base address
 **s0** data of element1 of 1 byte from the memory loaded
 **s1** data of element1 of 1 unsigned byte from the memory loaded
 **s2** data of element2 of 1 half word (equal to 16bits) loaded into register
**s3** data of element2 of 1 unsigned half word (equal to 16bits) loaded into
register
**s4** data of element3 of 1 word type loaded into register


### Data Mapping
- **0x10000000:** 0x00800080
 **0x10000004:** 0x00800000
