# Program 1: 
### Statement: Write an Assembly Program for the following C code

### Name of file:
w2prg1.s

### Observation - Single Cycle
- loading the induvidual values into the differnt registers .
- adding the induvidual values and getting them into a single register.
- storing the final value in the register x13 and storing that in memory.
 
### Register Mapping
- **x1:** 0x00001234
- **x2:** 0xffffaaaa
- **x3:** 0xffffbbbb
- **x4:** 0x00004321
- **x5:** 0x00002345
- **x6:** 0x00005432
- **x7:** 0xffffabab
- **x8:** 0x00003456
- **x9:** 0x00006543
- **x11:** 0xffffcccc
- **x12:** 0xffffffff

### Data Mapping
- **0x10000018:** 0x00000000
- **0x10000014:** 0x4540ffff
- **0x10000010:** 0xcccc6543
- **0x1000000c:** 0x3456abab
- **0x10000008:** 0x54322345
- **0x10000004:** 0x4321bbbb
- **0x10000000:** 0xaaaa1234


# Program 2: 
### Statement:Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
w2prg2.s

### Observation - Single Cycle
- initialize 2 double words
- load the value into 2 variables one for msb and one for lsb 
- add the msb and lsb seperatly and the add them togeather and store final value.   
 
### Register Mapping
- **x11** 0x10000008
- **x12** 0xfff1234a
- **x13** 0x1234ffff
- **x14** 0x34ffffff
- **x15** 0xffffff52
- **x16** 0x34f12349
- **x17** 0x1234ff51
- **x18** 0x00000001
- **x19** 0x00000001
- **x20** 0x1234ff52

### Data Mapping
- **0x1000000c:** 0xffffff52
- **0x10000008:** 0x34ffffff
- **0x10000004:** 0x1234ffff
- **0x10000000:** 0xfff1234a



