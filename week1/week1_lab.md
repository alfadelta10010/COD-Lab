# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1a.s

### Observation - Single Cycle
a)Taking two 32-bit numbers.
b)Load them into a register.
c)Performing the addition.
d)sltu instruction is used for the carry detection.
      i)Result of the addition is less than one of the operands->no carry generated.
      ii)Result of the addition is greater than one of the operands->carry generated.
e)Store the final result.
 
### Register Mapping
     x10 - 0x10000000
     x11 - 0x43218765
     x12 - 0x87654321
     x13 - 0xca86ca86

### Data Mapping
     0x10000008 - 0xca86ca86
     0x10000004 - 0x87654321
     0x10000000 - 0x43218765

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1b.s

### Observation - Single Cycle
a)Taking two 32-bit numbers.
b)Load them into a register.
c)Performing the addition.
d)sltu instruction is used for the carry detection.
      i)Result of the addition is less than one of the operands->no carry generated.
      ii)Result of the addition is greater than one of the operands->carry generated.
e)Store the final result.
 
### Register Mapping
     x10 - 0x10000000
     x11 - 0x00003452
     x12 - 0x00000307
     x13 - 0x00003759

### Data Mapping
     0x10000004 - 0x00003759
     0x10000000 - 0x03073452

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes


### Name of file:
week1c.s

### Observation - Single Cycle
a)Taking two 32-bit numbers.
b)Load them into a register.
c)Performing the addition.
d)sltu instruction is used for the carry detection.
      i)Result of the addition is less than one of the operands->no carry generated.
      ii)Result of the addition is greater than one of the operands->carry generated.
e)Store the final result.
 
### Register Mapping
     x10 - 0x00000000
     x11 - 0x00000067
     x12 - 0x00000000
     x13 - 0x00000067

### Data Mapping
     0x10000004 - 0x00000067
     0x10000000 - 0x00000067

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types


### Name of file:
week1d.s

### Observation - Single Cycle
a)Taking two 32-bit numbers.
b)Load them into a register.
c)Performing the addition.
d)sltu instruction is used for the carry detection.
      i)Result of the addition is less than one of the operands->no carry generated.
      ii)Result of the addition is greater than one of the operands->carry generated.
e)Store the final result.
 
### Register Mapping
x10 0x10000000
x11 0x0000cadd
x12 0x10000004
x13 0x80003421
x14 0x10000008
x15 0x0000cadd
x16 0x1000000a
x17 0x00001008
x18 0x1000000c
x19 0x000000ba
x20 0x1000000d
x21 0x00000060

### Data Mapping
     0x10000024 0x00000000
     0x10000018 0x00000000
     0x10000010 0x00000000
     0x1000000c 0x000060ba
     0x10000008 0x1008cadd
     0x10000004 0x80003421
     0x10000000 0x0000cadd
