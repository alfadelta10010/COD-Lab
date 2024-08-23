# Program 1: 
### Statement: <addition of 2 words>

### Name of file:
</home/vishnupriya/COD-Lab/week1/add2wordsweek1.s>

### Observation - Single Cycle
- <1. two words are taken into consideration>
 <2. we load the first word into firt 4 bytes and then the next word into next 4 bytes>
<3. after loading we are performing addition operation and storing the added value into memory.>
### Register Mapping
- **<x11>:** <0x80000000>
**<x12>:**<0x12345678>
**<x13>:**<0x92345678>
### Data Mapping
- **<0x00000018>:** <0x00000000>
**<0x00000014>:**<0x00d52423>
**<0x00000010>:**<0x00c586b3>
**<0x0000000c>:**<0x00452603>
**<0x00000008>:**<0x00052583>
**<0x00000004>:**<0x00050513>
**<0x00000000>:**<0x10000517>

# Program 2: 
### Statement: <addition of 2 half words>

### Name of file:
</home/vishnupriya/COD-Lab/week1/add2halfweek1.s>

### Observation - Single Cycle
- <1. two half words are taken into consideration, these half words address is stored into a register first.>
<2. each half word is now stored into each register and then they are added.>
<3. after the addition operation the result is stored into a register and that register into a memory.>
 
### Register Mapping
- **<x12>:** <0x00000597>
**<x13>:**<0x00001000>
**<x14>:** <0x00001597>

### Data Mapping
- **<0x00000018>:** <0x00000000>
**<0x00000014>:** <0x00e51223>
**<0x00000010>:** <0x00c68733>
**<0x0000000c>:** <0x00251683>
**<0x00000008>:** <0x00051603>
**<0x00000004>:** <0x00051597>
**<0x00000000>:** <0x10000597>


# Program 3: 
### Statement: <Addition of 2 bytes>

### Name of file:
</home/vishnupriya/COD-Lab/week1/add2byteweek1.s>

### Observation - Single Cycle
- <1. we consider 2 bytes and load their address into register x10>
<2. each byte is loaded into registers x11 and x12, then they addition operation takes place the result is stored>
<3. result in x13 is stored back into memory>
 
### Register Mapping
- **<x11>:** <0x00000008>
**<x12>:** <0x00000012>
**<x13>:** <0x0000001a>

### Data Mapping
- **<0x0000001c>:** <0x00000000>
**<0x00000018>:** <0x00000000>
**<0x00000014>:** <0x00d50123>
**<0x00000010>:** <0x00c586b3>
**<0x0000000c>:** <0x00150603>
**<0x00000008>:** <0x00050583>
**<0x00000004>:** <0x00050513>
**<0x00000000>:** <0x10000517>

# Program 4: 
### Statement: <format of storing signed and unsigned words, half words and byte data types>

### Name of file:
</home/vishnupriya/COD-Lab/week1/signunsignweek1.s>

### Observation - Single Cycle
- <1. 3 different types are taken into consideration word, byte and halfword,these addresses are loaded into registers.>
 <2. each unsigned and signed numbers are considered, loaded and stored>
<3. memory allocation is as follows, word-4byte, byte-1byte, unsigned byte-2byte, halfword-2byte, halfword unsigned-4byte>

### Register Mapping
- **<x13>:** <0x12347878>
**<x14>:** <0xfffffffe>
**<x15>:** <0x0000fffe>
**<x16>:** <0xfffffffe>
**<x17>:** <0x000000fe>

### Data Mapping
- **<0x00000040>:** <0x00000000>
**<0x0000003c>:** <0x01160123>
**<0x00000038>:** <0x010600a3>
**<0x00000034>:** <0x00064883>
**<0x00000030>:** <0x00060803>
**<0x0000002c>:** <0xfe460613>
**<0x00000028>:** <0x10000617>
**<0x00000024>:** <0x00f59223>
**<0x00000020>:** <0x00e59123>
**<0x0000001c>:** <0x0005d783>
**<0x00000018>:** <0x00059703>
**<0x00000014>:** <0xff858593>
**<0x00000010>:** <0x10000597>
**<0x0000000c>:** <0x00d52223>
**<0x00000008>:** <0x00052683>
**<0x00000004>:** <0x00050513>
**<0x00000000>:** <0x10000517>
