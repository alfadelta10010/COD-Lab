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
week2lab1.s

### Observation 
.data 
n: .half 0x1489, 0x6234, 0x4922, 0x2345, 0x2375, 0x4584, 0x1884, 0x1525, 0x4958, 0x1293, 0x4232  
# Array of 11 half-word (16-bit) numbers. Each value occupies 2 bytes.
  
### Regisster mapping
 - *<x10>:* <0x10000000>
 - *<x11>:* <0x00001489>
 - *<x12>:* <0x00006234>
 - *<x13>:* <0x00004922>
 - *<x14>:* <0x00004922>
 - *<x15>:* <0x00002375>
 - *<x16>:* <0x00004584>
 - *<x17>:* <0x00004584>
 - *<x18>:* <0x00001525>
 - *<x19>:* <0x00004958>
 - *<x20>:* <0x00001293>
 - *<x21>:* <0x000217e3>
 - *<x22>:* <0x000217e3>

### Data mapping
 - *<0x10000014>:* <0x00004232>
 - *<0x10000010>:* <0x12934958>
 - *<0x1000000c>:* <0x15251884>
 - *<0x10000008>:* <0x45842375>
 - *<0x10000004>:* <0x23454922>
 - *<0x10000001>:* <0x62341489>

===========================================================================

Program 2:
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:
 lab2_prog2

### Observation-
 - .data              
a: .dword 0x1000000018643478, 0x2000000035792467 
The base address of the array a is loaded into register x10.
The lower and upper 32 bits of each 64-bit number are loaded into registers (x11, x12 for the first number, and x13, x14 for the second number).
The lower 32 bits of the two numbers are added, with the result stored in x15.
An unsigned overflow check is performed after the addition of the lower 32 bits. If an overflow occurs, x16 is set to 1; otherwise, it is set to 0.
The upper 32 bits of the two numbers are added, with the result stored in x17.
Another unsigned overflow check is performed after the addition of the upper 32 bits. If an overflow occurs, x18 is set to 1; otherwise, it is set to 0.
The carry (stored in x16) from the lower 32-bit addition is added to the upper 32-bit result, accounting for any overflow. The final upper 32-bit result is stored in x19.
The result of the lower 32-bit addition (x15) is stored in memory at a 16-byte offset from the start of a.
The value in x9 (whose origin isn't specified in this code) is stored at a 20-byte offset from the start of a.
This code performs a 64-bit addition by splitting the operation into two 32-bit parts, handling any potential overflow in the lower 32-bit addition, and ensuring the result is correctly stored in memory.


### Register Mapping 
- *<x10>:* <0x10000000>
- *<x11>:* <0x18643478>
- *<x12>:* <0x10000000>
- *<x13>:* <0x35792467>
- *<x14>:* <0x20000000>
- *<x15>:* <0x20000000>
- *<x16>:* <0x00000000>
- *<x17>:* <0x30000000>
- *<x18>:* <0x00000000>
- *<x19>:* <0x30000000>

### Data mapping
- *<0x10000014>:* <0x00000000>
- *<0x10000010>:* <0x4ddd58df>
- *<0x1000000c>:* <0x20000000>
- *<0x10000008>:* <0x35792467>
- *<0x10000004>:* <0x10000000>
- *<0x10000000>:* <0x18643478>

===========================================================================