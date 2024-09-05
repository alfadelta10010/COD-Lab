# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1_p1.s

### Observation - Single Cycle
- 
    Loading the address of a into register x10
    Loading the word (0xffff1234) into register x11
    Loading the word (0x00000123) into register x12
    Adding the two words in x11 and x12 and then storing the result in x13

 
### Register Mapping
- 
    **x11:** 0xffff1234
    **x12:** 0x00000123
    **x13:** 0xffff1357


### Data Mapping
-  
    **0x10000008:** 0xffff1357
    **0x10000004:** 0x00000123
    **0x10000000:** 0xffff1234
    
    
    
# Program 2: 
### Statement:  Write an Assembly Program for addition of 2 half words

### Name of file: 
- week1_p2.s

### Observation - Single Cycle
- 
    
    Loading the address of a into register x10
    Loading the word into register x11
    Loading the word into register x12
    Adding the two half words in x11 and x12 and then storing the result in x13

 
### Register Mapping
- 
    
    x11: 0xffffff34
    x12: 0x00001231
    x13: 0x00001165


### Data Mapping
- 
    
    0x10000004: 0x00001165
    0x10000000: 0x1231ff34
    
    
    
    
# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
- week1_p3.s

### Observation - Single Cycle
- 
    
    Loading the address of a into register x11
    Loading the word into register x12
    Loading the word into register x13
    Adding the two half words in x11 and x12 and then storing the result in x13

 
### Register Mapping
- 
    
   
    x11: 0x00000023
    x12: 0xffffffff
    x13: 0x00000022



### Data Mapping
- 
 

    0x10000004: 0x00000000
    0x10000000: 0x0022ff23
    
    
    
    
    
# Program 4: 
### Statement:  Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
- week1_p4.s

### Observation - Single Cycle
- Loading the base address of a into register x2 i.e word
  Loading the base address of b into register x3 i.e half word
  Loading the base address of c i.e byte into register x4
  Loading the word (0xFFFFFFFE) into register x15
  Loading the signed half word (0XFFF4) into register x16
  Loading the unsigned half word (0XFFF9) into register x13
  Loading the signed byte (0XFd) into register x17
  Loading the unsigned byte (0XFd) into register x18


 
### Register Mapping
- 
    
    
    **x3:**   0x10000004
    **x4:**   0x10000006
    **x15:**  0xfffffffe
    **x16:**  0xfffffff4
    **x17:**  0x0000fff4
    **x18:**  0xfffffffd
    **x19:**  0x000000fd


### Data Mapping
- 


    
    0x10000000: 0xfffffffe
    0x10000004: 0x00fdfff4
    0x10000008: 0x00000000
    0x10000010: 0x00000000



