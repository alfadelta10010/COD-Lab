# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
w1p1.s

### Observation - Single Cycle
-   Loading the address of a into register x10
    Loading the word (0x00000005) into register x11
    Loading the word (0X00000003) into register x12
    Adding the two words in x11 and x12 and then storing the result in x13
    Storing the content of x13 in data memory at 0x10000008

 
### Register Mapping
-   **x10**:0x10000000
-   **x11**:0x00000005
-   **x12**:0x00000003
-   **x13**:0x00000008

### Data Mapping
-   **0x10000000**:0x00000005
-   **0x10000004**:0x00000003
-   **0x10000008**:0x00000008
    
    
# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
w1p2.s

### Observation - Single Cycle
-   Loading the address of a into register x10
    Loading the half word (0xFFF9) into register x11
    Loading the half word (0X0004) into register x12
    Adding the two half words in x11 and x12 and then storing the result in x13
    Storing the content of x13 in data memory at 0x10000004

 
### Register Mapping
-   **x10**:0x10000000
-   **x11**:0xfffffff9
-   **x12**:0x00000004
-   **x13**:0xfffffffd

### Data Mapping
-   0x10000000:0x0004fff9
    0x10000004:0x0000fffd
    
    
# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
w1p3.s

### Observation - Single Cycle
-   Loading the address of a into register x10
    Loading the byte (0xFE) into register x11
    Loading the byte (0x01) into register x12
    Adding the two bytes in x11 and x12 and then storing the result in x13
    Storing the content of x13 in data memory at 0x10000004

 
### Register Mapping
-   x10:0x10000000
    x11:0xfffffffe
    x12:0x00000001
    x13:0xffffffff

### Data Mapping
-   0x10000000:0x000001fe
    0x10000004:0x000000ff
    

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
w1p4.s

### Observation - Single Cycle
-   Loading the base address of a i.e word into register x2
    Loading the base address of b i.e half word into register x3
    Loading the base address of c i.e byte into register x4
    Loading the word (0xFFFFFFFE) into register x11
    Loading the signed half word (0XFFF9) into register x12
    Loading the unsigned half word (0XFFF9) into register x13
    Loading the signed byte (0XFd) into register x14
    Loading the unsigned byte (0XFd) into register x15
  

 
### Register Mapping
-   x2:0x10000000
    x3:0x10000004
    x4:0x10000006
    x11:0xFFFFFFFE
    x12:0xFFFFFFF9
    x13:0x0000FFF9
    x14:0xFFFFFFFD
    x15:0x000000FD

### Data Mapping
-   **0x10000000:0xFFFFFFFE
    **0x10000004:0x00FDFFF9
    


