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
lab2_prog1

### Observation 
 - < an array of 11 8bits numbers are given , so all these elements of the array is loaded into different registers, then we are finding the sum of all the elements present in the array ,since in riscv we can deal only with 3 operands , we are finding consecutive sum of elements and storing the sum in the last bit of array>
 
### Regisster mapping
 - **<x10>:** <0x10000000>
 - **<x11>:** <0x00001234>
 - **<x12>:** <0x00006232>
 - **<x13>:** <0x00004542>
 - **<x14>:** <0x00002345>
 - **<x15>:** <0x00002345>
 - **<x16>:** <0x00004584>
 - **<x17>:** <0x00001324>
 - **<x18>:** <0x00001525>
 - **<x19>:** <0x00004958>
 - **<x20>:** <0x00001233>
 - **<x21>:** <0x00020bdb>
 - **<x22>:** <0x00020bdb>

### Data mapping
 - **<0x10000014>:** <0x10000014>
 - **<0x10000010>:** <0x12334958>
 - **<0x1000000c>:** <0x15251324>
 - **<0x10000008>:** <0x45842345>
 - **<0x10000004>:** <0x23454542>
 - **<0x10000001>:** <0x62321234>

===========================================================================

Program 2:
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:
 lab2_prog2

### Observation-
 - <we are are finding the sum of two 64-bit numbers on a RV31I since the size of all the registers in RV32I are of size 32-bits we are going to split the number into 2 parts , 1st part containing the 1st 8-bits of the number and the 2nd part containing the last 8 bits of the number. We are loading the number in word size , then we add the last 8 bits of two numbers and First 8 bits of the numbers separately , carry is taken care by the sltu and final result is stored along with the carry>

### Register Mapping 
- **<x10>:** <0x10000000>
- **<x11>:** <0x12345678>
- **<x12>:** <0x10000000>
- **<x13>:** <0x87654321>
- **<x14>:** <0x20000000>
- **<x15>:** <0x99999999>
- **<x16>:** <0x00000000>
- **<x17>:** <0x30000000>
- **<x18>:** <0x00000000>
- **<x19>:** <0x30000000>

### Data mapping
- **<0x10000014>:** <0x00000000>
- **<0x10000010>:** <0x99999999>
- **<0x1000000c>:** <0x20000000>
- **<0x10000008>:** <0x87654321>
- **<0x10000004>:** <0x10000000>
- **<0x10000000>:** <0x12345678>

===========================================================================


  