# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words
  

### Name of file:
program1.s

### Observation - Single Cycle
- Loads two words from memory.
- Adds the two words and stores the result in a register.
- Stores the result back in memory.

### Register Mapping
-** x11:** 0x00000001
-** x12:** 0x12345678
-** x13:** 0x12345679

### Data Mapping
-** 0x10000008:** 0x12345679
-** 0x10000004:** 0x12345678
-** 0x10000000:** 0x00000001


 Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
program2.s

### Observation - Single Cycle
-  Loads two half-words from memory.
   Adds the two half-words and stores the result in a register.
   Stores the result back in memory.
 
### Register Mapping 
-** x10:** 0x10000000
-** x11:** 0x00000001
-** x12:** 0x00001234
-** x13:** 0x00001235

### Data Mapping
-** 0x10000003 :** 0x00001235
-** 0x10000000 :** 0x12340001 


Program 3:
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
program3.s

### Observation - Single Cycle
- Loads bytes into x11 and x12 from memory addresses based on x10.
  Adds the bytes in x11 and x12, storing the result in x13.
  Stores the result from x13 to memory at an offset of 2 bytes from the address in x10.



### Register Mapping 
-** x10:** 0x10000000
-** x11:** 0x00000001
-** x12:** 0x00000012
-** x13:** 0x00000013

###  Data Mapping
-** 0x10000003 :** 0x00000000
-** 0x10000000 :** 0x00131201

Program 4:
### Statment:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
 
### Name of file:
program4.s

### Observation - Single Cycle
- Loads unsigned bytes/half-words, adds them, and stores the result.
  Uses lbu/lhu to load unsigned bytes/half-words from memory into registers.
  Stores the result using sb/sh at an offset from the starting address.


### Register Mapping 
-** x10:** 0x10000000
-** x11:** 0x00000001
-** x12:** 0x00001234
-** x13:** 0x00001235

### Data Mapping
-** 0x10000003 :** 0x10000004
-** 0x10000000 :** 0x10000000


