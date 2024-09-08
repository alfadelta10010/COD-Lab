# Program 1:
### Statement : <Write an Assembly Program for the following C code:
        main() {
	    unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	    h = 0;
	    for(i = 0; i < 10; i++)
	    {
		h = h 
+ a[i];
	     }
	     a[10] = h;
               }>

### Name of file:
program1.s

### Observation - Single Cycle 
 - < an array of 11 8bits numbers are given , so all these elements of the array is loaded into the registers, then we are finding the sum of all the elements present in the array ,since in Risc V we can deal only with 3 operands , we are finding consecutive sum of elements and storing the sum in the last bit of array>

### Regisster mapping
 - <x10>: <0x10000016>
 - <x11>: <0x00048c70>
 - <x12>: <0x0000000b>
 - <x13>: <0x0000c1d1>
 - <x14>: <0x0000000b>

### Data mapping
 - <0x10000018>: <0x00000000>
 - <0x10000014>: <0x8c70c1d1>
 - <0x10000010>: <0xa1b18191>
 - <0x1000000c>: <0x61714151>
 - <0x10000008>: <0x21310111>
 - <0x10000004>: <0xdef19abc>
 - <0x10000000>: <0x56781234>
