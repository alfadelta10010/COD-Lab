# PROGRAM 1:
### STATEMENT : Write an assembly program for addition of 2 words
 
### Name of the file:
lab1_prog1.s

### Observation 
- <Loading the address of n into x10 (base address)
 loading 1st word into x11
 loading 2nd word to x12
 adding x11 with x12 with destination for the result as x13
 storing the result x13 into the memory>

### Register mapping 
- **<x10>:**  <0x10000000>
- **<x11>:**  <0x12345678>
- **<x12>:**  <0x12121212>
- **<x13>:**  <0x2446688a>

### Data mapping
- **<0x10000008>:**  <0x2446688a>
- **<0x10000004>:**  <0x12121212>
- **<0x10000000>:**  <0x12345678>

===========================================================================

#PROGRAM 2 :
### Statement: Write an assembly program for addition of two half words

### Name of the file:
 lab1_prog2.s

### Observation
- <Loading the address of n into x10 (base address)
 loading 1st halfword(16bits number) into x5
 loading 2nd halfword to x6
 adding x5 with x6 with destination for the result as x7
 storing the result x7 into the memory>

### Register mapping
- **<x10>:**  <0x10000000>
- **<x05>:**  <0x00001234>
- **<x06>:**  <0x00004321>
- **<x07>:**  <0x00005555>


### Data mapping
- **<0x10000004>:**  <0x00005555>
- **<0x10000000>:**  <0x43211234>

===========================================================================

#PROGRAM 3 :
### Statement: Write an aassembly program for addition of two bytes

### Name of the file:
 lab1_prog3.s

### Observation
- <Loading the address of n into x10 (base address)
 loading 1st byte(8bits number) into x5
 loading 2nd byte to x6
 adding x5 with x6 with destination for the result as x7
 storing the result x7 into the memory>

### Register mapping
- **<x10>:**  <0x10000000>
- **<x05>:**  <0x00000012>
- **<x06>:**  <0x00000027>
- **<x07>:**  <0x00000039>


### Data mapping
- **<0x10000004>:**  <0x00000000>
- **<0x10000000>:**  <0x00392712>

===========================================================================

#PROGRAM 4 :
### Statement: Write an assembly program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of the file:
 lab1_prog4.s

### Observation
- < this code shows how a signed and an unsigned number is stored in the register , in case of on signed number the MSB tells us the sign of the number 0 fir positive and 1 for negative , in case of byte and half word the remaing bits in the 32 bit register the MSB bit is extended to fill the remaining bits, in case of a word there is no unsigned in RV32I.... in the program I have used add operation also>


### Register mapping
- **<x10>:**  <0x10000000>
- **<x11>:**  <0x10000004>
- **<x12>:**  <0xfffffffd>
- **<x13>:**  <0x00000002>
- **<x14>:**  <0xffffffff>
- **<x15>:**  <0x0000fffd>
- **<x16>:**  <0x00000002>
- **<x17>:**  <0x0000ffff>
- **<x18>:**  <0xfffffff9>
- **<x19>:**  <0x00000003>
- **<x20>:**  <0xfffffffc>
- **<x21>:**  <0x000000f9>
- **<x22>:**  <0x00000003>
- **<x23>:**  <0x000000fc>

### Data mapping
- **<0x10000008>:**  <0x00000000>
- **<0x10000004>:**  <0xfcfcffff>
- **<0x10000000>:**  <0x0002fffd>

===========================================================================







