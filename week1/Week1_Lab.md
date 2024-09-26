# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1_lab.s

### Observation - Single Cycle
- the addition of two no.s is done by storing the values of two 32 bit no.s in their respective registere i.e the load address is stored in x10,the lw command is used to load the words from memory to register and the addition takes place and sw command is used to store the value in the final destination register x13
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x12345678
- **x12:** 0x11117866
- **x13:** 0x2345cede


### Data Mapping
- **0x10000008:**0x2345cede
- **0x10000004:**0x11117866
- **0x10000000:**0x12345678



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1_lab.s


### Observation - Single Cycle
- addition of two half word which contains 16 bit no.s in their respective registere i.e the load address is stored in x10,the lh command is used to load the words from memory to register and the addition takes place and sh command is used to store the value in the final destination register x13
 
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00001234
- **x12:** 0x00001111
- **x13:** 0x00002345

### Data Mapping
- **0x10000008:**0x00002345
- **0x10000004:**0x00001111
- **0x10000000:**0x00001234


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1_lab.s


### Observation - Single Cycle
- addition of two bytes which contains 8 bit no.s in their respective registere i.e the load address is stored in x10,the lb command is used to load the words from memory to register and the addition takes place and sb command is used to store the value in the final destination register x13
 
 
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000012
- **x12:** 0x00000011
- **x13:** 0x00000023


### Data Mapping
- **0x10000008:**0x00000023
- **0x10000004:**0x00000011
- **0x10000000:**0x00000012


# Program 4: 
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types 

### Name of file:
week1_lab.s


### Observation - Single Cycle
-In the above given examples the stored values were of oly signed no.s while this contains a combination of signed and unsigned no.s of word ,half word and byte.The signed no.s contain both +ve and -ve values whereas the unsigned no.s contain oly non negative no.s, hence the difference.
 
### Register Mapping
- **x5:** 0xa8bd347
- **x6:** 0x10000004
- **x7:** 0x00006745
- **x8:** 0x00006745
- **x9:** 0x10000006
- **x10:** 0xffffffb4
- **x11:** 0x000000b4



### Data Mapping
- **0x10000008:**0x00000000
- **0x10000004:**0x00b46745
- **0x10000000:**0xa8bd3457


