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
pg1.s

### Observation - Single Cycle 
 - < an array of 11 8bits numbers are given , so all these elements of the array is loaded into the registers, then we are finding the sum of all the elements present in the array ,since in Risc V we can deal only with 3 operands , we are finding consecutive sum of elements and storing the sum in the last bit of array>

### Regisster mapping
 - *<x10>:* <0x10000016>
 - *<x11>:* <0x00048c70>
 - *<x12>:* <0x0000000b>
 - *<x13>:* <0x0000c1d1>
 - *<x14>:* <0x0000000b>

### Data mapping
 - *<0x10000018>:* <0x00000000>
 - *<0x10000014>:* <0x8c70c1d1>
 - *<0x10000010>:* <0xa1b18191>
 - *<0x1000000c>:* <0x61714151>
 - *<0x10000008>:* <0x21310111>
 - *<0x10000004>:* <0xdef19abc>
 - *<0x10000000>:* <0x56781234>

------------------------------------------------------------------------------------------------------------------------

#Program 2: 
### Statement: Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
pg2.s

### Observation - Single Cycle
- < Basically ,The code first gets the two element's first 16 LSB bits into registers.Next addition of those two and generating the carry, with that addition of the two
element's next 16 MSB bits, with first adding MSB of one element and carry from prev,
then adding that to the other element's MSB.The generated carry is then analysed for overflow and other stuff>
### Regisster mapping
 - *<x1>:* <0x10000000>
 - *<x9>:* <0x80001234>
 - *<x18>:* <0x90000123>
 - *<x19>:* <0x00002469>
- *<x21>:* <0x10001357>
- *<x22>:* <0x10001357>

### Data mapping
 - *<0x10000014>:* <0x10001357>
 - *<0x10000010>:* <0x00002469>
 - *<0x1000000c>:* <0x90000123>
 - *<0x10000008>:* <0x00001235>
 - *<0x10000004>:* <0x80001234>
 - *<0x10000000>:* <0x00001234>
