# Program 1: 
### Statement: Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}


### Name of file:
lab2program2.s

### Observation - Single Cycle
- loading the data into the registers
-adding half size data register(x12 and x13) and storing the result in x14 register 
-updating the register x12 with result stored in x14
-then adding next data stored in memory (now loaded in register x13) with updated register x12
-at the end of execution, the final result stored in x14

### Register Mapping
-x10-0x10000000
-x12 -0x00005b24
- x13 -0xf f f f f f 11
- x14-0x00005a35

### Data Mapping
- 0x10000000-0x56781234
- 0x10000004-0x13572468
- 0x10000008-0x00111100
- 0x1000000c-0x1010 f f f f
- 0x10000010-0xf f 119999
- 0x10000014-0x00005a35

------------------------------------------------------------------------------------------------------------------------------------

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
64bitadderRV32I.s

### Observation - Single Cycle
-loading 64 bit size data from memory to 2 registers
-load the address into registers and load the lsb 32bits into 1st register and msb 32bits into adjacent register.  
 -add the lsb registers and msb registers separetly and add the check for carry if any then add the carry to msb.
- store the msb and lsb values into result memory accordingly.   

### Register Mapping
- x9 -0x10000000
- x10-0x12345678
- x11 -0xf f f f 0000
- x12 -0x10000008
- x13-0xf 1111111
- x14-0x7777700 f
- x15-0x00000001
- x16-0x03456789
- x17-0x7776700 f
- x18-0x77767010
- x19-0x00000001
- x20-0x10000010

### Data Mapping
- 0x10000000-0x12345678
- 0x10000004-0xf f f f 0000
- 0x10000008-0xf1111111
- 0x1000000c-0x7777700f
- 0x10000010-0x03456789
- 0x10000014-0x77767010
- 0x10000018-0x00000001
