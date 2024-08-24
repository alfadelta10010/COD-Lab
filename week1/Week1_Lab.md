# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1q1.s

### Observation - Single Cycle
Taking 2  words 0xFFFFFFFF,0xFFFFFFFF,and store them in array "n", loading n to x1 ,#loading n[1] to x11, loading n[2] to x12 and adding two register and store them in one register

 
### Register Mapping
x11=0xffffffff
x12=0xffffffff
x13=0xfffffffe
x16=0000000001

### Data Mapping
0x1000000c=0x00000001
0x10000008=0xfffffffe
0x10000004=0xffffffff
0x10000000=0xffffffff

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1q1.s

### Observation - Single Cycle
taking 2 half words 0x0135,0x5674  and store them in array "n", loading n to x1 ,#loading n[1] to x11, loading n[2] to x12 and adding two register and store them in one register


### Register Mapping
x11=0x00000135
x12=0x00005678
x13=0x000057a9
x16=0000000000

### Data Mapping
0x10000008=0x00000000
0x10000004=0x000057a9
0x10000000=0x56740135


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1q3.s

### Observation - Single Cycle
taking 2 Bytes 0x12,0x34 and store them in array "n", loading n to x1 ,#loading n[1] to x11, loading n[2] to x12 and adding two register and store them in one register

### Register Mapping
x11=0x00000012
x12=0x00000034
x13=0x00000046
x16=0000000000

### Data Mapping
0x10000004=0x00000000
0x10000000=0x46003412

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types


### Name of file:
week1q4.s

### Observation - Single Cycle
Taking a:.word 0x00012345 , b:.half 0x1234 , c:.byte 0x12 ,load  word a to x11,loading signed halfword b to x12,loading unsigned half word c to x13,loading signed byte to x14,loading unsigned byte to x15,storing word ,half word ,byte

 
### Register Mapping
x11=0x00012345
x12=0x00001234
x13=0x00000012
x16=0000000000


### Data Mapping
0x10000010=0x00000000
0x10000008=0x00001212
0x10000004=0x00012345
0x10000000=0x00012345
