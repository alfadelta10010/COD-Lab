# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
lab2.s.s

### Observation - Single Cycle
- We load the data from the data memory we have defined into register x10
- we load the 1st 4 bytes into x11 and the next 4 into x12
- we add the values stored into registers x11 and x12 and store it in register x13
- we store this word back to x10 without an overlap in the data existing so we load it from the 8th byte 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
-       x10 0x10000000
-       x11 0x02020202
-       x12 0x12345678
-       x13 0x1436587a

### Data Mapping
- **<Memory Address>:** <Value stored>
-       0x10000000  0x02020202
-       0x10000004  0x12345678
-       0x10000008  0x1436587a

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
lab2a.s.s

### Observation - Single Cycle
- We load the data from the data memory we have defined into register x10
- we load the 1st  bytes into x11 and the next  into x12
- we add the values stored into registers x11 and x12 and store it in register x13
- we store this word back to x10 without an overlap in the data existing so we load it from the 3rd byte 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
-       x10 0x10000000
-       x11 0xfffffffd
-       x12 0x00000001
-       x13 0xfffffffe

### Data Mapping
- **<Memory Address>:** <Value stored>
-       0x10000000  0x00fe01fd
-       0x10000004  0x00000000


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 halfwords

### Name of file:
lab2_half.s.s

### Observation - Single Cycle
- We load the data from the data memory we have defined into register x10
- we load the 1st 2 byte into x11 and the next 2 into x12
- we add the values stored into registers x11 and x12 and store it in register x13
- we store this word back to x10 without an overlap in the data existing so we load it from the 4th byte 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
-       x10 0x10000000
-       x11 0xfffffffd
-       x12 0x00000001
-       x13 0xfffffffe

### Data Mapping
- **<Memory Address>:** <Value stored>
-       0x10000000  0x0001fffd
-       0x10000004  0x0000fffe
# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types


### Name of file:
lab2_d.s.s

### Observation - Single Cycle
- We load the data from the data memory we have defined into register x10
- we load the 1st 2 bytes into x11 and the next 2 into x12 as unsigned numbers
- we add the values stored into registers x11 and x12 and store it in register x13
- we store this word back to x10 without an overlap in the data existing so we load it from the 8th byte 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
-for half unsigned
-       x10 0x10000000
-       x11 0x000000fd
-       x12 0x00000022
-       x13 0x0000011f
-for byte signed
-       x10 0x10000000
        x11 0xfffffffd
        x12 0x00000022
        x13 0x0000001f
### Data Mapping
- **<Memory Address>:** <Value stored>
-for half unsigned
-       0x10000000  0x002200fd
-       0x10000004  0x0000011f
-for byte signed
-       0x10000000  0x001f22fd
-       0x10000004  0x00000000
