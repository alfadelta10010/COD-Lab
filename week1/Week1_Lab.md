# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
folder-  program-040 /word.s

### Observation - Single Cycle
-    Write an array which consists of 2 words to be added,which is stored in data memory.
Load the base address into register to access the values in data memory.
Using "add" operator to add and "sltu" check if any carry is generated, and stored into another registers.
And which is inturn stored into data memory 
### Register Mapping
-   x10 - 0x10000000
    x9 - 0x12345678
    x8 - 0xa2345678
    x6 - 0xb468acf0
    x7 - 0x00000000

### Data Mapping
     0x10000000 : 0x12345678
     0x10000004 : 0xa23456780
     0x10000008 : 0xb468acf0
     0x1000000c : 0x00000000

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
  folder programs-040/prg2.s

### Observation - Single Cycle
-   Write an array which consists of 2 half words to be added,which is stored in data memory.
Load the base address into register to access the values in data memory.
Using "add" operator to add and "sltu" check if any carry is generated, and stored into another registers.
And which is inturn stored into data memory
 
### Register Mapping
-    x10 - 0x10000000
     x9 - 0x00001234
     x8 - 0x00001235
     x6 - 0x00002469
     x7 - 0x00000000

### Data Mapping
-  0x10000000 - 0x12351234
   0x10000004 - 0x00002469
   0x10000008 - 0x00000000

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
 folder- programs-040 /byte.s

### Observation - Single Cycle
- Write an array which consists of 2 bytes to be added,which is stored in data memory.
Load the base address into register to access the values in data memory.
Using "add" operator to add and "sltu" check if any carry is generated, and stored into another registers.
And which is inturn stored into data memory
 
### Register Mapping
- x10 - 0x10000000
  x9 - 0x00000012
  x8 - 0x00000022
  x7 - 0x00000000
  x6 - x00000034

### Data Mapping
- 0x10000000 - 0x00342212

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
 folder - programs-040 /storeun.s

### Observation - Single Cycle
-  Storing the word ,half and byte in different array. Loaded the value in unsigned and signed format.
Stored the value from register to data memory 

### Register Mapping
- x10 - 0x10000000
  x20 - 0x10000004 
  x30 - 0x10000006
  x3 - 0x12345678
  x4 - 0xfffff234
  x5 - 0x0000f234
  x6 - 0xffffff92
  x7 - 0x00000092

### Data Mapping
-  0x10000014 - 0x00009292
   0x10000010 - 0xf234f234
   0x10000008 - 0x12345678
   0x10000004 - 0x0092f234
   0x10000000 - 0x12345678
