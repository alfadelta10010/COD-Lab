# Program 1:
### Statement : <Write an Assembly Program for the following C code:
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
prg1.s

### Observation 
 - < an array of 11 8bits numbers are given , so all these elements of the array is loaded into different registers, then we are finding the sum of all the elements present in the array ,since in risk V we can deal only with 3 operands , we are finding consecutive sum of elements and storing the sum in the last bit of array>
 
### Register mapping
 - *<x10>:* <0x10000000>
 - *<x11>:* <0x00001401>
 - *<x12>:* <0x00006232>
 - *<x13>:* <0x00004521>
 - *<x14>:* <0x00001145>
 - *<x15>:* <0x00000045>
 - *<x16>:* <0x00000004>
 - *<x17>:* <0x00000324>
 - *<x18>:* <0x00001525>
 - *<x19>:* <0x00004958>
 - *<x20>:* <0x00001111>
 - *<x21>:* <0x000181a7>
 - *<x22>:* <0x000181a7>

### Data mapping
 - *<0x10000014>:* <0x00004213>
 - *<0x10000010>:* <0x11114958>
 - *<0x1000000c>:* <0x15250324>
 - *<0x10000008>:* <0x00040045>
 - *<0x10000004>:* <0x11454521>
 - *<0x10000001>:* <0x62321401>

===========================================================================

Program 2:
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:
 prg_2.s

### Observation-
 - <We are computing the sum of two 64-bit numbers on an RV32I processor, which has 32-bit registers. The 64-bit numbers are split into two 32-bit parts: the (lsb)lower 32 bits and the upper 32 bits(msb). We load these parts using `lw`, add the lower 32 bits first, and handle any carry using `sltu`. The upper 32 bits are then added along with the carry, and the final result is stored in memory.>

### Register Mapping 
- *<x10>:* <0x10000000>
- *<x11>:* <0x87654321>
- *<x12>:* <0x12345678>
- *<x13>:* <0x87654321>
- *<x14>:* <0x12345678>
- *<x15>:* <0x00000001>
- *<x16>:* <0x2468acf0>
- *<x18>:* <0x2468acf0>
- *<x19>:* <0x0eca8642>

### Data mapping
- *<0x10000014>:* <0x2468acf0>
- *<0x10000010>:* <0x12345678>
- *<0x1000000c>:* <0x12345678>
- *<0x10000008>:* <0x87654321>
- *<0x10000004>:* <0x12345678>
- *<0x10000000>:* <0x87654321>

===========================================================================