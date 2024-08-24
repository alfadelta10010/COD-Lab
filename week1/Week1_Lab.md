# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1(i).s

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
     x11 - 0x12345678
     x12 - 0x11112222
     x13 - 0x2345789a

### Data Mapping
     0x1000000c - 0x00000000
     0x10000008 - 0x2345789a
     0x10000004 - 0x11112222
     0x12345678 - 0x12345678


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1(ii).s

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
     x11 - 0x00000465
     x12 - 0xffff9765
     x13 - 0xffff9bca

### Data Mapping
     0x10000008 - 0x00000000
     0x10000004 - 0x00009bca
     0x10000000 - 0x97650465


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1(iii).s

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
     x11 - 0x00000024
     x12 - 0x00000078
     x13 - 0x0000009c

### Data Mapping
     0x10000004 - 0x00000000
     0x10000000 - 0x9c007824


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types.


### Name of file:
week1(iv).s

### Observation - Single Cycle
a)Taking two 32-bit numbers.
b)Load them into a register.
c)Performing the addition.
d)sltu instruction is used for the carry detection.
      i)Result of the addition is less than one of the operands->no carry generated.
      ii)Result of the addition is greater than one of the operands->carry generated.
e)Store the final result.
 
### Register Mapping
     x11 - 0x00012345
     x12 - 0x00001234
     x13 - 0x00000012
     x14 - 0x00000012

### Data Mapping
     0x10000010 - 0x00000000
     0x10000008 - 0x00001212
     0x10000004 - 0x00012345
     0x10000000 - 0x00012345


     
