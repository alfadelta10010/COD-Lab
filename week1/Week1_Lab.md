# Program 1: 
##statment:Write an Assembly Program for addition of 2 words

### Name of file:
Week1_LAb.s


### Observation - Single Cycle
-Load the base address into register x18.
-Load two word(32 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 4 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 8 from the base address.


 
### Register Mapping
-x8:0x00000123
-x9:0x00000895
-x11:0x000009b8


### Data Mapping
-0x1000000c:0x00000095
-0x10000008:0x000009b8
-0x10000004:0x00000895
-0x10000000:0x00000123



# Program 2: 
### statment:Write an Assembly Program for addition of 2 half words

### Name of file:
Week1_LAb.s

### Observation - Single Cycle
-Load the base address into register x18.
-Load two bytes(8 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 1 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 2 from the base address.



### Register Mapping
-x8:0x00000123
-x9:0x00000896
-x11:0x000009b9

### Data Mapping
-0x10000004:0x000009b9
-0x10000000:0x08960123


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
Week1_LAb.s

### Observation - Single Cycle
-Load the base address into register x18.
-Load two bytes(8 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 1 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 2 from the base address.


 
### Register Mapping
-x8:0x00000012
-x9:0xffffff84
-x11:0xffffff96


### Data Mapping
-0x10000004:0x00000000
-0x10000000:0x00968412


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, ha

### Name of file:
Week1_LAb.s

### Observation - Single Cycle
-Load the base address of the data at label a into register x10, then load two words/half words/bytes into registers x18 and x19.
-Add these two values, store the result at a (4,2,1)-byte offset, then load the original values again as signed, storing the result.
-Add these two values again, store the result at a (4,2,1)-byte offset, then load the original values again as unsigned, storing the result in different memory location.Compare the outputs to view the difference between signed and unsigned.
 
### Register Mapping
#byte signed add
-x1:0x0x00000012
-x2:0xffffff84
-x3:0xffffff96

#byte unsjigned  add
-x4:0x00000012
-x5:0x00000084
-x6:0x00000096

#word add
-x7:0x01234496
-x8:0x02454526
-x9:0x036889bc

#halfword signed add
-x16:0xffff89bc
-x17:0x00000368
-x18:0xffff8d24

#halfword unsigned add
-x19:0x000089bc
-x20:0x00000368
-x21:0x00008d24


### Data Mapping

-0x10000010:0x00000000
-0x1000000c:0x8d240368
-0x10000008:0x89bc0245
-0x10000004:0x45260123
-0x10000000:0x44968412
