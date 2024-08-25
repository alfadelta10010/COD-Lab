# Program 1: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
assign4

### Observation - Single Cycle
- The code loads addresses of variable storingholding the data types.
- It then loads the data types into registers.
- Then it saves the data types as signed and unsigned data types.
 
### Register Mapping
- x10 - 0x10000000
- x11 - 0x10000004
- x12 - 0x10000006
- x13 - 0x55973602
- x14 - 0x00005560
- x15 - 0x00000003
- x16 - 0x00005560
- x17 - 0x00000003

### Data Mapping
- 0x10000010 - 0x00000000
- 0x10000008 - 0x00000000
- 0x10000004 - 0x03603602
- 0x10000000 - 0x55973602
