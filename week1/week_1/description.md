#SRN : PES2UG22EC012

# Program 1: 
### Statement:
- Write an Assembly Program for addition of 2 words
### Name of file:
- program1.s
### Observation - Single Cycle
- Loading baseaddress into x10 register.
adding 2 word sized data in 2 registers(x5 and x6) and storing them in a single register(x7).  
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
<x5> -> 0x12345678
<x6> -> 0x12121212
<x7> -> 0x2446688a

### Data Mapping
- **<Memory Address>:** <Value stored>
0x00000000 -> 0x10000517
0x00000004 -> 0x00050513
0x00000008 -> 0x00052283

<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
#Program 2: 
### Statement:
- Write an Assembly Program for addition of 2 halfwords
### Name of file:
- program2.s
### Observation - Single Cycle
- adding 2 half-word sized data in 2 registers and storing them in a single register.  
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
<x5> -> 0x0000ffff
<x6> -> 0x0000ffff
<x7> -> 0x0001fffe

### Data Mapping
- **<Memory Address>:** <Value stored>
0x00000000 -> 0x10000517
0x00000004 -> 0x00050513
0x00000008 -> 0x00052283


<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
#Program 3: 
### Statement:
- Write an Assembly Program for addition of 2 bytes
### Name of file:
- program3.s
### Observation - Single Cycle
- adding 2 byte sized data(decimal numbers) in 2 different registers 
 adding them in a seperate register 
 storing them in the same reg.  
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
<x8>  -> 0x00000001
<x9>  -> 0x00000002
<x11> -> 0x00000003

### Data Mapping
- **<Memory Address>:** <Value stored>
0x00000000 -> 0x10000517
0x00000004 -> 0x00050313
0x00000008 -> 0x00050403


<><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>
#Program 4: 
### Statement:
- Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
### Name of file:
- program4.s
### Observation - Single Cycle
-

### Register Mapping
- **<Register Number Used>:** <Value stored>
x10  0x10000004
x18  0x00000005
x19  0x00000004
x20  0x00000009
x21  0x00000005
x22  0x00000004
x23  0x00000009
x24  0x00000009
x25  0x09090009
x26  0x003f0000
x27  0x09480009

### Data Mapping
- **<Memory Address>:** <Value stored>
0x1000000c ->  0x00251983
0x10000008 ->  0x00051903
0x10000004 ->  0x00050513
0x00000000 ->  0x10000517
