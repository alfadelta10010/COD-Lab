
# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
098-src/l1p1.s

### Observation - Single Cycle
1. Stores the address from .data part of the code to register using la. This is the base address of all the data
2. Next fetches the data into register on the basis of offset and base address
3. Adds these values into x13 register and sends it back to the data section of the memory using sw
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00101023
- **x12:** 0x80003012
- **x13:** 0x80104035

### Data Mapping
- **0x10000000:** 0x00101023
- **0x10000004:** 0x80003012
- **0x10000008:** 0x80104035

---

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
098-src/l1p2.s

### Observation - Single Cycle
- Does the same as last code with half (2 bytes) the datasize
- Major differences
	- .word -> .half
	- lw -> lh
	- offset of 4 -> 2
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00001023
- **x12:** 0x00003012
- **x13:** 0x00004035

### Data Mapping
- **0x10000000:** 0x30121023
- **0x10000004:** 0x00004035


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
098-src/l1p3.s

### Observation - Single Cycle
- Does the same as last code with 1 byte the datasize
- Major differences
	- .word -> .byte
	- lw -> lb
	- offset of 4 -> 1
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000023
- **x12:** 0x00000012
- **x13:** 0x00000035

### Data Mapping
- **0x10000000:** 0x00351223


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
098-src/l1p4.s

### Observation - Single Cycle
- RISCV defaults to signed loading when it is not specified this can be seen during exectution where extra `f`s are added after the stored word
- This can be avoided by specifying the type of loading.
- For example: `lhu` instead of `lh` gives unsigned loading of data # Unsigned data type is forced hence no sign extension
- Stores a signed number by default to preserve sign (sign extension)
- For full length words, it doesn't matter because there's no space for sign extension
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0xffff8083
- **x12:** 0x00000712
- **x13:** 0xffff8795

### Data Mapping
- **0x10000000:** 0x07128083
- **0x10000004:** 0xffff8795
