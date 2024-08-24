# Program 1: 
### Statement: 
 Program for addition of 2 words

### Name of file:
/home/sukun2101/COD-Lab/week1/prog1w1.s

### Observation - Single Cycle
- giving memory locations and giving values for both the words
  loading words into the registers
  doing the add operations and then storing the value in x13
  then checking for carry and storing results in memory 
### Register Mapping
- x11:0x42738814
  x12:0x91423746
  x13:0xd3b5bf5a

### Data Mapping
- 0x00000014-0x00d52423
0x00000010-0x00c586b3
0x0000000c-0x00452603
0x00000008-0x00052583
0x00000004-0x00050513
0x00000000-0x10000517

# Program 2: 
### Statement:
 program for addition of 2 half words

### Name of file:
/home/sukun2101/COD-Lab/week1/prog2w1.s
### Observation - Single Cycle
- loading data to the memory and storing address in x10 register and also loading  data to the register x11 & x12
  adding data and storing that result in x13
  we then store it back to memory
 
### Register Mapping
-x11-0x00007354
 x12-0x00002461
 x13-0x000097b5


### Data Mapping
- 0x00000014-0x00d51223
0x00000010-0x00c586b3
0x0000000c-0x00251603
0x00000008-0x00051583
0x00000004-0x00050513
0x00000000-0x10000517


# Program 3: 
### Statement: 
Program for addition of 2 bytes

### Name of file:
/home/sukun2101/COD-Lab/week1/prog3w1.s

### Observation - Single Cycle
- loading data to the memory and storing address in x10 register 
  loading  data to the register x11 & x12
  adding data and storing that result in x13
  we then store it back to memory
 
### Register Mapping
- x11-0x00000072
 x12-0x00000000
x13-0x00000072

### Data Mapping
- 0x00000014-0x00d50223
0x00000010-0x00c586b3
0x0000000c-0x00250603
0x00000008-0x00050583
0x00000004-0x00050513
0x00000000-0x10000517

# Program 4: 
### Statement:
Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
/home/sukun2101/COD-Lab/week1/prog4w1.s

### Observation - Single Cycle
- loading base address of a and b to x10 and x11 respecively
  then we are loading the unsigned data to the register x12 & x13
  after that we are loading the signed data to the register x14 & x15
 and we are saving
 
### Register Mapping
- x12-0x0000fffb
  x13-0x00000060
  x14-0xfffffffb
  x15-0x00000060

### Data Mapping
- 0x0000001c-0x00058783
  0x00000018-0x00055603
  0x00000014-0x00051703
  0x00000010-0x0005c683
  0x0000000c-0xffa58593
  0x00000008-0x10000597
  0x00000004-0x00050513
  0x00000000-0x10000517
