# Program 1: 
### Statement:<Write an Assembly Program for addition of 2 words>

### Name of file:
<CODLAB_W1_1.s>

### Observation - Single Cycle
- < 2 values to be added are stores in variable 'a' and address is loaded to register x2.>
- < each values are added and stored in register 'x5' >
- < the final added value is moved from register 'x5' to memory >

### Register Mapping
- **<x2>:** <address of variable a >
- **<x3>:** <0x00000111>
- **<x4>:** <0x00000111>
- **<x5>:** <0x00000222>

### Data Mapping
- **<0(x2)>:** <0x00000111>
- **<4(x2)>:** <0x00000111>
- **<8(x2)>:** <0x00000222>

# Program 2:
### Statement:<Write an Assembly Program for addition of 2 half words>

### Name of file:
<CODLAB_W1_2.s>

### Observation - Single Cycle
- < 2 values to be added are stored in variable 'a' and address is loaded to register x1.>
- < each values are added and stored in register 'x4' >
- < the final added value is moved from register 'x4' to memory >

### Register Mapping
- **<x1>:** <address of variable a >
- **<x2>:** <0x0000000F>
- **<x3>:** <0x00000001>
- **<x4>:** <0x00000010>

### Data Mapping
- **<0(x1)>:** <0x0000000F>
- **<2(x1)>:** <0x00000001>
- **<4(x1)>:** <0x00000010>

# Program 3:
### Statement:<Write an Assembly Program for addition of 2 bytes>

### Name of file:
<CODLAB_W1_3.s>

### Observation - Single Cycle
- < 2 valuesof bytes sized to be added are stored in variable 'a' and address is loaded to register x1.>
- < each values are added and stored in register 'x4' >
- < the final added value is moved from register 'x4' to memory >

### Register Mapping
- **<x1>:** <address of variable a >
- **<x2>:** <0x00000003>
- **<x3>:** <0x00000001>
- **<x4>:** <0x00000004>

### Data Mapping
- **<0(x1)>:** <0x00000003>
- **<1(x1)>:** <0x00000001>
- **<2(x1)>:** <0x00000004>

# Program 4:
### Statement:<Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types>

### Name of file:
<CODLAB_W1_4.s>

### Observation - Single Cycle
- < 2 values of word,half word,byte(signed and unsigned) sized to be added are stored in variable 'a','b','c', and address is loaded to register x1,x5,x10>
- < each values are added and stored in register 'x4','x8','x14' >
- < the final added value is moved from register 'x4','x8','x14', to memory >

### Register Mapping
- **<x1>:** <address of variable a >
- **<x2>:** <0x0000000F>
- **<x3>:** <0x00000001>
- **<x4>:** <0x00000010>
- **<x5>:** <address of variable b >
- **<x6>:** <0x00000005>
- **<x7>:** <0x00000005>
- **<x8>:** <0x0000000A>
- **<x10>:** <address of variable c >
- **<x12>:** <0x00000002>
- **<x13>:** <0x00000002>
- **<x14>:** <0x00000004>

### Data Mapping
- **<0(x1)>:** <0x0000000F>
- **<4(x1)>:** <0x00000001>
- **<8(x1)>:** <0x00000010>
- **<0(x5)>:** <0x00000005>
- **<2(x5)>:** <0x00000005>
- **<4(x5)>:** <0x0000000A>
- **<0(x10)>:** <0x00000002>
- **<1(x10)>:** <0x00000002>
- **<2(x10)>:** <0x00000004>

