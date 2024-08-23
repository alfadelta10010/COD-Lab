# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
q1pes154.s

### Observation - Single Cycle
- Since the question asked is for the addition of 2 words we are storing the value of the 2 words in registers x11 and x12.
- The lw commands are used to load the words. Next we are using ADD command to find the addition of the two numbers and further the value of the added result will be stored in x13 with the help of sw command

### Register Mapping
- **x11:** 0x11187902
- **x12:** 0x12345678
- **x13:** 0x234ccf7a

### Data Mapping
- **0x100000c:** 0x23457899
- **0x1000008:** 0x00000000
- **0x1000004:** 0x12345678
- **0x1000000:** 0x11112221

 Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
q2pes154.s

### Observation - Single Cycle
- Since the question asked is for the addition of 2 half words we are storing the value of the 2 half words in registers x15 and x16.
- The lw commands are used to load the words. Next we are using ADD command to find the addition of the two numbers and further the value of the added result will be stored in x17 with  the -help of sw command

### Register Mapping
- **x11:** 0x00006735
- **x12:** 0x00001234
- **x13:** 0x00007987

### Data Mapping
- **0x1000004:** 0x00007987
- **0x1000000:** 0x12346753

----------------------------------------------------------------------------

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
q3pes154.s

### Observation - Single Cycle
- The question asked is for the addition of 2 bytes we are storing the value of the 2 bytes in registers x15 and x16.
- The lw commands are used to load the words. Next we are using ADD command to find the addition of the two numbers, further the value of the added result will be stored in x17 with the
help of sw command

### Register Mapping
- **x11:** 0x00000004
- **x12:** 0x00000002
- **x13:** 0x00000006

### Data Mapping
- **0x1000004:** 0x00000000
- **0x1000000:** 0x00060204

----------------------------------------------------------------------------

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
q4pes154.s

### Observation - Single Cycle
- Here we are using one signed and one unsigned number of word, half word and byte data types 
- Here we are loading the two numbers(one positive and one negative) into the respective register and performing the add operation to get the result 
- The added result is then stored in another register.

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0xffff8001
- **x12:** 0x00000123
- **x13:** 0xffff8124
- **x14:** 0x00008000
- **x15:** 0x00000001
- **x16:** 0x00008001


### Data Mapping
- **0x1000008:** 0x00000000
- **0x1000004:** 0x80018001
- **0x1000000:** 0x00018000

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0xffffff83
- **x12:** 0x00000012
- **x13:** 0xffffff95
- **x14:** 0x00000083
- **x15:** 0x00000012
- **x16:** 0x00000095

### Data Mapping
- **0x1000004:** 0x00000095
- **0x1000000:** 0x00951283


