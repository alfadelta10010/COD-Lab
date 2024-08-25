# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
its stored in COD lab week 1 code-1

### Observation - Single Cycle
- 1) first we are defining x10 to store the base address in it
  2)after that we define x11 and x12 with their respective numbers
  3)x13 is the register where we are storing the value after addition of 2 numbers
 
### Register Mapping
- **x10,x11,x12,x13:** 0x10000000,0x0000fffe,0x00010000,0x0001fffe

### Data Mapping
- **0x10000008,0x10000004,0x10000000:** 0x0001fffe,0x00000001,0x0000fffe
---

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
its stored in COD lab week 1 code-2

### Observation - Single Cycle
- 1) first we are defining x10 to store the base address in it
  2)after that we define x11 and x12 with their respective numbers
  3)x13 is the register where we are storing the value after addition of 2 numbers
 
### Register Mapping
- **x10,x11,x12,x13:** 0x10000000,0xfffffffe,0x00000001,0xffffffff

### Data Mapping
- **0x10000004,0x10000000** 0xffffffff,0x0001fffe
---

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
its stored in COD lab week 1 code-3

### Observation - Single Cycle
- 1) first we are defining x10 to store the base address in it
  2)after that we define x11 and x12 with their respective numbers
  3)x13 is the register where we are storing the value after addition of 2 numbers
 
### Register Mapping
- **x10,x11,x12,x13:** 0x10000000,0xfffffffe,0x00000001,0xffffffff

### Data Mapping
- **0x10000004,0x10000000:** 0xffffffff,0x0001fffe
---

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
its stored in COD lab week 1 code-4

### Observation - Single Cycle
- 1) we are loading a half word unsigned, word ,byte, unsigned byte
  2)we store these in their respective registers
  3)after that we define registers with their respective numbers
 
### Register Mapping
- **x10,x11,x12,x13,x14,x15,x16,x17:** 0x10000000,0x10000004,0x10000006,0x12345678,0x00001234,0x00001234,0xffffffff,0x000000ff

### Data Mapping
- **0x00000040,0x0000003c,0x00000038,0x00000034,0x00000030,0x0000002c,0x00000028,0x00000024,0x00000020,0x0000001c,0x00000018,0x00000014,0x00000010,0x0000000c,0x00000008,0x00000004,0x00000000:** 0x00000000,0x01152123,0x010520a3,0x00f52223,0x00e52123,0x00d52223,0x00064883,0x00060803,0x0005d783,0x00059703,0x00052683,0xff660613,0x10000617,0xffc58593,0x10000597,0x00050513,0x10000517





