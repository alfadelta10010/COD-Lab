# Program 1:
### Statement:Write an Assembly Program for addition of 2 words
### Name of file: COD-Lab/week1/pragram1.s
### Observation-Single cycle
- Program is loading words from memory into registers
- Program is adding the contents of the registers
- The result is then being stored in the memory
### Register Mapping
- x10:0x10000000
- x11:0x12345678
- x12:0x34567892
- x13:0x468acf0a
### Data Mapping
- 0x10000000:0x12345678
- 0x10000004:0x34567892
- 0x10000008:0x468acf0a

# Program 2:
### Statement:Write an Assembly Program for addition of 2 half words
### Name of file: COD-Lab/week1/pragram2.s
### Observation-Single cycle
- Program is loading half words from memory into registers
- Program is adding the contents of the registers
- The result is then being stored in the memory
### Register Mapping
- x10:0x10000000
- x11:0x00001234
- x12:0x00003457
- x13:0x0000468b
### Data Mapping
- 0x10000000:0x34571234
- 0x10000004:0x0000468b

# Program 3:
### Statement:Write an Assembly Program for addition of 2 bytes
### Name of file: COD-Lab/week1/pragram3.s
### Observation-Single cycle
- Program is loading bytes from memory into registers
- Program is adding the contents of the registers
- The result is then being stored in the memory
### Register Mapping
- x10:0x10000000
- x11:0x00000001
- x12:0x00000020
- x13:0x00000021
### Data Mapping
- 0x10000000:0x00212001
- 0x10000004:0x00000000

# Program 4:
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
### Name of file: COD-Lab/week1/pragram4.s
### Observation-Single cycle
- In RV32I there is no lwu command since it is a 32 bit processor
- Whereas in half word and byte we see that they can bestored as signed and unsigned
- In unsigned it fills it with 0's and in signed it copies the MSB value
### Register Mapping
- x10:0x10000000
- x11:0x10000004
- x12:0x10000006
- x13:0x12345678
- x14:0x00001234
- x15:0x00001234
- x16:0xffffffff
- x17:0x000000ff
### Data Mapping
- 0x10000000:0x12345678
- 0x10000004:0xff345678
- 0x10000008:0x000012ff
- 0x10000010:0x00000000
