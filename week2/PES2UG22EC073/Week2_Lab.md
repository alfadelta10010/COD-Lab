# Program 1: 
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:
<program_1.s>

### Observation - Single Cycle
- la x10, a: Load the base address of the data into register x10.
- lw: Load 32-bit words from memory into registers x11, x12, x13, and x14, which represent the lower and upper 32 bits of two 64-bit numbers.
- add x15, x11, x13: Add the lower 32 bits of the two numbers.
- sltu x5, x15, x11: Check if a carry is generated from the lower 32-bit addition (sets x5 to 1 if true).
- add x16, x12, x14: Add the upper 32 bits of the two numbers.
- add x17, x16, x5: Add any carry generated from the lower 32-bit addition to the upper 32-bit result.
- sltu x19, x17, x16: Check if a carry is generated from adding the carry from the lower 32-bit addition to the upper 32-bit result.
- sw: Store the final results back into memory. The lower 32-bit result is stored at offset 16, the upper 32-bit result is stored at offset 20, and any carry from the addition of both numbers is stored at offset 24.
 
### Register Mapping
- **<x5>:** <0x00000001>
- **<x10>:** <0x10000000>
- **<x11>:** <0xffffffff>
- **<x12>:** <0xffffffff>
- **<x13>:** <0xffffffff>
- **<x14>:** <0xffffffff>
- **<x15>:** <0xfffffffe>
- **<x16>:** <0xfffffffe>
- **<x17>:** <0xffffffff>
- **<x18>:** <>0x00000001

### Data Mapping
- **<0x10000000>:** <0xffffffff>
- **<0x10000004>:** <0xffffffff>
- **<0x10000008>:** <0xffffffff>
- **<0x1000000c>:** <0xffffffff>
- **<0x10000010>:** <0xffffffff>
- **<0x10000014>:** <0xfffffffe>
- **<0x10000018>:** <0x00000000>

------------------------------------------------------------------------------------------------------------------------


# Program 2: 
### Statement: <Write an Assembly Program for the following C code:
    main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}>

### Name of file:
<program_2.s>

### Observation - Single Cycle
- la: Loads the base address of arrays a, b, and c into registers x10, x11, and x12, respectively.
- lw: Loads the 32-bit word from memory (each word is 4 bytes, hence the offsets are 0, 4, 8, 12, and 16 for 5 elements).
- add: Adds the corresponding elements from arrays a and b (e.g., a[0] + b[0], a[1] + b[1], etc.).
- sw: Stores the result of the addition into the corresponding index in array c.
 
### Register Mapping
- **<x5>:** <0x00000006>
- **<x6>:** <0x00000005>
- **<x7>:** <0x0000000b>
- **<x10>:** <0x10000000>
- **<x11>:** <0x10000014>
- **<x12>:** <0x00000028>

### Data Mapping
- **<0x1000001c>:** <0x0000000a>
- **<0x10000018>:** <0x00000009>
- **<0x10000014>:** <0x00000008>
- **<0x10000010>:** <0x00000007>
- **<0x1000000c>:** <0x00000006>
- **<0x10000008>:** <0x00000001>
- **<0x10000004>:** <0x00000002>
- **<0x10000000>:** <0x00000003>

...
