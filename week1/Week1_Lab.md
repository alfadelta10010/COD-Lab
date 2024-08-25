# Program 1:
### Statement: Write an Assembly Program for addition of 2 words

### Name of file: week1.q1.s

### Observation - 2 words 0x00000023 and 0xffff456a are getting loaded in x2 and x3 registers respectively. then those two registers value is added to get the following result 0xffff458d later this result is stored in x4 register

### Register Mapping
-x2:0x00000023
-x3:0xffff456a
-x4:0xffff458d

### Data Mapping
-0x10000000:0x00000023
-0x10000004:0xffff456a
-0x10000008:0xffff458d





# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:week1.q2.s

### Observation - 2 half words 0x0001, 0x0089 are getting loaded in x2 and x3 registers respectively. then those two registers value is added to get the following result 0x008a later this result is stored in x4 register

### Register Mapping
-x2:0x0001
-x3:0x0089
-x4:0x008a

### Data Mapping
-0x10000000:0x0001
-0x10000002:0x0089
-0x10000004:ox008a





# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes


### Name of file:week1.q3.s

### Observation - 2 bytes 0x02, 0x6A are getting loaded in x2 and x3 registers respectively. then those two registers value is added to get the following result 0x6c later this result is stored in x4 register

 
### Register Mapping
-x2:0x02
-x3:0x6a
-x4:0x6c
 

### Data Mapping
-0x10000000:0x02
-0x10000001:0x6a
-0x10000002:ox6c





# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:week1.q4.s

### Observation - to check how signed and unsigned words,half words and byte is stored in register
 
### Register Mapping
-x3:0x12345678
-x4:0xfffff234
-x5:0x0000f234
-x6:0xffffff92
-x7:0x00000092

### Data Mapping
- 0x10000000:0x12345678
-0x10000004:0x0092f234
-0x10000008:0x12345678
-0x10000010:0xf234f234
-0x10000014:0x00009292
-0x10000018:0x00000000